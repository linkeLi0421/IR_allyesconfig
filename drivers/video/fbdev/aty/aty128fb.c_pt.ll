; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/aty128fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/aty128fb.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.aty128_meminfo = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.aty128fb_par = type { %struct.aty128_crtc, %struct.aty128_pll, %struct.aty128_ddafifo, i32, %struct.aty128_constants, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, [32 x i8], [64 x i8], [32 x i8], [16 x i32] }
%struct.aty128_crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aty128_pll = type { i32, i32, i32 }
%struct.aty128_ddafifo = type { i32, i32 }
%struct.aty128_constants = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@aty128fb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @aty128_pci_tbl, ptr @aty128_probe, ptr @aty128_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aty128_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_aty128fb__305_2514_aty128fb_init6 = internal global ptr @aty128fb_init, section ".initcall6.init", align 4
@__exitcall_aty128fb_exit = internal global ptr @aty128fb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [59 x i8] c"aty128fb.author=(c)1999-2003 Brad Douglas <brad@neruo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [62 x i8] c"aty128fb.description=FBDev driver for ATI Rage128 / Pro cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [47 x i8] c"aty128fb.file=drivers/video/fbdev/aty/aty128fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [21 x i8] c"aty128fb.license=GPL\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [21 x i8] c"aty128fb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype310 = internal constant [36 x i8] c"aty128fb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option311 = internal constant [85 x i8] c"aty128fb.parm=mode_option:Specify resolution as \22<xres>x<yres>[-<bpp>][@<refresh>]\22 \00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [16 x i8] c"aty128fb.nomtrr\00", align 1
@param_ops_invbool = external dso_local constant %struct.kernel_param_ops, align 4
@mtrr = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_invbool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype312 = internal constant [33 x i8] c"aty128fb.parmtype=nomtrr:invbool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr313 = internal constant [78 x i8] c"aty128fb.parm=nomtrr:bool: Disable MTRR support (0 or 1=disabled) (default=0)\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aty128fb\00", [23 x i8] zeroinitializer }, align 32
@aty128_pci_tbl = internal constant { [48 x %struct.pci_device_id], [384 x i8] } { [48 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 19525, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 19526, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4098, i32 19782, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 19788, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 20545, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20546, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20547, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20548, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 20549, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20550, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20551, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20552, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20553, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20554, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20555, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20556, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20557, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20558, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20559, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20560, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 20561, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20562, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 20563, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20564, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20565, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20566, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20567, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 20568, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 21061, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 21062, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21063, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21067, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 21068, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21317, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21318, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 21319, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21320, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21323, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21324, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21325, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21326, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 21574, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4098, i32 21580, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4098, i32 21586, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4098, i32 21587, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4098, i32 21588, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4098, i32 21589, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@aty128_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @aty128_pci_suspend, ptr @aty128_pci_resume, ptr @aty128_pci_freeze, ptr @aty128_pci_resume, ptr @aty128_pci_hibernate, ptr @aty128_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@aty128_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013aty128fb: Cannot enable PCI device: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aty128_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/aty/aty128fb.c\00", [61 x i8] zeroinitializer }, align 32
@aty128_probe._entry_ptr = internal global ptr @aty128_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aty128fb FB\00", [20 x i8] zeroinitializer }, align 32
@aty128_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013aty128fb: cannot reserve frame buffer memory\0A\00", [48 x i8] zeroinitializer }, align 32
@aty128_probe._entry_ptr.7 = internal global ptr @aty128_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aty128fb MMIO\00", [18 x i8] zeroinitializer }, align 32
@aty128_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013aty128fb: cannot reserve MMIO region\0A\00", [56 x i8] zeroinitializer }, align 32
@aty128_probe._entry_ptr.11 = internal global ptr @aty128_probe._entry.9, section ".printk_index", align 4
@aty128fb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"ATY Rage128\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 8, i16 1, i16 0, i32 0, i32 0, i32 8192, i32 32, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@aty128_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013aty128fb: Can't write to video register!\0A\00", [52 x i8] zeroinitializer }, align 32
@aty128_probe._entry_ptr.14 = internal global ptr @aty128_probe._entry.12, section ".printk_index", align 4
@aty128_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016aty128fb: BIOS not located, guessing timings.\0A\00", [47 x i8] zeroinitializer }, align 32
@aty128_probe._entry_ptr.17 = internal global ptr @aty128_probe._entry.15, section ".printk_index", align 4
@aty128_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016aty128fb: Rage128 BIOS located\0A\00", [62 x i8] zeroinitializer }, align 32
@aty128_probe._entry_ptr.20 = internal global ptr @aty128_probe._entry.18, section ".printk_index", align 4
@aty128_map_ROM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013aty128fb: ROM failed to map\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aty128_map_ROM\00", [17 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr = internal global ptr @aty128_map_ROM._entry, section ".printk_index", align 4
@aty128_map_ROM._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017aty128fb: Invalid ROM signature %x should  be 0xaa55\0A\00", [40 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr.25 = internal global ptr @aty128_map_ROM._entry.23, section ".printk_index", align 4
@aty128_map_ROM._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014aty128fb: PCI DATA signature in ROM incorrect: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr.28 = internal global ptr @aty128_map_ROM._entry.26, section ".printk_index", align 4
@aty128_map_ROM._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016aty128fb: Found Intel x86 BIOS ROM Image\0A\00", [52 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr.31 = internal global ptr @aty128_map_ROM._entry.29, section ".printk_index", align 4
@aty128_map_ROM._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.3, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016aty128fb: Found Open Firmware ROM Image\0A\00", [53 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr.34 = internal global ptr @aty128_map_ROM._entry.32, section ".printk_index", align 4
@aty128_map_ROM._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016aty128fb: Found HP PA-RISC ROM Image\0A\00", [56 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr.37 = internal global ptr @aty128_map_ROM._entry.35, section ".printk_index", align 4
@aty128_map_ROM._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.3, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016aty128fb: Found unknown type %d ROM Image\0A\00", [51 x i8] zeroinitializer }, align 32
@aty128_map_ROM._entry_ptr.40 = internal global ptr @aty128_map_ROM._entry.38, section ".printk_index", align 4
@sdr_128 = internal constant { %struct.aty128_meminfo, [16 x i8] } { %struct.aty128_meminfo { i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, i8 1, i8 16, i8 30, i8 16, ptr @.str.43 }, [16 x i8] zeroinitializer }, align 32
@sdr_sgram = internal constant { %struct.aty128_meminfo, [16 x i8] } { %struct.aty128_meminfo { i8 4, i8 4, i8 1, i8 2, i8 1, i8 2, i8 1, i8 16, i8 24, i8 16, ptr @.str.44 }, [16 x i8] zeroinitializer }, align 32
@ddr_sgram = internal constant { %struct.aty128_meminfo, [16 x i8] } { %struct.aty128_meminfo { i8 4, i8 4, i8 3, i8 3, i8 2, i8 3, i8 1, i8 16, i8 31, i8 16, ptr @.str.45 }, [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aty_pll_wait_readupdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017aty128fb: PLL write timeout!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aty_pll_wait_readupdate\00", [40 x i8] zeroinitializer }, align 32
@aty_pll_wait_readupdate._entry_ptr = internal global ptr @aty_pll_wait_readupdate._entry, section ".printk_index", align 4
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"128-bit SDR SGRAM (1:1)\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"64-bit SDR SGRAM (2:1)\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"64-bit DDR SGRAM\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rage128 XX \00", [20 x i8] zeroinitializer }, align 32
@r128_family = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [32 x i8] zeroinitializer }, align 32
@aty128_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016aty128fb: %s [chip rev 0x%x] \00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aty128_init\00", [20 x i8] zeroinitializer }, align 32
@aty128_init._entry_ptr = internal global ptr @aty128_init._entry, section ".printk_index", align 4
@aty128_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%dM %s\0A\00", [24 x i8] zeroinitializer }, align 32
@aty128_init._entry_ptr.51 = internal global ptr @aty128_init._entry.49, section ".printk_index", align 4
@aty128_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 1924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%dk %s\0A\00", [24 x i8] zeroinitializer }, align 32
@aty128_init._entry_ptr.54 = internal global ptr @aty128_init._entry.52, section ".printk_index", align 4
@aty128fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aty128fb_check_var, ptr @aty128fb_set_par, ptr @aty128fb_setcolreg, ptr null, ptr @aty128fb_blank, ptr @aty128fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr @aty128fb_sync, ptr @aty128fb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@default_lcd_on = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@default_crt_on = internal global { i32, [28 x i8] } zeroinitializer, align 32
@default_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39722, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@defaultmode = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39722, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@aty128_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.3, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013aty128fb: Cannot set default mode.\0A\00", [58 x i8] zeroinitializer }, align 32
@aty128_init._entry_ptr.57 = internal global ptr @aty128_init._entry.55, section ".printk_index", align 4
@backlight = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aty128_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.3, i32 2040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016fb%d: %s frame buffer device on %s\0A\00", [58 x i8] zeroinitializer }, align 32
@aty128_init._entry_ptr.60 = internal global ptr @aty128_init._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AGP\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PRO AGP\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PRO PCI\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M3 AGP\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M3 PCI\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M4 AGP\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ultra AGP\00", [22 x i8] zeroinitializer }, align 32
@__const.aty128_var_to_crtc.mode_bytpp = private unnamed_addr constant [7 x i8] c"\00\00\01\02\02\03\04", align 1
@aty128_var_to_crtc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013aty128fb: Invalid depth or RGBA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aty128_var_to_crtc\00", [45 x i8] zeroinitializer }, align 32
@aty128_var_to_crtc._entry_ptr = internal global ptr @aty128_var_to_crtc._entry, section ".printk_index", align 4
@aty128_var_to_crtc._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013aty128fb: Not enough memory for mode\0A\00", [56 x i8] zeroinitializer }, align 32
@aty128_var_to_crtc._entry_ptr.73 = internal global ptr @aty128_var_to_crtc._entry.71, section ".printk_index", align 4
@aty128_var_to_crtc._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.3, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013aty128fb: invalid width ranges\0A\00", [62 x i8] zeroinitializer }, align 32
@aty128_var_to_crtc._entry_ptr.76 = internal global ptr @aty128_var_to_crtc._entry.74, section ".printk_index", align 4
@aty128_ddafifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013aty128fb: Mode out of range!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aty128_ddafifo\00", [17 x i8] zeroinitializer }, align 32
@aty128_ddafifo._entry_ptr = internal global ptr @aty128_ddafifo._entry, section ".printk_index", align 4
@__const.aty128_set_pll.post_conv = private unnamed_addr constant [13 x i8] c"\02\00\01\04\02\02\06\02\03\02\02\02\07", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aty128_pix_width_to_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013aty128fb: Invalid pixel width\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aty128_pix_width_to_var\00", [40 x i8] zeroinitializer }, align 32
@aty128_pix_width_to_var._entry_ptr = internal global ptr @aty128_pix_width_to_var._entry, section ".printk_index", align 4
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aty128bl%d\00", [21 x i8] zeroinitializer }, align 32
@aty128_bl_data = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @aty128_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@aty128_bl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014aty128: Backlight registration failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aty128_bl_init\00", [17 x i8] zeroinitializer }, align 32
@aty128_bl_init._entry_ptr = internal global ptr @aty128_bl_init._entry, section ".printk_index", align 4
@aty128_bl_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"aty128: Backlight initialized (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@aty128_bl_init._entry_ptr.86 = internal global ptr @aty128_bl_init._entry.84, section ".printk_index", align 4
@aty128_bl_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 1877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aty128: Backlight unloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aty128_bl_exit\00", [17 x i8] zeroinitializer }, align 32
@aty128_bl_exit._entry_ptr = internal global ptr @aty128_bl_exit._entry, section ".printk_index", align 4
@aty128_do_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017aty128fb: resumed !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aty128_do_resume\00", [47 x i8] zeroinitializer }, align 32
@aty128_do_resume._entry_ptr = internal global ptr @aty128_do_resume._entry, section ".printk_index", align 4
@.str.91 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcd:\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"crt:\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"backlight:\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@switch.table.aty128_timings = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sdr_128, ptr @sdr_sgram, ptr @ddr_sgram], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1074020354, i64 2147762177]
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"aty128fb_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 282, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 386, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 395, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 283, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"aty128_pci_tbl\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 182, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"aty128_pci_pm_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 172, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2059, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2065, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2067, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2073, i32 7 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2075, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"aty128fb_fix\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 376, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2111, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2122, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2124, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 829, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 835, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 869, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 876, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 879, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 882, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 885, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [8 x i8] c"sdr_128\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 334, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"sdr_sgram\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 348, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant [10 x i8] c"ddr_sgram\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 362, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 596, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 345, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 359, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 373, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1910, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"r128_family\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 148, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1919, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1922, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1924, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"aty128fb_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 505, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"default_lcd_on\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 394, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant [15 x i8] c"default_crt_on\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 393, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"default_var\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 97, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"defaultmode\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 120, i32 34 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2005, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 398, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2039, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 149, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 150, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 151, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 152, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 153, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 154, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 155, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 156, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1084, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1093, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1105, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1465, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1215, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1844, i32 31 }
@___asan_gen_.364 = private unnamed_addr constant [15 x i8] c"aty128_bl_data\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1816, i32 35 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1853, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1866, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1877, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2479, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1681, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1682, i32 26 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1685, i32 33 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1688, i32 33 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [38 x i8] c"../drivers/video/fbdev/aty/aty128fb.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1694, i32 25 }
@___asan_gen_.415 = private unnamed_addr constant [28 x i8] c"switch.table.aty128_timings\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__UNIQUE_ID_mode_option311, ptr @__UNIQUE_ID_mode_optiontype310, ptr @__UNIQUE_ID_nomtrr313, ptr @__UNIQUE_ID_nomtrrtype312, ptr @__exitcall_aty128fb_exit, ptr @__initcall__kmod_aty128fb__305_2514_aty128fb_init6, ptr @__param_mode_option, ptr @__param_nomtrr, ptr @aty128_bl_exit._entry, ptr @aty128_bl_exit._entry_ptr, ptr @aty128_bl_init._entry, ptr @aty128_bl_init._entry.84, ptr @aty128_bl_init._entry_ptr, ptr @aty128_bl_init._entry_ptr.86, ptr @aty128_ddafifo._entry, ptr @aty128_ddafifo._entry_ptr, ptr @aty128_do_resume._entry, ptr @aty128_do_resume._entry_ptr, ptr @aty128_init._entry, ptr @aty128_init._entry.49, ptr @aty128_init._entry.52, ptr @aty128_init._entry.55, ptr @aty128_init._entry.58, ptr @aty128_init._entry_ptr, ptr @aty128_init._entry_ptr.51, ptr @aty128_init._entry_ptr.54, ptr @aty128_init._entry_ptr.57, ptr @aty128_init._entry_ptr.60, ptr @aty128_map_ROM._entry, ptr @aty128_map_ROM._entry.23, ptr @aty128_map_ROM._entry.26, ptr @aty128_map_ROM._entry.29, ptr @aty128_map_ROM._entry.32, ptr @aty128_map_ROM._entry.35, ptr @aty128_map_ROM._entry.38, ptr @aty128_map_ROM._entry_ptr, ptr @aty128_map_ROM._entry_ptr.25, ptr @aty128_map_ROM._entry_ptr.28, ptr @aty128_map_ROM._entry_ptr.31, ptr @aty128_map_ROM._entry_ptr.34, ptr @aty128_map_ROM._entry_ptr.37, ptr @aty128_map_ROM._entry_ptr.40, ptr @aty128_pix_width_to_var._entry, ptr @aty128_pix_width_to_var._entry_ptr, ptr @aty128_probe._entry, ptr @aty128_probe._entry.12, ptr @aty128_probe._entry.15, ptr @aty128_probe._entry.18, ptr @aty128_probe._entry.5, ptr @aty128_probe._entry.9, ptr @aty128_probe._entry_ptr, ptr @aty128_probe._entry_ptr.11, ptr @aty128_probe._entry_ptr.14, ptr @aty128_probe._entry_ptr.17, ptr @aty128_probe._entry_ptr.20, ptr @aty128_probe._entry_ptr.7, ptr @aty128_var_to_crtc._entry, ptr @aty128_var_to_crtc._entry.71, ptr @aty128_var_to_crtc._entry.74, ptr @aty128_var_to_crtc._entry_ptr, ptr @aty128_var_to_crtc._entry_ptr.73, ptr @aty128_var_to_crtc._entry_ptr.76, ptr @aty128fb_exit, ptr @aty_pll_wait_readupdate._entry, ptr @aty_pll_wait_readupdate._entry_ptr, ptr @aty128fb_driver, ptr @mode_option, ptr @mtrr, ptr @.str, ptr @aty128_pci_tbl, ptr @aty128_pci_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @aty128fb_fix, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @sdr_128, ptr @sdr_sgram, ptr @ddr_sgram, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @r128_family, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @aty128fb_ops, ptr @default_lcd_on, ptr @default_crt_on, ptr @default_var, ptr @defaultmode, ptr @.str.56, ptr @backlight, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @aty128_bl_data, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @switch.table.aty128_timings], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128fb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_pci_tbl to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_map_ROM._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_sgram to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_sgram to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_wait_readupdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r128_family to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_lcd_on to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_crt_on to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaultmode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backlight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_var_to_crtc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_var_to_crtc._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_var_to_crtc._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_ddafifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_pix_width_to_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_bl_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_bl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_bl_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_bl_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty128_do_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aty128_timings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aty128fb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @aty128fb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_init() #2 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #11
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.aty128fb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end.aty128fb_setup.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.aty128fb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.aty128fb_setup.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call1.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.91) #11
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %while.cond.preheader.i.aty128fb_setup.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.aty128fb_setup.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_setup.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call1.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call2.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(5) @.str.92, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 4
  %call5.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0) #11
  store i32 %call5.i, ptr @default_lcd_on, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end23.i, %if.then22.i, %if.then14.i, %if.then8.i, %if.then4.i
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.91) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.aty128fb_setup.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.backedge.i.aty128fb_setup.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_setup.exit

if.else.i:                                        ; preds = %while.body.i
  %call6.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(5) @.str.93, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr9.i = getelementptr i8, ptr %call3.i, i32 4
  %call10.i = call i32 @simple_strtoul(ptr noundef %add.ptr9.i, ptr noundef null, i32 noundef 0) #11
  store i32 %call10.i, ptr @default_crt_on, align 4
  br label %while.cond.backedge.i

if.else11.i:                                      ; preds = %if.else.i
  %call12.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(11) @.str.94, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15.i = getelementptr i8, ptr %call3.i, i32 10
  %call16.i = call i32 @simple_strtoul(ptr noundef %add.ptr15.i, ptr noundef null, i32 noundef 0) #11
  store i32 %call16.i, ptr @backlight, align 4
  br label %while.cond.backedge.i

if.end19.i:                                       ; preds = %if.else11.i
  %call20.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(7) @.str.95, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr @mtrr, align 1
  br label %while.cond.backedge.i

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call3.i, ptr @mode_option, align 4
  br label %while.cond.backedge.i

aty128fb_setup.exit:                              ; preds = %while.cond.backedge.i.aty128fb_setup.exit_crit_edge, %while.cond.preheader.i.aty128fb_setup.exit_crit_edge, %lor.lhs.false.i.aty128fb_setup.exit_crit_edge, %if.end.aty128fb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @aty128fb_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %aty128fb_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %aty128fb_setup.exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  %call10 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef %cond, ptr noundef nonnull @.str.4, i32 noundef 0) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %arrayidx20 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx20, align 8
  %end24 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %6 = ptrtoint ptr %end24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25 = icmp eq i32 %7, 0
  %sub34 = sub i32 1, %5
  %add35 = add i32 %sub34, %7
  %cond37 = select i1 %cmp25, i32 0, i32 %add35
  %call38 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %cond37, ptr noundef nonnull @.str.8, i32 noundef 0) #11
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  br label %err_free_fb

if.end46:                                         ; preds = %if.end18
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call47 = tail call ptr @framebuffer_alloc(i32 noundef 352, ptr noundef %dev) #11
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end46.err_free_mmio_crit_edge, label %if.end50

if.end46.err_free_mmio_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_mmio

if.end50:                                         ; preds = %if.end46
  %par51 = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 30
  %8 = ptrtoint ptr %par51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par51, align 4
  %pseudo_palette = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 21
  %pseudo_palette52 = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 27
  %10 = ptrtoint ptr %pseudo_palette52 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pseudo_palette, ptr %pseudo_palette52, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 7
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 7, i32 10
  %11 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %mmio_start, align 4
  %call53 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 2) #11
  %regbase = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call53, ptr %regbase, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.end50.err_free_info_crit_edge, label %if.end57

if.end50.err_free_info_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_info

if.end57:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %13 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 248, ptr %regindex.addr.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call53, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %15 = and i32 %14, -253
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %vram_size = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 6
  %17 = ptrtoint ptr %vram_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %vram_size, align 4
  %call60 = tail call ptr @ioremap_wc(i32 noundef %1, i32 noundef %16) #11
  %18 = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 25
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call60, ptr %18, align 4
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.end57.err_unmap_out_crit_edge, label %if.end63

if.end57.err_unmap_out_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap_out

if.end63:                                         ; preds = %if.end57
  %20 = call ptr @memcpy(ptr %fix, ptr @aty128fb_fix, i32 68)
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %1, ptr %smem_start, align 4
  %22 = ptrtoint ptr %vram_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vram_size, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call47, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %smem_len, align 4
  %25 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %5, ptr %mmio_start, align 4
  %call70 = tail call fastcc i32 @register_test(ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %err_out

if.end78:                                         ; preds = %if.end63
  %call79 = tail call fastcc ptr @aty128_map_ROM(ptr noundef %9, ptr noundef %pdev)
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %do.end84, label %do.end89

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %if.end92

do.end89:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  tail call fastcc void @aty128_get_pllinfo(ptr noundef %9, ptr noundef nonnull %call79)
  tail call void @pci_unmap_rom(ptr noundef %pdev, ptr noundef nonnull %call79) #11
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %do.end84
  tail call fastcc void @aty128_timings(ptr noundef %9)
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call47, ptr %driver_data.i.i, align 4
  %call93 = tail call fastcc i32 @aty128_init(ptr noundef %pdev, ptr noundef %ent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end92.err_out_crit_edge, label %if.end96

if.end92.err_out_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end96:                                         ; preds = %if.end92
  %27 = load i8, ptr @mtrr, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool97.not = icmp eq i8 %27, 0
  br i1 %tobool97.not, label %if.end96.cleanup_crit_edge, label %if.then98

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %wc_cookie = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 9
  %28 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %wc_cookie, align 4
  br label %cleanup

err_out:                                          ; preds = %if.end92.err_out_crit_edge, %do.end75
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %18, align 4
  tail call void @iounmap(ptr noundef %30) #11
  br label %err_unmap_out

err_unmap_out:                                    ; preds = %err_out, %if.end57.err_unmap_out_crit_edge
  %31 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase, align 4
  tail call void @iounmap(ptr noundef %32) #11
  br label %err_free_info

err_free_info:                                    ; preds = %err_unmap_out, %if.end50.err_free_info_crit_edge
  tail call void @framebuffer_release(ptr noundef nonnull %call47) #11
  br label %err_free_mmio

err_free_mmio:                                    ; preds = %err_free_info, %if.end46.err_free_mmio_crit_edge
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx20, align 8
  %35 = ptrtoint ptr %end24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp111 = icmp eq i32 %36, 0
  %sub120 = sub i32 1, %34
  %add121 = add i32 %sub120, %36
  %cond123 = select i1 %cmp111, i32 0, i32 %add121
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %34, i32 noundef %cond123) #11
  br label %err_free_fb

err_free_fb:                                      ; preds = %err_free_mmio, %do.end43
  %37 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resource, align 8
  %39 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp130 = icmp eq i32 %40, 0
  %sub139 = sub i32 1, %38
  %add140 = add i32 %sub139, %40
  %cond142 = select i1 %cmp130, i32 0, i32 %add140
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %38, i32 noundef %cond142) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_fb, %if.then98, %if.end96.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %err_free_fb ], [ -19, %do.end15 ], [ 0, %if.then98 ], [ 0, %if.end96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty128_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #11
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %5) #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  %regbase = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase, align 4
  tail call void @iounmap(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @iounmap(ptr noundef %10) #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %sub = sub i32 1, %12
  %add = add i32 %sub, %14
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %cond) #11
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11, align 8
  %end15 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %17 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16 = icmp eq i32 %18, 0
  %sub25 = sub i32 1, %16
  %add26 = add i32 %sub25, %18
  %cond28 = select i1 %cmp16, i32 0, i32 %add26
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %cond28) #11
  tail call void @framebuffer_release(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_test(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i27 = alloca i32, align 4
  %regindex.addr.i23 = alloca i32, align 4
  %regindex.addr.i19 = alloca i32, align 4
  %regindex.addr.i15 = alloca i32, align 4
  %regindex.addr.i11 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %0 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 16, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %1 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i11)
  %4 = ptrtoint ptr %regindex.addr.i11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 16, ptr %regindex.addr.i11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i, align 4
  %7 = ptrtoint ptr %regindex.addr.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %regindex.addr.i11.0.regindex.addr.i11.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i13 = load volatile i32, ptr %regindex.addr.i11, align 4
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 %regindex.addr.i11.0.regindex.addr.i11.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 1431655765) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i15)
  %8 = ptrtoint ptr %regindex.addr.i15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 16, ptr %regindex.addr.i15, align 4
  %9 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i15.0.regindex.addr.i15.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i17 = load volatile i32, ptr %regindex.addr.i15, align 4
  %add.ptr.i18 = getelementptr i8, ptr %10, i32 %regindex.addr.i15.0.regindex.addr.i15.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i17
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %11)
  %cmp = icmp eq i32 %11, 1431655765
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i19)
  %12 = ptrtoint ptr %regindex.addr.i19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 16, ptr %regindex.addr.i19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase.i, align 4
  %15 = ptrtoint ptr %regindex.addr.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %regindex.addr.i19.0.regindex.addr.i19.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i21 = load volatile i32, ptr %regindex.addr.i19, align 4
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 %regindex.addr.i19.0.regindex.addr.i19.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 -1431655766) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i23)
  %16 = ptrtoint ptr %regindex.addr.i23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 16, ptr %regindex.addr.i23, align 4
  %17 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i23.0.regindex.addr.i23.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i25 = load volatile i32, ptr %regindex.addr.i23, align 4
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 %regindex.addr.i23.0.regindex.addr.i23.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i25
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431655766, i32 %19)
  %cmp3 = icmp eq i32 %19, -1431655766
  %spec.select = zext i1 %cmp3 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %flag.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i27)
  %20 = ptrtoint ptr %regindex.addr.i27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 16, ptr %regindex.addr.i27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i, align 4
  %23 = ptrtoint ptr %regindex.addr.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %regindex.addr.i27.0.regindex.addr.i27.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i29 = load volatile i32, ptr %regindex.addr.i27, align 4
  %add.ptr.i30 = getelementptr i8, ptr %22, i32 %regindex.addr.i27.0.regindex.addr.i27.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %3) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i27)
  ret i32 %flag.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aty128_map_ROM(ptr nocapture noundef readonly %par, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i220 = alloca i32, align 4
  %regindex.addr.i216 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  %rom_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_size) #11
  %0 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rom_size, align 4, !annotation !237
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %1 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 448, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %2 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %5 = and i32 %4, -256
  %6 = or i32 %5, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i216)
  %7 = ptrtoint ptr %regindex.addr.i216 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 448, ptr %regindex.addr.i216, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase.i, align 4
  %10 = ptrtoint ptr %regindex.addr.i216 to i32
  call void @__asan_load4_noabort(i32 %10)
  %regindex.addr.i216.0.regindex.addr.i216.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i218 = load volatile i32, ptr %regindex.addr.i216, align 4
  %add.ptr.i219 = getelementptr i8, ptr %9, i32 %regindex.addr.i216.0.regindex.addr.i216.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %6) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i216)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i220)
  %11 = ptrtoint ptr %regindex.addr.i220 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 448, ptr %regindex.addr.i220, align 4
  %12 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i220.0.regindex.addr.i220.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i222 = load volatile i32, ptr %regindex.addr.i220, align 4
  %add.ptr.i223 = getelementptr i8, ptr %13, i32 %regindex.addr.i220.0.regindex.addr.i220.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i222
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i220)
  %call2 = call ptr @pci_map_rom(ptr noundef %dev, ptr noundef nonnull %rom_size) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call2) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  %conv = zext i8 %15 to i32
  %add.ptr10 = getelementptr i8, ptr %call2, i32 1
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  %conv14 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %or15 = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 43605, i32 %or15)
  %cmp.not = icmp eq i32 %or15, 43605
  br i1 %cmp.not, label %if.end40, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call2) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  %conv28 = zext i8 %17 to i32
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  %conv36 = zext i8 %18 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or38 = or i32 %shl37, %conv28
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %or38) #14
  br label %failed

if.end40:                                         ; preds = %if.end
  %add.ptr43 = getelementptr i8, ptr %call2, i32 24
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  %conv47 = zext i8 %19 to i32
  %add.ptr51 = getelementptr i8, ptr %call2, i32 25
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %conv55 = zext i8 %20 to i32
  %shl56 = shl nuw nsw i32 %conv55, 8
  %or57 = or i32 %shl56, %conv47
  %add.ptr62 = getelementptr i8, ptr %call2, i32 %or57
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  %conv66 = zext i8 %21 to i32
  %add.ptr71 = getelementptr i8, ptr %add.ptr62, i32 1
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  %conv75 = zext i8 %22 to i32
  %shl76 = shl nuw nsw i32 %conv75, 8
  %or77 = or i32 %shl76, %conv66
  %add.ptr82 = getelementptr i8, ptr %add.ptr62, i32 2
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  %conv86 = zext i8 %23 to i32
  %shl87 = shl nuw nsw i32 %conv86, 16
  %or88 = or i32 %shl87, %or77
  %add.ptr93 = getelementptr i8, ptr %add.ptr62, i32 3
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr93) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  %conv97 = zext i8 %24 to i32
  %shl98 = shl nuw i32 %conv97, 24
  %or99 = or i32 %shl98, %or88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380533072, i32 %or99)
  %cmp100.not = icmp eq i32 %or99, 1380533072
  br i1 %cmp100.not, label %if.end149, label %do.end105

do.end105:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %25 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  %conv114 = zext i8 %25 to i32
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %conv123 = zext i8 %26 to i32
  %shl124 = shl nuw nsw i32 %conv123, 8
  %or125 = or i32 %shl124, %conv114
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  %conv134 = zext i8 %27 to i32
  %shl135 = shl nuw nsw i32 %conv134, 16
  %or136 = or i32 %shl135, %or125
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr93) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %conv145 = zext i8 %28 to i32
  %shl146 = shl nuw i32 %conv145, 24
  %or147 = or i32 %shl146, %or136
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %or147) #14
  br label %cleanup

if.end149:                                        ; preds = %if.end40
  %add = add nuw nsw i32 %or57, 20
  %add.ptr153 = getelementptr i8, ptr %call2, i32 %add
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr153) #11, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %do.end177 [
    i8 0, label %do.end160
    i8 1, label %do.end166
    i8 2, label %do.end172
  ]

do.end160:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %cleanup

do.end166:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %failed

do.end172:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  br label %failed

do.end177:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %conv157 = zext i8 %29 to i32
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv157) #14
  br label %failed

failed:                                           ; preds = %do.end177, %do.end172, %do.end166, %do.end20
  call void @pci_unmap_rom(ptr noundef %dev, ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end160, %do.end105, %do.end
  %retval.0 = phi ptr [ null, %failed ], [ null, %do.end ], [ %call2, %do.end160 ], [ %call2, %do.end105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_size) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_get_pllinfo(ptr nocapture noundef writeonly %par, ptr noundef %bios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bios, i32 72
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  %conv = zext i8 %0 to i32
  %add.ptr5 = getelementptr i8, ptr %bios, i32 73
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !255
  %conv9 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %or = add nuw nsw i32 %conv, 48
  %add = add nuw nsw i32 %or, %shl
  %add.ptr12 = getelementptr i8, ptr %bios, i32 %add
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !256
  %conv16 = zext i8 %2 to i32
  %add.ptr21 = getelementptr i8, ptr %add.ptr12, i32 1
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  %conv25 = zext i8 %3 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %or27 = or i32 %shl26, %conv16
  %add30 = add nuw nsw i32 %or27, 22
  %add.ptr31 = getelementptr i8, ptr %bios, i32 %add30
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  %conv35 = zext i8 %4 to i32
  %add.ptr40 = getelementptr i8, ptr %add.ptr31, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  %conv44 = zext i8 %5 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or46 = or i32 %shl45, %conv35
  %add.ptr51 = getelementptr i8, ptr %add.ptr31, i32 2
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  %conv55 = zext i8 %6 to i32
  %shl56 = shl nuw nsw i32 %conv55, 16
  %or57 = or i32 %shl56, %or46
  %add.ptr62 = getelementptr i8, ptr %add.ptr31, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !261
  %conv66 = zext i8 %7 to i32
  %shl67 = shl nuw i32 %conv66, 24
  %or68 = or i32 %shl67, %or57
  %constants = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4
  %ppll_max = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %ppll_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or68, ptr %ppll_max, align 4
  %add71 = add nuw nsw i32 %or27, 18
  %add.ptr72 = getelementptr i8, ptr %bios, i32 %add71
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !262
  %conv76 = zext i8 %9 to i32
  %add.ptr81 = getelementptr i8, ptr %add.ptr72, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr81) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  %conv85 = zext i8 %10 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %or87 = or i32 %shl86, %conv76
  %add.ptr92 = getelementptr i8, ptr %add.ptr72, i32 2
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr92) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  %conv96 = zext i8 %11 to i32
  %shl97 = shl nuw nsw i32 %conv96, 16
  %or98 = or i32 %shl97, %or87
  %add.ptr103 = getelementptr i8, ptr %add.ptr72, i32 3
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr103) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  %conv107 = zext i8 %12 to i32
  %shl108 = shl nuw i32 %conv107, 24
  %or109 = or i32 %shl108, %or98
  %ppll_min = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %ppll_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or109, ptr %ppll_min, align 4
  %add113 = add nuw nsw i32 %or27, 8
  %add.ptr114 = getelementptr i8, ptr %bios, i32 %add113
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr114) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  %conv118 = zext i8 %14 to i32
  %add.ptr123 = getelementptr i8, ptr %add.ptr114, i32 1
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr123) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv127 = zext i8 %15 to i32
  %shl128 = shl nuw nsw i32 %conv127, 8
  %or129 = or i32 %shl128, %conv118
  %xclk = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or129, ptr %xclk, align 4
  %add133 = add nuw nsw i32 %or27, 16
  %add.ptr134 = getelementptr i8, ptr %bios, i32 %add133
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr134) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  %conv138 = zext i8 %17 to i32
  %add.ptr143 = getelementptr i8, ptr %add.ptr134, i32 1
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr143) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  %conv147 = zext i8 %18 to i32
  %shl148 = shl nuw nsw i32 %conv147, 8
  %or149 = or i32 %shl148, %conv138
  %ref_divider = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %ref_divider to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or149, ptr %ref_divider, align 4
  %add153 = add nuw nsw i32 %or27, 14
  %add.ptr154 = getelementptr i8, ptr %bios, i32 %add153
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  %conv158 = zext i8 %20 to i32
  %add.ptr163 = getelementptr i8, ptr %add.ptr154, i32 1
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr163) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %conv167 = zext i8 %21 to i32
  %shl168 = shl nuw nsw i32 %conv167, 8
  %or169 = or i32 %shl168, %conv158
  %22 = ptrtoint ptr %constants to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or169, ptr %constants, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_timings(ptr nocapture noundef %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i = alloca i32, align 4
  %regindex.addr.i.i57 = alloca i32, align 4
  %regindex.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %constants = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %constants to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %constants, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %constants to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2950, ptr %constants, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ref_divider = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %ref_divider to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ref_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %ref_divider to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 59, ptr %ref_divider, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %regbase.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %6 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 -118) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %8 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 12, ptr %regindex.addr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i.i, align 4
  %11 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i = load volatile i32, ptr %regindex.addr.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %10, i32 %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 508316672) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  tail call fastcc void @aty_pll_writeupdate(ptr noundef %par)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %12 = ptrtoint ptr %ref_divider to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_divider, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %regbase.i.i58 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %14 = ptrtoint ptr %regbase.i.i58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i59, i8 -125) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i57)
  %16 = ptrtoint ptr %regindex.addr.i.i57 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 12, ptr %regindex.addr.i.i57, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %18 = ptrtoint ptr %regbase.i.i58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase.i.i58, align 4
  %20 = ptrtoint ptr %regindex.addr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %regindex.addr.i.i57.0.regindex.addr.i.i57.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i60 = load volatile i32, ptr %regindex.addr.i.i57, align 4
  %add.ptr.i3.i61 = getelementptr i8, ptr %19, i32 %regindex.addr.i.i57.0.regindex.addr.i.i57.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i61, i32 %17) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i57)
  tail call fastcc void @aty_pll_writeupdate(ptr noundef %par)
  %ppll_min = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %ppll_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ppll_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %if.then13, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %ppll_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 12500, ptr %ppll_min, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8.if.end16_crit_edge
  %ppll_max = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %ppll_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ppll_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not = icmp eq i32 %25, 0
  br i1 %tobool18.not, label %if.then19, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %ppll_max to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 25000, ptr %ppll_max, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %xclk = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7501, ptr %xclk, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %fifo_width = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %fifo_width to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %fifo_width, align 4
  %fifo_depth = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %fifo_depth, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %32 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 320, ptr %regindex.addr.i, align 4
  %33 = ptrtoint ptr %regbase.i.i58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i.i58, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %and = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %if.end28.sw.epilog_crit_edge, label %switch.lookup

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.aty128_timings, i32 0, i32 %and
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end28.sw.epilog_crit_edge
  %sdr_sgram.sink = phi ptr [ %switch.load, %switch.lookup ], [ @sdr_sgram, %if.end28.sw.epilog_crit_edge ]
  %mem35 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 8
  %38 = ptrtoint ptr %mem35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sdr_sgram.sink, ptr %mem35, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aty128_init(ptr noundef %pdev, ptr nocapture noundef readonly %ent) unnamed_addr #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  %name.i = alloca [12 x i8], align 1
  %regindex.addr.i138 = alloca i32, align 4
  %regindex.addr.i134 = alloca i32, align 4
  %regindex.addr.i130 = alloca i32, align 4
  %regindex.addr.i126 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  %var = alloca %struct.fb_var_screeninfo, align 4
  %video_card = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #11
  %4 = call ptr @memset(ptr %var, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %video_card) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %5 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 224, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %9 = lshr i32 %8, 8
  %conv = and i32 %9, 31
  %10 = getelementptr inbounds i8, ptr %video_card, i32 12
  %11 = call ptr @memset(ptr %10, i32 255, i32 38)
  %12 = call ptr @memcpy(ptr %video_card, ptr @.str.46, i32 12)
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device, align 4
  %shr4 = lshr i32 %14, 8
  %conv5 = trunc i32 %shr4 to i8
  %arrayidx = getelementptr inbounds [50 x i8], ptr %video_card, i32 0, i32 8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5, ptr %arrayidx, align 1
  %conv8 = trunc i32 %14 to i8
  %arrayidx9 = getelementptr inbounds [50 x i8], ptr %video_card, i32 0, i32 9
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %arrayidx9, align 1
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp = icmp ult i32 %18, 8
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx13 = getelementptr [8 x ptr], ptr @r128_family, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx13, align 4
  %call14 = call i32 @strlcat(ptr noundef nonnull %video_card, ptr noundef %20, i32 noundef 50) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %video_card, i32 noundef %conv) #14
  %vram_size = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %vram_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vram_size, align 4
  %rem = and i32 %22, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp18 = icmp eq i32 %rem, 0
  %. = select i1 %cmp18, i32 20, i32 10
  %.str.50..str.53 = select i1 %cmp18, ptr @.str.50, ptr @.str.53
  %div32124 = lshr i32 %22, %.
  %mem33 = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %mem33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem33, align 4
  %name34 = getelementptr inbounds %struct.aty128_meminfo, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name34, align 4
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50..str.53, i32 noundef %div32124, ptr noundef %26) #14
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %driver_data, align 4
  %chip_gen = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %chip_gen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %chip_gen, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @aty128fb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags, align 4
  %32 = load i32, ptr @default_lcd_on, align 4
  %lcd_on = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 13
  %33 = ptrtoint ptr %lcd_on to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %lcd_on, align 4
  %34 = load i32, ptr @default_crt_on, align 4
  %crt_on = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 12
  %35 = ptrtoint ptr %crt_on to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %crt_on, align 4
  %36 = call ptr @memcpy(ptr %var, ptr @default_var, i32 160)
  %37 = load ptr, ptr @mode_option, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %do.end.if.end44_crit_edge, label %if.then38

do.end.if.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then38:                                        ; preds = %do.end
  %call39 = call i32 @fb_find_mode(ptr noundef nonnull %var, ptr noundef %1, ptr noundef nonnull %37, ptr noundef null, i32 noundef 0, ptr noundef nonnull @defaultmode, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %38 = call ptr @memcpy(ptr %var, ptr @default_var, i32 160)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then38.if.end44_crit_edge, %do.end.if.end44_crit_edge
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %39 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %accel_flags, align 4
  %and45 = and i32 %40, -2
  store i32 %and45, ptr %accel_flags, align 4
  %call46 = call i32 @aty128fb_check_var(ptr noundef nonnull %var, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #14
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i126)
  %41 = ptrtoint ptr %regindex.addr.i126 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 88, ptr %regindex.addr.i126, align 4
  %42 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i126.0.regindex.addr.i126.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i128 = load volatile i32, ptr %regindex.addr.i126, align 4
  %add.ptr.i129 = getelementptr i8, ptr %43, i32 %regindex.addr.i126.0.regindex.addr.i126.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i128
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #11, !srcloc !232
  %45 = call i32 @llvm.bswap.i32(i32 %44) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i126)
  %46 = ptrtoint ptr %chip_gen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp58 = icmp eq i32 %47, 4
  %spec.select.v = select i1 %cmp58, i32 -16776893, i32 -16776957
  %spec.select = or i32 %spec.select.v, %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i130)
  %48 = ptrtoint ptr %regindex.addr.i130 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 88, ptr %regindex.addr.i130, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  call void @arm_heavy_mb() #11
  %49 = call i32 @llvm.bswap.i32(i32 %spec.select) #11
  %50 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regbase.i, align 4
  %52 = ptrtoint ptr %regindex.addr.i130 to i32
  call void @__asan_load4_noabort(i32 %52)
  %regindex.addr.i130.0.regindex.addr.i130.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i132 = load volatile i32, ptr %regindex.addr.i130, align 4
  %add.ptr.i133 = getelementptr i8, ptr %51, i32 %regindex.addr.i130.0.regindex.addr.i130.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %49) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i130)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i134)
  %53 = ptrtoint ptr %regindex.addr.i134 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 48, ptr %regindex.addr.i134, align 4
  %54 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i134.0.regindex.addr.i134.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i136 = load volatile i32, ptr %regindex.addr.i134, align 4
  %add.ptr.i137 = getelementptr i8, ptr %55, i32 %regindex.addr.i134.0.regindex.addr.i134.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i136
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #11, !srcloc !232
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i134)
  %57 = or i32 %56, 1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i138)
  %58 = ptrtoint ptr %regindex.addr.i138 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 48, ptr %regindex.addr.i138, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regbase.i, align 4
  %61 = ptrtoint ptr %regindex.addr.i138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %regindex.addr.i138.0.regindex.addr.i138.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i140 = load volatile i32, ptr %regindex.addr.i138, align 4
  %add.ptr.i141 = getelementptr i8, ptr %60, i32 %regindex.addr.i138.0.regindex.addr.i138.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %57) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i138)
  %var65 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %62 = call ptr @memcpy(ptr %var65, ptr %var, i32 160)
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %call66 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #11
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %63 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %activate, align 4
  call fastcc void @aty128_init_engine(ptr noundef %3)
  %pdev67 = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 14
  %64 = ptrtoint ptr %pdev67 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pdev, ptr %pdev67, align 4
  %asleep = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 16
  %65 = ptrtoint ptr %asleep to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %asleep, align 4
  %lock_blank = getelementptr inbounds %struct.aty128fb_par, ptr %3, i32 0, i32 17
  %66 = ptrtoint ptr %lock_blank to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %lock_blank, align 4
  %67 = load i32, ptr @backlight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool68.not = icmp eq i32 %67, 0
  br i1 %tobool68.not, label %if.end54.if.end70_crit_edge, label %if.then69

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then69:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #11
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name.i) #11
  %70 = call ptr @memset(ptr %name.i, i32 255, i32 12)
  %71 = ptrtoint ptr %chip_gen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chip_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.not.i = icmp eq i32 %72, 4
  br i1 %cmp.not.i, label %if.end.i, label %if.then69.aty128_bl_init.exit_crit_edge

if.then69.aty128_bl_init.exit_crit_edge:          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128_bl_init.exit

if.end.i:                                         ; preds = %if.then69
  %73 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %74 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %node.i = getelementptr inbounds %struct.fb_info, ptr %69, i32 0, i32 1
  %75 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %node.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 12, ptr noundef nonnull @.str.81, i32 noundef %76) #11
  %77 = call ptr @memset(ptr %props.i, i32 0, i32 28)
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %73, align 4
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 127, ptr %74, align 4
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %69, i32 0, i32 22
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %call3.i = call ptr @backlight_device_register(ptr noundef nonnull %name.i, ptr noundef %81, ptr noundef %3, ptr noundef nonnull @aty128_bl_data, ptr noundef nonnull %props.i) #11
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  %bl_dev.i = getelementptr inbounds %struct.fb_info, ptr %69, i32 0, i32 15
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %bl_dev.i, align 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #14
  br label %aty128_bl_init.exit

if.end7.i:                                        ; preds = %if.end.i
  %83 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call3.i, ptr %bl_dev.i, align 4
  call void @fb_bl_default_curve(ptr noundef %69, i8 noundef zeroext 0, i8 noundef zeroext 63, i8 noundef zeroext -37) #11
  %max_brightness10.i = getelementptr inbounds %struct.backlight_properties, ptr %call3.i, i32 0, i32 1
  %84 = ptrtoint ptr %max_brightness10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_brightness10.i, align 4
  %86 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %call3.i, align 8
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %call3.i, i32 0, i32 2
  %87 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %power.i, align 8
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %call3.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #11
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %call3.i, i32 0, i32 3
  %88 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.end7.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 %91(ptr noundef %call3.i) #11
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end7.i.backlight_update_status.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i.i) #11
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull %name.i) #14
  br label %aty128_bl_init.exit

aty128_bl_init.exit:                              ; preds = %backlight_update_status.exit.i, %if.then5.i, %if.then69.aty128_bl_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #11
  br label %if.end70

if.end70:                                         ; preds = %aty128_bl_init.exit, %if.end54.if.end70_crit_edge
  %call71 = call i32 @register_framebuffer(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.cleanup_crit_edge, label %do.end78

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %node = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %node, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %93, ptr noundef %fix, ptr noundef nonnull %video_card) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end70.cleanup_crit_edge, %do.end51
  %retval.0 = phi i32 [ 0, %do.end51 ], [ 1, %do.end78 ], [ 0, %if.end70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %video_card) #11
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty_pll_writeupdate(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i.i3 = alloca i32, align 4
  %regindex.addr.i.i = alloca i32, align 4
  %regindex.addr.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = xor i32 %0, -1
  %regbase.i.i.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %1, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i, label %do.end.critedge.i

while.body.i:                                     ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 3) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i)
  %4 = ptrtoint ptr %regindex.addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 12, ptr %regindex.addr.i.i.i.i, align 4
  %5 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i.i.i.i, align 4
  %regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i = load volatile i32, ptr %regindex.addr.i.i.i.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %6, i32 %regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i)
  %8 = and i32 %7, 8388608
  %tobool.not.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.not.i, label %while.body.i.aty_pll_wait_readupdate.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.aty_pll_wait_readupdate.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty_pll_wait_readupdate.exit

do.end.critedge.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  br label %aty_pll_wait_readupdate.exit

aty_pll_wait_readupdate.exit:                     ; preds = %do.end.critedge.i, %while.body.i.aty_pll_wait_readupdate.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 3) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %11 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 12, ptr %regindex.addr.i.i, align 4
  %12 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i.i.i.i, align 4
  %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i = load volatile i32, ptr %regindex.addr.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %13, i32 %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %15 = or i32 %14, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i5, i8 -125) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i3)
  %18 = ptrtoint ptr %regindex.addr.i.i3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 12, ptr %regindex.addr.i.i3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i.i.i.i, align 4
  %21 = ptrtoint ptr %regindex.addr.i.i3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %regindex.addr.i.i3.0.regindex.addr.i.i3.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i6 = load volatile i32, ptr %regindex.addr.i.i3, align 4
  %add.ptr.i3.i7 = getelementptr i8, ptr %20, i32 %regindex.addr.i.i3.0.regindex.addr.i.i3.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i7, i32 %15) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i3)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %par = alloca %struct.aty128fb_par, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %par) #11
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = call ptr @memcpy(ptr %par, ptr %1, i32 352)
  %call = call fastcc i32 @aty128_decode_var(ptr noundef %var, ptr noundef nonnull %par)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %h_total1.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 1
  %3 = ptrtoint ptr %h_total1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %h_total1.i.i, align 4
  %h_sync_strt_wid.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 2
  %5 = ptrtoint ptr %h_sync_strt_wid.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_sync_strt_wid.i.i, align 4
  %v_total14.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 3
  %7 = ptrtoint ptr %v_total14.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v_total14.i.i, align 4
  %v_sync_strt_wid.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 4
  %9 = ptrtoint ptr %v_sync_strt_wid.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v_sync_strt_wid.i.i, align 4
  %11 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %par, align 4
  %and28.i.i = and i32 %12, 1792
  %red.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %msb_right.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %msb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msb_right.i.i.i, align 4
  %green.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %msb_right1.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %msb_right1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msb_right1.i.i.i, align 4
  %blue.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %15 = ptrtoint ptr %blue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %blue.i.i.i, align 4
  %msb_right3.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %16 = add nsw i32 %and28.i.i, -512
  %17 = lshr exact i32 %16, 8
  %18 = call ptr @memset(ptr %msb_right3.i.i.i, i32 0, i32 16)
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %17, label %do.end.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb18.i.i.i
    i32 2, label %sw.bb30.i.i.i
    i32 3, label %sw.bb42.i.i.i
    i32 4, label %sw.bb54.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bits_per_pixel.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %20 = ptrtoint ptr %bits_per_pixel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %bits_per_pixel.i.i.i, align 4
  %21 = ptrtoint ptr %red.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %red.i.i.i, align 4
  %length11.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %length11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %length11.i.i.i, align 4
  %23 = ptrtoint ptr %green.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %green.i.i.i, align 4
  %length15.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %length15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %length15.i.i.i, align 4
  %length17.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %length17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %length17.i.i.i, align 4
  br label %aty128_encode_var.exit

sw.bb18.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bits_per_pixel19.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %26 = ptrtoint ptr %bits_per_pixel19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %bits_per_pixel19.i.i.i, align 4
  %27 = ptrtoint ptr %red.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %red.i.i.i, align 4
  %length23.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %length23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %length23.i.i.i, align 4
  %29 = ptrtoint ptr %green.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %green.i.i.i, align 4
  %length27.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %length27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %length27.i.i.i, align 4
  %length29.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %length29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %length29.i.i.i, align 4
  br label %aty128_encode_var.exit

sw.bb30.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bits_per_pixel31.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %32 = ptrtoint ptr %bits_per_pixel31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %bits_per_pixel31.i.i.i, align 4
  %33 = ptrtoint ptr %red.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 11, ptr %red.i.i.i, align 4
  %length35.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %length35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %length35.i.i.i, align 4
  %35 = ptrtoint ptr %green.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %green.i.i.i, align 4
  %length39.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %length39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %length39.i.i.i, align 4
  %length41.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %length41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %length41.i.i.i, align 4
  br label %aty128_encode_var.exit

sw.bb42.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bits_per_pixel43.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %38 = ptrtoint ptr %bits_per_pixel43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 24, ptr %bits_per_pixel43.i.i.i, align 4
  %39 = ptrtoint ptr %red.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %red.i.i.i, align 4
  %length47.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %length47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %length47.i.i.i, align 4
  %41 = ptrtoint ptr %green.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %green.i.i.i, align 4
  %length51.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %length51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %length51.i.i.i, align 4
  %length53.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %length53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %length53.i.i.i, align 4
  br label %aty128_encode_var.exit

sw.bb54.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %length.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %transp.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %bits_per_pixel55.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %44 = ptrtoint ptr %bits_per_pixel55.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %bits_per_pixel55.i.i.i, align 4
  %45 = ptrtoint ptr %red.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16, ptr %red.i.i.i, align 4
  %length59.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %length59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %length59.i.i.i, align 4
  %47 = ptrtoint ptr %green.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %green.i.i.i, align 4
  %length63.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %length63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %length63.i.i.i, align 4
  %length65.i.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %length65.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8, ptr %length65.i.i.i, align 4
  %50 = ptrtoint ptr %transp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 24, ptr %transp.i.i.i, align 4
  %51 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %length.i.i.i, align 4
  br label %aty128_encode_var.exit

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #14
  br label %aty128_encode_var.exit

aty128_encode_var.exit:                           ; preds = %do.end.i.i.i, %sw.bb54.i.i.i, %sw.bb42.i.i.i, %sw.bb30.i.i.i, %sw.bb18.i.i.i, %sw.bb.i.i.i
  %52 = lshr i32 %10, 22
  %53 = and i32 %52, 2
  %54 = lshr i32 %6, 23
  %.lobit.i.i = and i32 %54, 1
  %55 = or i32 %53, %.lobit.i.i
  %and26.i.i = lshr i32 %12, 1
  %56 = and i32 %and26.i.i, 8
  %57 = or i32 %55, %56
  %or46.i.i = xor i32 %57, 3
  %and19.i.i = and i32 %10, 2047
  %shr17.i.i = lshr i32 %8, 16
  %and18.i.i = and i32 %shr17.i.i, 2047
  %sub39.i.i = sub nsw i32 %and19.i.i, %and18.i.i
  %and15.i.i = and i32 %8, 2047
  %shr21.i.i = lshr i32 %10, 16
  %and22.i.i = and i32 %shr21.i.i, 31
  %58 = add nuw nsw i32 %and19.i.i, %and22.i.i
  %sub38.i.i = sub nsw i32 %and15.i.i, %58
  %shr9.i.i = lshr i32 %6, 16
  %and10.i.i = and i32 %shr9.i.i, 63
  %shl36.i.i = shl nuw nsw i32 %and10.i.i, 3
  %shr4.i.i = lshr i32 %6, 3
  %and5.i.i = and i32 %shr4.i.i, 511
  %shr.i.i = lshr i32 %4, 16
  %and3.i.i = and i32 %shr.i.i, 255
  %sub33.i.i = sub nsw i32 %and5.i.i, %and3.i.i
  %shl34.i.i = shl nsw i32 %sub33.i.i, 3
  %and7.i.i = and i32 %6, 7
  %add35.i.i = or i32 %shl34.i.i, %and7.i.i
  %and.i.i = and i32 %4, 511
  %59 = add nuw nsw i32 %and10.i.i, %and5.i.i
  %sub30.i.i = sub nsw i32 %and.i.i, %59
  %shl31.i.i = shl nsw i32 %sub30.i.i, 3
  %sub32.i.i = sub nsw i32 %shl31.i.i, %and7.i.i
  %add29.i.i = add nuw nsw i32 %and18.i.i, 1
  %add.i.i = shl nuw nsw i32 %and3.i.i, 3
  %shl.i.i = add nuw nsw i32 %add.i.i, 8
  %60 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl.i.i, ptr %var, align 4
  %yres48.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %61 = ptrtoint ptr %yres48.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add29.i.i, ptr %yres48.i.i, align 4
  %vxres.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 10
  %62 = ptrtoint ptr %vxres.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vxres.i.i, align 4
  %xres_virtual.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %64 = ptrtoint ptr %xres_virtual.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %xres_virtual.i.i, align 4
  %vyres.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 11
  %65 = ptrtoint ptr %vyres.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vyres.i.i, align 4
  %yres_virtual.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %67 = ptrtoint ptr %yres_virtual.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %yres_virtual.i.i, align 4
  %xoffset.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 8
  %68 = ptrtoint ptr %xoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xoffset.i.i, align 4
  %xoffset49.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %70 = ptrtoint ptr %xoffset49.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %xoffset49.i.i, align 4
  %yoffset.i.i = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 9
  %71 = ptrtoint ptr %yoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %yoffset.i.i, align 4
  %yoffset50.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %73 = ptrtoint ptr %yoffset50.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %yoffset50.i.i, align 4
  %left_margin.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %74 = ptrtoint ptr %left_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub32.i.i, ptr %left_margin.i.i, align 4
  %right_margin.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %75 = ptrtoint ptr %right_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add35.i.i, ptr %right_margin.i.i, align 4
  %upper_margin.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %76 = ptrtoint ptr %upper_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub38.i.i, ptr %upper_margin.i.i, align 4
  %lower_margin.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %77 = ptrtoint ptr %lower_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub39.i.i, ptr %lower_margin.i.i, align 4
  %hsync_len.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %78 = ptrtoint ptr %hsync_len.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shl36.i.i, ptr %hsync_len.i.i, align 4
  %vsync_len.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %79 = ptrtoint ptr %vsync_len.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and22.i.i, ptr %vsync_len.i.i, align 4
  %sync51.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %80 = ptrtoint ptr %sync51.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or46.i.i, ptr %sync51.i.i, align 4
  %vmode.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %81 = ptrtoint ptr %vmode.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %vmode.i.i, align 4
  %vclk.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 1, i32 2
  %82 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vclk.i.i, align 4
  %div.i.i = udiv i32 100000000, %83
  %pixclock.i.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %84 = ptrtoint ptr %pixclock.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div.i.i, ptr %pixclock.i.i, align 4
  %nonstd.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %85 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %nonstd.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %86 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %activate.i, align 4
  %height.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %87 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %height.i, align 4
  %width.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %88 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %width.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 3
  %89 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %accel_flags.i, align 4
  %accel_flags5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %91 = ptrtoint ptr %accel_flags5.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %accel_flags5.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %aty128_encode_var.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %par) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_init_engine(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i113 = alloca i32, align 4
  %regindex.addr.i109 = alloca i32, align 4
  %regindex.addr.i105 = alloca i32, align 4
  %regindex.addr.i101 = alloca i32, align 4
  %regindex.addr.i97 = alloca i32, align 4
  %regindex.addr.i93 = alloca i32, align 4
  %regindex.addr.i89 = alloca i32, align 4
  %regindex.addr.i85 = alloca i32, align 4
  %regindex.addr.i.i.i68 = alloca i32, align 4
  %regindex.addr.i64 = alloca i32, align 4
  %regindex.addr.i59 = alloca i32, align 4
  %regindex.addr.i55 = alloca i32, align 4
  %regindex.addr.i51 = alloca i32, align 4
  %regindex.addr.i.i.i34 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  %regindex.addr.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wait_for_idle(ptr noundef %par)
  %fifo_slots.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 11
  %0 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.wait_for_fifo.exit_crit_edge

entry.wait_for_fifo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_fifo.exit

if.then.i:                                        ; preds = %entry
  %regbase.i.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  br label %for.body.i.i

for.cond1.i.i:                                    ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000000
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond1.i.i.for.body.i.i.backedge_crit_edge

for.cond1.i.i.for.body.i.i.backedge_crit_edge:    ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.backedge

for.body.i.i.backedge:                            ; preds = %for.end.i.i, %for.cond1.i.i.for.body.i.i.backedge_crit_edge
  %i.01.i.i.be = phi i32 [ %inc.i.i, %for.cond1.i.i.for.body.i.i.backedge_crit_edge ], [ 0, %for.end.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %if.then.i
  %i.01.i.i = phi i32 [ 0, %if.then.i ], [ %i.01.i.i.be, %for.body.i.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i)
  %2 = ptrtoint ptr %regindex.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 5952, ptr %regindex.addr.i.i.i, align 4
  %3 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase.i.i.i, align 4
  %regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i = load volatile i32, ptr %regindex.addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i)
  %6 = and i32 %5, -15794176
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  %8 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %7)
  %cmp3.i.i = icmp ugt i32 %7, 63
  br i1 %cmp3.i.i, label %for.body.i.i.wait_for_fifo.exit_crit_edge, label %for.cond1.i.i

for.body.i.i.wait_for_fifo.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_fifo.exit

for.end.i.i:                                      ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aty128_reset_engine(ptr noundef %par) #11
  br label %for.body.i.i.backedge

wait_for_fifo.exit:                               ; preds = %for.body.i.i.wait_for_fifo.exit_crit_edge, %entry.wait_for_fifo.exit_crit_edge
  %9 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_slots.i, align 4
  %sub.i = add i32 %10, -1
  store i32 %sub.i, ptr %fifo_slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %11 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 6656, ptr %regindex.addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %12 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i, align 4
  %14 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  tail call fastcc void @aty128_reset_engine(ptr noundef %par)
  %pitch = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pitch, align 4
  %bpp = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 13
  %17 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %18)
  %cmp = icmp eq i32 %18, 24
  %mul = mul i32 %16, 3
  %spec.select = select i1 %cmp, i32 %mul, i32 %16
  %19 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i36 = icmp slt i32 %20, 4
  br i1 %cmp.i36, label %wait_for_fifo.exit.for.body.i.i47_crit_edge, label %wait_for_fifo.exit.wait_for_fifo.exit50_crit_edge

wait_for_fifo.exit.wait_for_fifo.exit50_crit_edge: ; preds = %wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_fifo.exit50

wait_for_fifo.exit.for.body.i.i47_crit_edge:      ; preds = %wait_for_fifo.exit
  br label %for.body.i.i47

for.cond1.i.i42:                                  ; preds = %for.body.i.i47
  %inc.i.i40 = add nuw nsw i32 %i.01.i.i43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc.i.i40)
  %exitcond.not.i.i41 = icmp eq i32 %inc.i.i40, 2000000
  br i1 %exitcond.not.i.i41, label %for.end.i.i48, label %for.cond1.i.i42.for.body.i.i47.backedge_crit_edge

for.cond1.i.i42.for.body.i.i47.backedge_crit_edge: ; preds = %for.cond1.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i47.backedge

for.body.i.i47.backedge:                          ; preds = %for.end.i.i48, %for.cond1.i.i42.for.body.i.i47.backedge_crit_edge
  %i.01.i.i43.be = phi i32 [ %inc.i.i40, %for.cond1.i.i42.for.body.i.i47.backedge_crit_edge ], [ 0, %for.end.i.i48 ]
  br label %for.body.i.i47

for.body.i.i47:                                   ; preds = %for.body.i.i47.backedge, %wait_for_fifo.exit.for.body.i.i47_crit_edge
  %i.01.i.i43 = phi i32 [ %i.01.i.i43.be, %for.body.i.i47.backedge ], [ 0, %wait_for_fifo.exit.for.body.i.i47_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i34)
  %21 = ptrtoint ptr %regindex.addr.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 5952, ptr %regindex.addr.i.i.i34, align 4
  %22 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i34.0.regindex.addr.i.i.i34.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i44 = load volatile i32, ptr %regindex.addr.i.i.i34, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %23, i32 %regindex.addr.i.i.i34.0.regindex.addr.i.i.i34.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i34)
  %25 = and i32 %24, -15794176
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  %27 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %26)
  %cmp3.i.i46 = icmp ugt i32 %26, 63
  br i1 %cmp3.i.i46, label %for.body.i.i47.wait_for_fifo.exit50_crit_edge, label %for.cond1.i.i42

for.body.i.i47.wait_for_fifo.exit50_crit_edge:    ; preds = %for.body.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_fifo.exit50

for.end.i.i48:                                    ; preds = %for.cond1.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aty128_reset_engine(ptr noundef %par) #11
  br label %for.body.i.i47.backedge

wait_for_fifo.exit50:                             ; preds = %for.body.i.i47.wait_for_fifo.exit50_crit_edge, %wait_for_fifo.exit.wait_for_fifo.exit50_crit_edge
  %28 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fifo_slots.i, align 4
  %sub.i49 = add i32 %29, -4
  store i32 %sub.i49, ptr %fifo_slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i51)
  %30 = ptrtoint ptr %regindex.addr.i51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 5856, ptr %regindex.addr.i51, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase.i, align 4
  %33 = ptrtoint ptr %regindex.addr.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %regindex.addr.i51.0.regindex.addr.i51.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i53 = load volatile i32, ptr %regindex.addr.i51, align 4
  %add.ptr.i54 = getelementptr i8, ptr %32, i32 %regindex.addr.i51.0.regindex.addr.i51.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i55)
  %34 = ptrtoint ptr %regindex.addr.i55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 5860, ptr %regindex.addr.i55, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #11
  %36 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regbase.i, align 4
  %38 = ptrtoint ptr %regindex.addr.i55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %regindex.addr.i55.0.regindex.addr.i55.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i57 = load volatile i32, ptr %regindex.addr.i55, align 4
  %add.ptr.i58 = getelementptr i8, ptr %37, i32 %regindex.addr.i55.0.regindex.addr.i55.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %35) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i59)
  %39 = ptrtoint ptr %regindex.addr.i59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 5864, ptr %regindex.addr.i59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regbase.i, align 4
  %42 = ptrtoint ptr %regindex.addr.i59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %regindex.addr.i59.0.regindex.addr.i59.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i61 = load volatile i32, ptr %regindex.addr.i59, align 4
  %add.ptr.i62 = getelementptr i8, ptr %41, i32 %regindex.addr.i59.0.regindex.addr.i59.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 -14680289) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i59)
  %depth = getelementptr inbounds %struct.aty128_crtc, ptr %par, i32 0, i32 12
  %43 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %44)
  %cmp.i63 = icmp ult i32 %44, 9
  br i1 %cmp.i63, label %wait_for_fifo.exit50.depth_to_dst.exit_crit_edge, label %if.else.i

wait_for_fifo.exit50.depth_to_dst.exit_crit_edge: ; preds = %wait_for_fifo.exit50
  call void @__sanitizer_cov_trace_pc() #13
  br label %depth_to_dst.exit

if.else.i:                                        ; preds = %wait_for_fifo.exit50
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp1.i = icmp ult i32 %44, 16
  br i1 %cmp1.i, label %if.else.i.depth_to_dst.exit_crit_edge, label %if.else3.i

if.else.i.depth_to_dst.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %depth_to_dst.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp4.i = icmp eq i32 %44, 16
  br i1 %cmp4.i, label %if.else3.i.depth_to_dst.exit_crit_edge, label %if.else6.i

if.else3.i.depth_to_dst.exit_crit_edge:           ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %depth_to_dst.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %44)
  %cmp7.i = icmp ult i32 %44, 25
  br i1 %cmp7.i, label %if.else6.i.depth_to_dst.exit_crit_edge, label %if.else9.i

if.else6.i.depth_to_dst.exit_crit_edge:           ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %depth_to_dst.exit

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %44)
  %cmp10.i = icmp ult i32 %44, 33
  %phi.bo = select i1 %cmp10.i, i32 1928345296, i32 -1328
  br label %depth_to_dst.exit

depth_to_dst.exit:                                ; preds = %if.else9.i, %if.else6.i.depth_to_dst.exit_crit_edge, %if.else3.i.depth_to_dst.exit_crit_edge, %if.else.i.depth_to_dst.exit_crit_edge, %wait_for_fifo.exit50.depth_to_dst.exit_crit_edge
  %retval.0.i = phi i32 [ 1928344272, %wait_for_fifo.exit50.depth_to_dst.exit_crit_edge ], [ 1928344528, %if.else.i.depth_to_dst.exit_crit_edge ], [ 1928344784, %if.else3.i.depth_to_dst.exit_crit_edge ], [ 1928345040, %if.else6.i.depth_to_dst.exit_crit_edge ], [ %phi.bo, %if.else9.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i64)
  %45 = ptrtoint ptr %regindex.addr.i64 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 5228, ptr %regindex.addr.i64, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #11
  %47 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regbase.i, align 4
  %49 = ptrtoint ptr %regindex.addr.i64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %regindex.addr.i64.0.regindex.addr.i64.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i66 = load volatile i32, ptr %regindex.addr.i64, align 4
  %add.ptr.i67 = getelementptr i8, ptr %48, i32 %regindex.addr.i64.0.regindex.addr.i64.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %46) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i64)
  %50 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp.i70 = icmp slt i32 %51, 8
  br i1 %cmp.i70, label %depth_to_dst.exit.for.body.i.i81_crit_edge, label %depth_to_dst.exit.wait_for_fifo.exit84_crit_edge

depth_to_dst.exit.wait_for_fifo.exit84_crit_edge: ; preds = %depth_to_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_fifo.exit84

depth_to_dst.exit.for.body.i.i81_crit_edge:       ; preds = %depth_to_dst.exit
  br label %for.body.i.i81

for.cond1.i.i76:                                  ; preds = %for.body.i.i81
  %inc.i.i74 = add nuw nsw i32 %i.01.i.i77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc.i.i74)
  %exitcond.not.i.i75 = icmp eq i32 %inc.i.i74, 2000000
  br i1 %exitcond.not.i.i75, label %for.end.i.i82, label %for.cond1.i.i76.for.body.i.i81.backedge_crit_edge

for.cond1.i.i76.for.body.i.i81.backedge_crit_edge: ; preds = %for.cond1.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i81.backedge

for.body.i.i81.backedge:                          ; preds = %for.end.i.i82, %for.cond1.i.i76.for.body.i.i81.backedge_crit_edge
  %i.01.i.i77.be = phi i32 [ %inc.i.i74, %for.cond1.i.i76.for.body.i.i81.backedge_crit_edge ], [ 0, %for.end.i.i82 ]
  br label %for.body.i.i81

for.body.i.i81:                                   ; preds = %for.body.i.i81.backedge, %depth_to_dst.exit.for.body.i.i81_crit_edge
  %i.01.i.i77 = phi i32 [ %i.01.i.i77.be, %for.body.i.i81.backedge ], [ 0, %depth_to_dst.exit.for.body.i.i81_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i68)
  %52 = ptrtoint ptr %regindex.addr.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 5952, ptr %regindex.addr.i.i.i68, align 4
  %53 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i68.0.regindex.addr.i.i.i68.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i78 = load volatile i32, ptr %regindex.addr.i.i.i68, align 4
  %add.ptr.i.i.i79 = getelementptr i8, ptr %54, i32 %regindex.addr.i.i.i68.0.regindex.addr.i.i.i68.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i78
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i79) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i68)
  %56 = and i32 %55, -15794176
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %58 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %57)
  %cmp3.i.i80 = icmp ugt i32 %57, 63
  br i1 %cmp3.i.i80, label %for.body.i.i81.wait_for_fifo.exit84_crit_edge, label %for.cond1.i.i76

for.body.i.i81.wait_for_fifo.exit84_crit_edge:    ; preds = %for.body.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_fifo.exit84

for.end.i.i82:                                    ; preds = %for.cond1.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aty128_reset_engine(ptr noundef %par) #11
  br label %for.body.i.i81.backedge

wait_for_fifo.exit84:                             ; preds = %for.body.i.i81.wait_for_fifo.exit84_crit_edge, %depth_to_dst.exit.wait_for_fifo.exit84_crit_edge
  %59 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fifo_slots.i, align 4
  %sub.i83 = add i32 %60, -8
  store i32 %sub.i83, ptr %fifo_slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i85)
  %61 = ptrtoint ptr %regindex.addr.i85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 5672, ptr %regindex.addr.i85, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regbase.i, align 4
  %64 = ptrtoint ptr %regindex.addr.i85 to i32
  call void @__asan_load4_noabort(i32 %64)
  %regindex.addr.i85.0.regindex.addr.i85.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i87 = load volatile i32, ptr %regindex.addr.i85, align 4
  %add.ptr.i88 = getelementptr i8, ptr %63, i32 %regindex.addr.i85.0.regindex.addr.i85.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i85)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i89)
  %65 = ptrtoint ptr %regindex.addr.i89 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 5676, ptr %regindex.addr.i89, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regbase.i, align 4
  %68 = ptrtoint ptr %regindex.addr.i89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %regindex.addr.i89.0.regindex.addr.i89.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i91 = load volatile i32, ptr %regindex.addr.i89, align 4
  %add.ptr.i92 = getelementptr i8, ptr %67, i32 %regindex.addr.i89.0.regindex.addr.i89.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i93)
  %69 = ptrtoint ptr %regindex.addr.i93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 5680, ptr %regindex.addr.i93, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regbase.i, align 4
  %72 = ptrtoint ptr %regindex.addr.i93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %regindex.addr.i93.0.regindex.addr.i93.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i95 = load volatile i32, ptr %regindex.addr.i93, align 4
  %add.ptr.i96 = getelementptr i8, ptr %71, i32 %regindex.addr.i93.0.regindex.addr.i93.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i93)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i97)
  %73 = ptrtoint ptr %regindex.addr.i97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 5244, ptr %regindex.addr.i97, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regbase.i, align 4
  %76 = ptrtoint ptr %regindex.addr.i97 to i32
  call void @__asan_load4_noabort(i32 %76)
  %regindex.addr.i97.0.regindex.addr.i97.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i99 = load volatile i32, ptr %regindex.addr.i97, align 4
  %add.ptr.i100 = getelementptr i8, ptr %75, i32 %regindex.addr.i97.0.regindex.addr.i97.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 -1) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i97)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i101)
  %77 = ptrtoint ptr %regindex.addr.i101 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 5240, ptr %regindex.addr.i101, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regbase.i, align 4
  %80 = ptrtoint ptr %regindex.addr.i101 to i32
  call void @__asan_load4_noabort(i32 %80)
  %regindex.addr.i101.0.regindex.addr.i101.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i103 = load volatile i32, ptr %regindex.addr.i101, align 4
  %add.ptr.i104 = getelementptr i8, ptr %79, i32 %regindex.addr.i101.0.regindex.addr.i101.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i101)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i105)
  %81 = ptrtoint ptr %regindex.addr.i105 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 5592, ptr %regindex.addr.i105, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regbase.i, align 4
  %84 = ptrtoint ptr %regindex.addr.i105 to i32
  call void @__asan_load4_noabort(i32 %84)
  %regindex.addr.i105.0.regindex.addr.i105.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i107 = load volatile i32, ptr %regindex.addr.i105, align 4
  %add.ptr.i108 = getelementptr i8, ptr %83, i32 %regindex.addr.i105.0.regindex.addr.i105.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 -1) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i105)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i109)
  %85 = ptrtoint ptr %regindex.addr.i109 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 5596, ptr %regindex.addr.i109, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %86 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regbase.i, align 4
  %88 = ptrtoint ptr %regindex.addr.i109 to i32
  call void @__asan_load4_noabort(i32 %88)
  %regindex.addr.i109.0.regindex.addr.i109.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i111 = load volatile i32, ptr %regindex.addr.i109, align 4
  %add.ptr.i112 = getelementptr i8, ptr %87, i32 %regindex.addr.i109.0.regindex.addr.i109.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i109)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i113)
  %89 = ptrtoint ptr %regindex.addr.i113 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 5836, ptr %regindex.addr.i113, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regbase.i, align 4
  %92 = ptrtoint ptr %regindex.addr.i113 to i32
  call void @__asan_load4_noabort(i32 %92)
  %regindex.addr.i113.0.regindex.addr.i113.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i115 = load volatile i32, ptr %regindex.addr.i113, align 4
  %add.ptr.i116 = getelementptr i8, ptr %91, i32 %regindex.addr.i113.0.regindex.addr.i113.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 -1) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i113)
  tail call fastcc void @wait_for_idle(ptr noundef %par)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  %regindex.addr.i134 = alloca i32, align 4
  %regindex.addr.i130 = alloca i32, align 4
  %regindex.addr.i3.i = alloca i32, align 4
  %regindex.addr.i.i126 = alloca i32, align 4
  %regindex.addr.i.i94.i = alloca i32, align 4
  %regindex.addr.i.i89.i = alloca i32, align 4
  %regindex.addr.i.i84.i = alloca i32, align 4
  %regindex.addr.i.i.i.i70.i = alloca i32, align 4
  %regindex.addr.i.i65.i = alloca i32, align 4
  %regindex.addr.i.i.i.i51.i = alloca i32, align 4
  %regindex.addr.i.i46.i = alloca i32, align 4
  %regindex.addr.i.i41.i = alloca i32, align 4
  %regindex.addr.i.i.i.i.i = alloca i32, align 4
  %regindex.addr.i.i36.i = alloca i32, align 4
  %regindex.addr.i.i.i118 = alloca i32, align 4
  %regindex.addr.i32.i = alloca i32, align 4
  %regindex.addr.i.i119 = alloca i32, align 4
  %regindex.addr.i.i45.i = alloca i32, align 4
  %regindex.addr.i.i.i = alloca i32, align 4
  %regindex.addr.i41.i = alloca i32, align 4
  %regindex.addr.i37.i = alloca i32, align 4
  %regindex.addr.i33.i = alloca i32, align 4
  %regindex.addr.i29.i = alloca i32, align 4
  %regindex.addr.i25.i = alloca i32, align 4
  %regindex.addr.i21.i = alloca i32, align 4
  %regindex.addr.i17.i = alloca i32, align 4
  %regindex.addr.i.i = alloca i32, align 4
  %regindex.addr.i112 = alloca i32, align 4
  %regindex.addr.i108 = alloca i32, align 4
  %regindex.addr.i104 = alloca i32, align 4
  %regindex.addr.i100 = alloca i32, align 4
  %regindex.addr.i96 = alloca i32, align 4
  %regindex.addr.i92 = alloca i32, align 4
  %regindex.addr.i88 = alloca i32, align 4
  %regindex.addr.i84 = alloca i32, align 4
  %regindex.addr.i80 = alloca i32, align 4
  %regindex.addr.i76 = alloca i32, align 4
  %regindex.addr.i72 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call = tail call fastcc i32 @aty128_decode_var(ptr noundef %var, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %blitter_may_be_busy = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blitter_may_be_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wait_for_idle(ptr noundef %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %4 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 560, ptr %regindex.addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i, align 4
  %7 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i72)
  %8 = ptrtoint ptr %regindex.addr.i72 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 564, ptr %regindex.addr.i72, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i, align 4
  %11 = ptrtoint ptr %regindex.addr.i72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %regindex.addr.i72.0.regindex.addr.i72.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i74 = load volatile i32, ptr %regindex.addr.i72, align 4
  %add.ptr.i75 = getelementptr i8, ptr %10, i32 %regindex.addr.i72.0.regindex.addr.i72.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i76)
  %12 = ptrtoint ptr %regindex.addr.i76 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 568, ptr %regindex.addr.i76, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase.i, align 4
  %15 = ptrtoint ptr %regindex.addr.i76 to i32
  call void @__asan_load4_noabort(i32 %15)
  %regindex.addr.i76.0.regindex.addr.i76.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i78 = load volatile i32, ptr %regindex.addr.i76, align 4
  %add.ptr.i79 = getelementptr i8, ptr %14, i32 %regindex.addr.i76.0.regindex.addr.i76.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i80)
  %16 = ptrtoint ptr %regindex.addr.i80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1056, ptr %regindex.addr.i80, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i, align 4
  %19 = ptrtoint ptr %regindex.addr.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %regindex.addr.i80.0.regindex.addr.i80.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i82 = load volatile i32, ptr %regindex.addr.i80, align 4
  %add.ptr.i83 = getelementptr i8, ptr %18, i32 %regindex.addr.i80.0.regindex.addr.i80.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i84)
  %20 = ptrtoint ptr %regindex.addr.i84 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 448, ptr %regindex.addr.i84, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i, align 4
  %23 = ptrtoint ptr %regindex.addr.i84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %regindex.addr.i84.0.regindex.addr.i84.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i86 = load volatile i32, ptr %regindex.addr.i84, align 4
  %add.ptr.i87 = getelementptr i8, ptr %22, i32 %regindex.addr.i84.0.regindex.addr.i84.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i88)
  %24 = ptrtoint ptr %regindex.addr.i88 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 456, ptr %regindex.addr.i88, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase.i, align 4
  %27 = ptrtoint ptr %regindex.addr.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %regindex.addr.i88.0.regindex.addr.i88.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i90 = load volatile i32, ptr %regindex.addr.i88, align 4
  %add.ptr.i91 = getelementptr i8, ptr %26, i32 %regindex.addr.i88.0.regindex.addr.i88.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i92)
  %28 = ptrtoint ptr %regindex.addr.i92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1344, ptr %regindex.addr.i92, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regbase.i, align 4
  %31 = ptrtoint ptr %regindex.addr.i92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %regindex.addr.i92.0.regindex.addr.i92.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i94 = load volatile i32, ptr %regindex.addr.i92, align 4
  %add.ptr.i95 = getelementptr i8, ptr %30, i32 %regindex.addr.i92.0.regindex.addr.i92.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i96)
  %32 = ptrtoint ptr %regindex.addr.i96 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 464, ptr %regindex.addr.i96, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i, align 4
  %35 = ptrtoint ptr %regindex.addr.i96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %regindex.addr.i96.0.regindex.addr.i96.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i98 = load volatile i32, ptr %regindex.addr.i96, align 4
  %add.ptr.i99 = getelementptr i8, ptr %34, i32 %regindex.addr.i96.0.regindex.addr.i96.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i100)
  %36 = ptrtoint ptr %regindex.addr.i100 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 148, ptr %regindex.addr.i100, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase.i, align 4
  %39 = ptrtoint ptr %regindex.addr.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %regindex.addr.i100.0.regindex.addr.i100.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i102 = load volatile i32, ptr %regindex.addr.i100, align 4
  %add.ptr.i103 = getelementptr i8, ptr %38, i32 %regindex.addr.i100.0.regindex.addr.i100.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i104)
  %40 = ptrtoint ptr %regindex.addr.i104 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 64, ptr %regindex.addr.i104, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regbase.i, align 4
  %43 = ptrtoint ptr %regindex.addr.i104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %regindex.addr.i104.0.regindex.addr.i104.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i106 = load volatile i32, ptr %regindex.addr.i104, align 4
  %add.ptr.i107 = getelementptr i8, ptr %42, i32 %regindex.addr.i104.0.regindex.addr.i104.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i108)
  %44 = ptrtoint ptr %regindex.addr.i108 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 2384, ptr %regindex.addr.i108, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regbase.i, align 4
  %47 = ptrtoint ptr %regindex.addr.i108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %regindex.addr.i108.0.regindex.addr.i108.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i110 = load volatile i32, ptr %regindex.addr.i108, align 4
  %add.ptr.i111 = getelementptr i8, ptr %46, i32 %regindex.addr.i108.0.regindex.addr.i108.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i108)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i112)
  %48 = ptrtoint ptr %regindex.addr.i112 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 2496, ptr %regindex.addr.i112, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase.i, align 4
  %51 = ptrtoint ptr %regindex.addr.i112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %regindex.addr.i112.0.regindex.addr.i112.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i114 = load volatile i32, ptr %regindex.addr.i112, align 4
  %add.ptr.i115 = getelementptr i8, ptr %50, i32 %regindex.addr.i112.0.regindex.addr.i112.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %53, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i117, i8 4) #11, !srcloc !273
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %56 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 80, ptr %regindex.addr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %57 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  %58 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regbase.i, align 4
  %60 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i = load volatile i32, ptr %regindex.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %57) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %h_total.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %h_total.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %h_total.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i17.i)
  %63 = ptrtoint ptr %regindex.addr.i17.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 512, ptr %regindex.addr.i17.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %64 = tail call i32 @llvm.bswap.i32(i32 %62) #11
  %65 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regbase.i, align 4
  %67 = ptrtoint ptr %regindex.addr.i17.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %regindex.addr.i17.i.0.regindex.addr.i17.i.0.regindex.addr.i17.0.regindex.addr.i17.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i19.i = load volatile i32, ptr %regindex.addr.i17.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %66, i32 %regindex.addr.i17.i.0.regindex.addr.i17.i.0.regindex.addr.i17.0.regindex.addr.i17.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %64) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i17.i)
  %h_sync_strt_wid.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %h_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %h_sync_strt_wid.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i21.i)
  %70 = ptrtoint ptr %regindex.addr.i21.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 516, ptr %regindex.addr.i21.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %71 = tail call i32 @llvm.bswap.i32(i32 %69) #11
  %72 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regbase.i, align 4
  %74 = ptrtoint ptr %regindex.addr.i21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %regindex.addr.i21.i.0.regindex.addr.i21.i.0.regindex.addr.i21.0.regindex.addr.i21.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i23.i = load volatile i32, ptr %regindex.addr.i21.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %73, i32 %regindex.addr.i21.i.0.regindex.addr.i21.i.0.regindex.addr.i21.0.regindex.addr.i21.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %71) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i21.i)
  %v_total.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %v_total.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i25.i)
  %77 = ptrtoint ptr %regindex.addr.i25.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 520, ptr %regindex.addr.i25.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %78 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  %79 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regbase.i, align 4
  %81 = ptrtoint ptr %regindex.addr.i25.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %regindex.addr.i25.i.0.regindex.addr.i25.i.0.regindex.addr.i25.0.regindex.addr.i25.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i27.i = load volatile i32, ptr %regindex.addr.i25.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %80, i32 %regindex.addr.i25.i.0.regindex.addr.i25.i.0.regindex.addr.i25.0.regindex.addr.i25.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %78) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i25.i)
  %v_sync_strt_wid.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %v_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %v_sync_strt_wid.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i29.i)
  %84 = ptrtoint ptr %regindex.addr.i29.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 524, ptr %regindex.addr.i29.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %85 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  %86 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regbase.i, align 4
  %88 = ptrtoint ptr %regindex.addr.i29.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %regindex.addr.i29.i.0.regindex.addr.i29.i.0.regindex.addr.i29.0.regindex.addr.i29.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i31.i = load volatile i32, ptr %regindex.addr.i29.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %87, i32 %regindex.addr.i29.i.0.regindex.addr.i29.i.0.regindex.addr.i29.0.regindex.addr.i29.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %85) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i29.i)
  %pitch.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pitch.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i33.i)
  %91 = ptrtoint ptr %regindex.addr.i33.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 556, ptr %regindex.addr.i33.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %92 = tail call i32 @llvm.bswap.i32(i32 %90) #11
  %93 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regbase.i, align 4
  %95 = ptrtoint ptr %regindex.addr.i33.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %regindex.addr.i33.i.0.regindex.addr.i33.i.0.regindex.addr.i33.0.regindex.addr.i33.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i35.i = load volatile i32, ptr %regindex.addr.i33.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %94, i32 %regindex.addr.i33.i.0.regindex.addr.i33.i.0.regindex.addr.i33.0.regindex.addr.i33.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %92) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i33.i)
  %offset.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 6
  %96 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i37.i)
  %98 = ptrtoint ptr %regindex.addr.i37.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 548, ptr %regindex.addr.i37.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %99 = tail call i32 @llvm.bswap.i32(i32 %97) #11
  %100 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regbase.i, align 4
  %102 = ptrtoint ptr %regindex.addr.i37.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %regindex.addr.i37.i.0.regindex.addr.i37.i.0.regindex.addr.i37.0.regindex.addr.i37.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i39.i = load volatile i32, ptr %regindex.addr.i37.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %101, i32 %regindex.addr.i37.i.0.regindex.addr.i37.i.0.regindex.addr.i37.0.regindex.addr.i37.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %99) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i37.i)
  %offset_cntl.i = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 7
  %103 = ptrtoint ptr %offset_cntl.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset_cntl.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i41.i)
  %105 = ptrtoint ptr %regindex.addr.i41.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 552, ptr %regindex.addr.i41.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %106 = tail call i32 @llvm.bswap.i32(i32 %104) #11
  %107 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regbase.i, align 4
  %109 = ptrtoint ptr %regindex.addr.i41.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %regindex.addr.i41.i.0.regindex.addr.i41.i.0.regindex.addr.i41.0.regindex.addr.i41.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i43.i = load volatile i32, ptr %regindex.addr.i41.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %108, i32 %regindex.addr.i41.i.0.regindex.addr.i41.i.0.regindex.addr.i41.0.regindex.addr.i41.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %106) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i41.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %110 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %111, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 2) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i)
  %112 = ptrtoint ptr %regindex.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 12, ptr %regindex.addr.i.i.i, align 4
  %113 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i = load volatile i32, ptr %regindex.addr.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %114, i32 %regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i)
  %116 = and i32 %115, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %117 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i47.i = getelementptr i8, ptr %118, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i47.i, i8 -126) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i45.i)
  %119 = ptrtoint ptr %regindex.addr.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 12, ptr %regindex.addr.i.i45.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %120 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regbase.i, align 4
  %122 = ptrtoint ptr %regindex.addr.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %regindex.addr.i.i45.i.0.regindex.addr.i.i45.i.0.regindex.addr.i.i45.0.regindex.addr.i.i45.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i48.i = load volatile i32, ptr %regindex.addr.i.i45.i, align 4
  %add.ptr.i3.i49.i = getelementptr i8, ptr %121, i32 %regindex.addr.i.i45.i.0.regindex.addr.i.i45.i.0.regindex.addr.i.i45.0.regindex.addr.i.i45.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i48.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i49.i, i32 %116) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i45.i)
  %pll = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i119)
  %123 = ptrtoint ptr %regindex.addr.i.i119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 8, ptr %regindex.addr.i.i119, align 4
  %124 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i119.0.regindex.addr.i.i119.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i121 = load volatile i32, ptr %regindex.addr.i.i119, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %125, i32 %regindex.addr.i.i119.0.regindex.addr.i.i119.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i121
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i119)
  %127 = or i32 %126, 196608
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i32.i)
  %128 = ptrtoint ptr %regindex.addr.i32.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 8, ptr %regindex.addr.i32.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %129 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regbase.i, align 4
  %131 = ptrtoint ptr %regindex.addr.i32.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %regindex.addr.i32.i.0.regindex.addr.i32.i.0.regindex.addr.i32.0.regindex.addr.i32.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i34.i = load volatile i32, ptr %regindex.addr.i32.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %130, i32 %regindex.addr.i32.i.0.regindex.addr.i32.i.0.regindex.addr.i32.0.regindex.addr.i32.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i34.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %127) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i32.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %132 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i123 = getelementptr i8, ptr %133, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i123, i8 2) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i118)
  %134 = ptrtoint ptr %regindex.addr.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 12, ptr %regindex.addr.i.i.i118, align 4
  %135 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i118.0.regindex.addr.i.i.i118.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i124 = load volatile i32, ptr %regindex.addr.i.i.i118, align 4
  %add.ptr.i3.i.i125 = getelementptr i8, ptr %136, i32 %regindex.addr.i.i.i118.0.regindex.addr.i.i.i118.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i124
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i125) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i118)
  %138 = or i32 %137, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %139 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i38.i = getelementptr i8, ptr %140, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i38.i, i8 -126) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i36.i)
  %141 = ptrtoint ptr %regindex.addr.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 12, ptr %regindex.addr.i.i36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %142 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regbase.i, align 4
  %144 = ptrtoint ptr %regindex.addr.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %regindex.addr.i.i36.i.0.regindex.addr.i.i36.i.0.regindex.addr.i.i36.0.regindex.addr.i.i36.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i39.i = load volatile i32, ptr %regindex.addr.i.i36.i, align 4
  %add.ptr.i3.i40.i = getelementptr i8, ptr %143, i32 %regindex.addr.i.i36.i.0.regindex.addr.i.i36.i.0.regindex.addr.i.i36.0.regindex.addr.i.i36.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i40.i, i32 %138) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i36.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %145 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = xor i32 %145, -1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %146, %add.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %do.end.critedge.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %147 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %148, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i, i8 3) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i.i)
  %149 = ptrtoint ptr %regindex.addr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 12, ptr %regindex.addr.i.i.i.i.i, align 4
  %150 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i.i.i.0.regindex.addr.i.i.i.i.i.0.regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i.i = load volatile i32, ptr %regindex.addr.i.i.i.i.i, align 4
  %add.ptr.i3.i.i.i.i = getelementptr i8, ptr %151, i32 %regindex.addr.i.i.i.i.i.0.regindex.addr.i.i.i.i.i.0.regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i.i
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i.i.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i.i)
  %153 = and i32 %152, 8388608
  %tobool.not.not.i.i = icmp eq i32 %153, 0
  br i1 %tobool.not.not.i.i, label %while.body.i.i.aty_pll_wait_readupdate.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.body.i.i.aty_pll_wait_readupdate.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty_pll_wait_readupdate.exit.i

do.end.critedge.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  br label %aty_pll_wait_readupdate.exit.i

aty_pll_wait_readupdate.exit.i:                   ; preds = %do.end.critedge.i.i, %while.body.i.i.aty_pll_wait_readupdate.exit.i_crit_edge
  %ref_divider.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 4, i32 3
  %154 = ptrtoint ptr %ref_divider.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ref_divider.i, align 4
  %and.i = and i32 %155, 1023
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %156 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %157, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i43.i, i8 -125) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i41.i)
  %158 = ptrtoint ptr %regindex.addr.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 12, ptr %regindex.addr.i.i41.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %159 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %160 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regbase.i, align 4
  %162 = ptrtoint ptr %regindex.addr.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %regindex.addr.i.i41.i.0.regindex.addr.i.i41.i.0.regindex.addr.i.i41.0.regindex.addr.i.i41.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i44.i = load volatile i32, ptr %regindex.addr.i.i41.i, align 4
  %add.ptr.i3.i45.i = getelementptr i8, ptr %161, i32 %regindex.addr.i.i41.i.0.regindex.addr.i.i41.i.0.regindex.addr.i.i41.0.regindex.addr.i.i41.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i44.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i45.i, i32 %159) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i41.i)
  tail call fastcc void @aty_pll_writeupdate(ptr noundef %1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %163 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %164, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i48.i, i8 7) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i46.i)
  %165 = ptrtoint ptr %regindex.addr.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 12, ptr %regindex.addr.i.i46.i, align 4
  %166 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i46.i.0.regindex.addr.i.i46.i.0.regindex.addr.i.i46.0.regindex.addr.i.i46.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i49.i = load volatile i32, ptr %regindex.addr.i.i46.i, align 4
  %add.ptr.i3.i50.i = getelementptr i8, ptr %167, i32 %regindex.addr.i.i46.i.0.regindex.addr.i.i46.i.0.regindex.addr.i.i46.0.regindex.addr.i.i46.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i49.i
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i50.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i46.i)
  %169 = and i32 %168, 16316671
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #11
  %feedback_divider.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 1, i32 1
  %171 = ptrtoint ptr %feedback_divider.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %feedback_divider.i, align 4
  %.masked.i = and i32 %172, -458753
  %and7.i = or i32 %.masked.i, %170
  %173 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %pll, align 4
  %arrayidx.i = getelementptr [13 x i8], ptr @__const.aty128_set_pll.post_conv, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %176 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or8.i = or i32 %and7.i, %shl.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %177 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i52.i = xor i32 %177, -1
  br label %while.cond.i56.i

while.cond.i56.i:                                 ; preds = %while.body.i61.i.while.cond.i56.i_crit_edge, %aty_pll_wait_readupdate.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %sub.i54.i = add i32 %178, %add.neg.i52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i54.i)
  %cmp.i55.i = icmp slt i32 %sub.i54.i, 0
  br i1 %cmp.i55.i, label %while.body.i61.i, label %do.end.critedge.i63.i

while.body.i61.i:                                 ; preds = %while.cond.i56.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %179 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i.i57.i = getelementptr i8, ptr %180, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i57.i, i8 3) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i51.i)
  %181 = ptrtoint ptr %regindex.addr.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 12, ptr %regindex.addr.i.i.i.i51.i, align 4
  %182 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i.i51.i.0.regindex.addr.i.i.i.i51.i.0.regindex.addr.i.i.i.i51.0.regindex.addr.i.i.i.i51.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i58.i = load volatile i32, ptr %regindex.addr.i.i.i.i51.i, align 4
  %add.ptr.i3.i.i.i59.i = getelementptr i8, ptr %183, i32 %regindex.addr.i.i.i.i51.i.0.regindex.addr.i.i.i.i51.i.0.regindex.addr.i.i.i.i51.0.regindex.addr.i.i.i.i51.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i58.i
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i.i59.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i51.i)
  %185 = and i32 %184, 8388608
  %tobool.not.not.i60.i = icmp eq i32 %185, 0
  br i1 %tobool.not.not.i60.i, label %while.body.i61.i.aty_pll_wait_readupdate.exit64.i_crit_edge, label %while.body.i61.i.while.cond.i56.i_crit_edge

while.body.i61.i.while.cond.i56.i_crit_edge:      ; preds = %while.body.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i56.i

while.body.i61.i.aty_pll_wait_readupdate.exit64.i_crit_edge: ; preds = %while.body.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty_pll_wait_readupdate.exit64.i

do.end.critedge.i63.i:                            ; preds = %while.cond.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  br label %aty_pll_wait_readupdate.exit64.i

aty_pll_wait_readupdate.exit64.i:                 ; preds = %do.end.critedge.i63.i, %while.body.i61.i.aty_pll_wait_readupdate.exit64.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %186 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %187, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i67.i, i8 -121) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i65.i)
  %188 = ptrtoint ptr %regindex.addr.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 12, ptr %regindex.addr.i.i65.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %189 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #11
  %190 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regbase.i, align 4
  %192 = ptrtoint ptr %regindex.addr.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %regindex.addr.i.i65.i.0.regindex.addr.i.i65.i.0.regindex.addr.i.i65.0.regindex.addr.i.i65.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i68.i = load volatile i32, ptr %regindex.addr.i.i65.i, align 4
  %add.ptr.i3.i69.i = getelementptr i8, ptr %191, i32 %regindex.addr.i.i65.i.0.regindex.addr.i.i65.i.0.regindex.addr.i.i65.0.regindex.addr.i.i65.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i68.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i69.i, i32 %189) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i65.i)
  tail call fastcc void @aty_pll_writeupdate(ptr noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %193 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i71.i = xor i32 %193, -1
  br label %while.cond.i75.i

while.cond.i75.i:                                 ; preds = %while.body.i80.i.while.cond.i75.i_crit_edge, %aty_pll_wait_readupdate.exit64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %194 = load volatile i32, ptr @jiffies, align 128
  %sub.i73.i = add i32 %194, %add.neg.i71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i73.i)
  %cmp.i74.i = icmp slt i32 %sub.i73.i, 0
  br i1 %cmp.i74.i, label %while.body.i80.i, label %do.end.critedge.i82.i

while.body.i80.i:                                 ; preds = %while.cond.i75.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %195 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i.i.i76.i = getelementptr i8, ptr %196, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i76.i, i8 3) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i70.i)
  %197 = ptrtoint ptr %regindex.addr.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 12, ptr %regindex.addr.i.i.i.i70.i, align 4
  %198 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i.i.i70.i.0.regindex.addr.i.i.i.i70.i.0.regindex.addr.i.i.i.i70.0.regindex.addr.i.i.i.i70.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i77.i = load volatile i32, ptr %regindex.addr.i.i.i.i70.i, align 4
  %add.ptr.i3.i.i.i78.i = getelementptr i8, ptr %199, i32 %regindex.addr.i.i.i.i70.i.0.regindex.addr.i.i.i.i70.i.0.regindex.addr.i.i.i.i70.0.regindex.addr.i.i.i.i70.0.regindex.addr.i.i.i.0.regindex.addr.i.i.i.0.regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i.i.i77.i
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i.i78.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i.i.i70.i)
  %201 = and i32 %200, 8388608
  %tobool.not.not.i79.i = icmp eq i32 %201, 0
  br i1 %tobool.not.not.i79.i, label %while.body.i80.i.aty128_set_pll.exit_crit_edge, label %while.body.i80.i.while.cond.i75.i_crit_edge

while.body.i80.i.while.cond.i75.i_crit_edge:      ; preds = %while.body.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i75.i

while.body.i80.i.aty128_set_pll.exit_crit_edge:   ; preds = %while.body.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128_set_pll.exit

do.end.critedge.i82.i:                            ; preds = %while.cond.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  br label %aty128_set_pll.exit

aty128_set_pll.exit:                              ; preds = %do.end.critedge.i82.i, %while.body.i80.i.aty128_set_pll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %202 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i86.i = getelementptr i8, ptr %203, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i86.i, i8 -119) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i84.i)
  %204 = ptrtoint ptr %regindex.addr.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile i32 12, ptr %regindex.addr.i.i84.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %205 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regbase.i, align 4
  %207 = ptrtoint ptr %regindex.addr.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %regindex.addr.i.i84.i.0.regindex.addr.i.i84.i.0.regindex.addr.i.i84.0.regindex.addr.i.i84.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i87.i = load volatile i32, ptr %regindex.addr.i.i84.i, align 4
  %add.ptr.i3.i88.i = getelementptr i8, ptr %206, i32 %regindex.addr.i.i84.i.0.regindex.addr.i.i84.i.0.regindex.addr.i.i84.0.regindex.addr.i.i84.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i87.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i88.i, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i84.i)
  tail call fastcc void @aty_pll_writeupdate(ptr noundef %1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %208 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i91.i = getelementptr i8, ptr %209, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i91.i, i8 2) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i89.i)
  %210 = ptrtoint ptr %regindex.addr.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile i32 12, ptr %regindex.addr.i.i89.i, align 4
  %211 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.i89.i.0.regindex.addr.i.i89.i.0.regindex.addr.i.i89.0.regindex.addr.i.i89.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i92.i = load volatile i32, ptr %regindex.addr.i.i89.i, align 4
  %add.ptr.i3.i93.i = getelementptr i8, ptr %212, i32 %regindex.addr.i.i89.i.0.regindex.addr.i.i89.i.0.regindex.addr.i.i89.0.regindex.addr.i.i89.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i92.i
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i93.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i89.i)
  %214 = and i32 %213, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %215 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i.i96.i = getelementptr i8, ptr %216, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i96.i, i8 -126) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i94.i)
  %217 = ptrtoint ptr %regindex.addr.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 12, ptr %regindex.addr.i.i94.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %218 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regbase.i, align 4
  %220 = ptrtoint ptr %regindex.addr.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %regindex.addr.i.i94.i.0.regindex.addr.i.i94.i.0.regindex.addr.i.i94.0.regindex.addr.i.i94.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i97.i = load volatile i32, ptr %regindex.addr.i.i94.i, align 4
  %add.ptr.i3.i98.i = getelementptr i8, ptr %219, i32 %regindex.addr.i.i94.i.0.regindex.addr.i.i94.i.0.regindex.addr.i.i94.0.regindex.addr.i.i94.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i97.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i98.i, i32 %214) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i94.i)
  %fifo_reg = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 2
  %221 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %fifo_reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i126)
  %223 = ptrtoint ptr %regindex.addr.i.i126 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 736, ptr %regindex.addr.i.i126, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %224 = tail call i32 @llvm.bswap.i32(i32 %222) #11
  %225 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regbase.i, align 4
  %227 = ptrtoint ptr %regindex.addr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %227)
  %regindex.addr.i.i126.0.regindex.addr.i.i126.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i128 = load volatile i32, ptr %regindex.addr.i.i126, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %226, i32 %regindex.addr.i.i126.0.regindex.addr.i.i126.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129, i32 %224) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i126)
  %dda_on_off.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 2, i32 1
  %228 = ptrtoint ptr %dda_on_off.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %dda_on_off.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i3.i)
  %230 = ptrtoint ptr %regindex.addr.i3.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 740, ptr %regindex.addr.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %231 = tail call i32 @llvm.bswap.i32(i32 %229) #11
  %232 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regbase.i, align 4
  %234 = ptrtoint ptr %regindex.addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %regindex.addr.i3.i.0.regindex.addr.i3.i.0.regindex.addr.i3.0.regindex.addr.i3.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i5.i = load volatile i32, ptr %regindex.addr.i3.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %233, i32 %regindex.addr.i3.i.0.regindex.addr.i3.i.0.regindex.addr.i3.0.regindex.addr.i3.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %231) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i3.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i130)
  %235 = ptrtoint ptr %regindex.addr.i130 to i32
  call void @__asan_store4_noabort(i32 %235)
  store volatile i32 224, ptr %regindex.addr.i130, align 4
  %236 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i130.0.regindex.addr.i130.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i132 = load volatile i32, ptr %regindex.addr.i130, align 4
  %add.ptr.i133 = getelementptr i8, ptr %237, i32 %regindex.addr.i130.0.regindex.addr.i130.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i132
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i130)
  %239 = and i32 %238, -50331649
  %240 = tail call i32 @llvm.bswap.i32(i32 %239)
  %bpp = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 13
  %241 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %bpp, align 4
  %243 = zext i32 %242 to i64
  call void @__sanitizer_cov_trace_switch(i64 %243, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %242, label %aty128_set_pll.exit.if.end14_crit_edge [
    i32 32, label %if.then7
    i32 16, label %if.then11
  ]

aty128_set_pll.exit.if.end14_crit_edge:           ; preds = %aty128_set_pll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then7:                                         ; preds = %aty128_set_pll.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %240, 2
  br label %if.end14

if.then11:                                        ; preds = %aty128_set_pll.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or12 = or i32 %240, 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then7, %aty128_set_pll.exit.if.end14_crit_edge
  %config.0 = phi i32 [ %or, %if.then7 ], [ %or12, %if.then11 ], [ %240, %aty128_set_pll.exit.if.end14_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i134)
  %244 = ptrtoint ptr %regindex.addr.i134 to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile i32 224, ptr %regindex.addr.i134, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %245 = tail call i32 @llvm.bswap.i32(i32 %config.0) #11
  %246 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regbase.i, align 4
  %248 = ptrtoint ptr %regindex.addr.i134 to i32
  call void @__asan_load4_noabort(i32 %248)
  %regindex.addr.i134.0.regindex.addr.i134.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i136 = load volatile i32, ptr %regindex.addr.i134, align 4
  %add.ptr.i137 = getelementptr i8, ptr %247, i32 %regindex.addr.i134.0.regindex.addr.i134.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %245) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %249 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %250, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i139, i8 0) #11, !srcloc !273
  %vxres = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 10
  %251 = ptrtoint ptr %vxres to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %vxres, align 4
  %253 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %bpp, align 4
  %mul = mul i32 %254, %252
  %shr = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %255 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %shr, ptr %line_length, align 4
  %256 = load i32, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %256)
  %cmp20 = icmp eq i32 %256, 8
  %cond = select i1 %cmp20, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %257 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %cond, ptr %visual, align 4
  %chip_gen = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 7
  %258 = ptrtoint ptr %chip_gen to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %chip_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %259)
  %cmp22 = icmp eq i32 %259, 4
  br i1 %cmp22, label %if.then23, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %crt_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 12
  %260 = ptrtoint ptr %crt_on to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %crt_on, align 4
  tail call fastcc void @aty128_set_crt_enable(ptr noundef %1, i32 noundef %261)
  %lcd_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 13
  %262 = ptrtoint ptr %lcd_on to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %lcd_on, align 4
  tail call fastcc void @aty128_set_lcd_enable(ptr noundef %1, i32 noundef %263)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end14.if.end24_crit_edge
  %accel_flags = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 3
  %264 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %accel_flags, align 4
  %and25 = and i32 %265, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aty128_init_engine(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %depth = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp2 = icmp eq i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %regno)
  %cmp3 = icmp ugt i32 %regno, 63
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp7 = icmp eq i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regno)
  %cmp9 = icmp ugt i32 %regno, 31
  %or.cond130 = and i1 %cmp9, %cmp7
  br i1 %or.cond130, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %shr = lshr i32 %red, 8
  %shr10 = lshr i32 %green, 8
  %shr11 = lshr i32 %blue, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp12 = icmp ult i32 %regno, 16
  br i1 %cmp12, label %if.then13, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then13:                                        ; preds = %if.end
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %4 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pseudo_palette, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %3, label %if.then13.if.end36_crit_edge [
    i32 15, label %sw.bb
    i32 16, label %sw.bb18
    i32 24, label %sw.bb24
    i32 32, label %sw.bb30
  ]

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw nsw i32 %regno, 10
  %shl16 = shl nuw nsw i32 %regno, 5
  %or = or i32 %shl16, %regno
  %or17 = or i32 %or, %shl
  br label %if.end36.sink.split

sw.bb18:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %shl19 = shl nuw nsw i32 %regno, 11
  %shl20 = shl nuw nsw i32 %regno, 6
  %or21 = or i32 %shl20, %regno
  %or22 = or i32 %or21, %shl19
  br label %if.end36.sink.split

sw.bb24:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %shl25 = shl nuw nsw i32 %regno, 16
  %shl26 = shl nuw nsw i32 %regno, 8
  %or27 = or i32 %shl26, %regno
  %or28 = or i32 %or27, %shl25
  br label %if.end36.sink.split

sw.bb30:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %shl31 = shl nuw nsw i32 %regno, 8
  %or32 = or i32 %shl31, %regno
  %shl33 = shl i32 %or32, 16
  %or34 = or i32 %shl33, %or32
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %sw.bb30, %sw.bb24, %sw.bb18, %sw.bb
  %or17.sink = phi i32 [ %or17, %sw.bb ], [ %or22, %sw.bb18 ], [ %or28, %sw.bb24 ], [ %or34, %sw.bb30 ]
  %arrayidx = getelementptr i32, ptr %5, i32 %regno
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or17.sink, ptr %arrayidx, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.then13.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp39 = icmp ne i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regno)
  %cmp41.not = icmp eq i32 %regno, 0
  %or.cond131 = or i1 %cmp41.not, %cmp39
  br i1 %or.cond131, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end36
  %conv = trunc i32 %shr10 to i8
  %arrayidx44 = getelementptr %struct.aty128fb_par, ptr %1, i32 0, i32 19, i32 %regno
  %10 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %regno)
  %cmp45 = icmp ult i32 %regno, 32
  br i1 %cmp45, label %if.then47, label %if.then42.if.end58_crit_edge

if.then42.if.end58_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %conv48 = trunc i32 %shr to i8
  %arrayidx50 = getelementptr %struct.aty128fb_par, ptr %1, i32 0, i32 18, i32 %regno
  %11 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv48, ptr %arrayidx50, align 1
  %conv51 = trunc i32 %shr11 to i8
  %arrayidx53 = getelementptr %struct.aty128fb_par, ptr %1, i32 0, i32 20, i32 %regno
  %12 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv51, ptr %arrayidx53, align 1
  %mul = shl nuw nsw i32 %regno, 3
  %mul55 = shl nuw nsw i32 %regno, 1
  %arrayidx56 = getelementptr %struct.aty128fb_par, ptr %1, i32 0, i32 19, i32 %mul55
  %13 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %14 to i32
  tail call fastcc void @aty128_st_pal(i32 noundef %mul, i32 noundef %shr, i32 noundef %conv57, i32 noundef %shr11, ptr noundef %1)
  br label %if.end58

if.end58:                                         ; preds = %if.then47, %if.then42.if.end58_crit_edge
  %div129 = lshr i32 %regno, 1
  %arrayidx60 = getelementptr %struct.aty128fb_par, ptr %1, i32 0, i32 18, i32 %div129
  %15 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %16 to i32
  %arrayidx64 = getelementptr %struct.aty128fb_par, ptr %1, i32 0, i32 20, i32 %div129
  %17 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %18 to i32
  %shl66 = shl nuw nsw i32 %regno, 2
  br label %if.end73

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %bpp = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp68 = icmp eq i32 %20, 16
  %shl71 = shl nuw nsw i32 %regno, 3
  %spec.select = select i1 %cmp68, i32 %shl71, i32 %regno
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.end58
  %red.addr.0 = phi i32 [ %conv61, %if.end58 ], [ %shr, %if.else ]
  %blue.addr.0 = phi i32 [ %conv65, %if.end58 ], [ %shr11, %if.else ]
  %regno.addr.0 = phi i32 [ %shl66, %if.end58 ], [ %spec.select, %if.else ]
  tail call fastcc void @aty128_st_pal(i32 noundef %regno.addr.0, i32 noundef %red.addr.0, i32 noundef %shr10, i32 noundef %blue.addr.0, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ 1, %lor.lhs.false4.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_blank(i32 noundef %blank, ptr nocapture noundef readonly %fb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %lock_blank = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %lock_blank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lock_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %asleep = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %switch.tableidx = add i32 %blank, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 117769732, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %state.0 = select i1 %6, i8 %switch.masked, i8 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %state.0) #11, !srcloc !273
  %chip_gen = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %chip_gen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %crt_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %crt_on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crt_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %tobool9.not = icmp eq i32 %blank, 0
  %phi.cast = zext i1 %tobool9.not to i32
  %13 = select i1 %tobool8.not, i32 0, i32 %phi.cast
  tail call fastcc void @aty128_set_crt_enable(ptr noundef %1, i32 noundef %13)
  %lcd_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %lcd_on to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lcd_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  %16 = select i1 %tobool10.not, i32 0, i32 %phi.cast
  tail call fastcc void @aty128_set_lcd_enable(ptr noundef %1, i32 noundef %16)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %fb) #2 align 64 {
entry:
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %h_total = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %h_total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_total, align 4
  %4 = lshr i32 %3, 13
  %add = and i32 %4, 2040
  %shl = add nuw nsw i32 %add, 8
  %xoffset6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %5 = ptrtoint ptr %xoffset6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xoffset6, align 4
  %add7 = add i32 %6, 7
  %and8 = and i32 %add7, -8
  %yoffset9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %7 = ptrtoint ptr %yoffset9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yoffset9, align 4
  %add10 = add i32 %shl, %and8
  %vxres = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %vxres to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vxres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %10)
  %cmp = icmp ugt i32 %add10, %10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v_total = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v_total, align 4
  %shr3 = lshr i32 %12, 16
  %and4 = and i32 %shr3, 2047
  %add5 = add i32 %8, 1
  %add12 = add i32 %add5, %and4
  %vyres = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %vyres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vyres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %14)
  %cmp14 = icmp ugt i32 %add12, %14
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %xoffset16 = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %xoffset16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and8, ptr %xoffset16, align 4
  %yoffset18 = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %yoffset18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %yoffset18, align 4
  %mul = mul i32 %10, %8
  %add21 = add i32 %mul, %and8
  %bpp = getelementptr inbounds %struct.aty128_crtc, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bpp, align 4
  %shr23 = lshr i32 %18, 3
  %mul24 = mul i32 %shr23, %add21
  %and25 = and i32 %mul24, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %18)
  %cmp28 = icmp eq i32 %18, 24
  %rem = urem i32 %and25, 3
  %mul30 = shl nuw nsw i32 %rem, 3
  %add31 = select i1 %cmp28, i32 %mul30, i32 0
  %offset.0 = add i32 %add31, %and25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %19 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 548, ptr %regindex.addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %offset.0) #11
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i, align 4
  %23 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_sync(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %blitter_may_be_busy = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blitter_may_be_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wait_for_idle(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128fb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1074020354, label %sw.bb
    i32 -2147205119, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %chip_gen = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %chip_gen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 2308) #11
  %5 = inttoptr i32 %arg to ptr
  %6 = tail call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !274
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1226833921) #11, !srcloc !277
  %asmresult = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %asmresult2 = extractvalue { i32, i32 } %9, 1
  %and = and i32 %asmresult2, 1
  %lcd_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %lcd_on to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %lcd_on, align 4
  %and7 = lshr i32 %asmresult2, 1
  %and7.lobit = and i32 %and7, 1
  %crt_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %crt_on to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7.lobit, ptr %crt_on, align 4
  %12 = and i32 %asmresult2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.then14, label %if.end5.if.end16_crit_edge

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %lcd_on to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %lcd_on, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end5.if.end16_crit_edge
  %15 = ptrtoint ptr %crt_on to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crt_on, align 4
  tail call fastcc void @aty128_set_crt_enable(ptr noundef %1, i32 noundef %16)
  %17 = ptrtoint ptr %lcd_on to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lcd_on, align 4
  tail call fastcc void @aty128_set_lcd_enable(ptr noundef %1, i32 noundef %18)
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %chip_gen20 = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %chip_gen20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip_gen20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp21.not = icmp eq i32 %20, 4
  br i1 %cmp21.not, label %if.end24, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  %crt_on25 = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %crt_on25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crt_on25, align 4
  %shl = shl i32 %22, 1
  %lcd_on26 = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %lcd_on26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lcd_on26, align 4
  %or = or i32 %shl, %24
  %25 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 2322) #11
  %26 = tail call i32 @llvm.read_register.i32(metadata !222) #11
  %and.i.i.i54 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i54 to ptr
  %cpu_domain.i.i55 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i55) #7, !srcloc !274
  %and.i56 = and i32 %28, -13
  %or.i57 = or i32 %and.i56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i57) #11, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %25, i32 %or, i32 -1226833921) #11, !srcloc !278
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sw.bb19.cleanup_crit_edge, %if.end16, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.end24 ], [ 0, %if.end16 ], [ -22, %sw.bb.cleanup_crit_edge ], [ %asmresult, %if.end.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aty128_decode_var(ptr nocapture noundef readonly %var, ptr nocapture noundef %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  %yres2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %2 = ptrtoint ptr %yres2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yres2.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %6 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres_virtual.i, align 4
  %xoffset3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset3.i, align 4
  %yoffset4.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %10 = ptrtoint ptr %yoffset4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yoffset4.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %12 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %14 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %left_margin.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %16 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %right_margin.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %18 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upper_margin.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %20 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lower_margin.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %22 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hsync_len.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %24 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vsync_len.i, align 4
  %sync5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %26 = ptrtoint ptr %sync5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sync5.i, align 4
  %vmode6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %28 = ptrtoint ptr %vmode6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vmode6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 16
  br i1 %cmp.not.i, label %if.else.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp7.i = icmp eq i32 %31, 6
  %cond.i = select i1 %cmp7.i, i32 16, i32 15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry.if.end.i_crit_edge
  %depth.0.i = phi i32 [ %cond.i, %if.else.i ], [ %13, %entry.if.end.i_crit_edge ]
  %and.i = and i32 %29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %add.i = add i32 %1, 7
  %and11.i = and i32 %add.i, -8
  %add12.i = add i32 %9, 7
  %and13.i = and i32 %add12.i, -8
  %add14.i = add i32 %and13.i, %and11.i
  %32 = tail call i32 @llvm.umax.i32(i32 %5, i32 %add14.i) #11
  %add19.i = add i32 %11, %3
  %33 = tail call i32 @llvm.umax.i32(i32 %7, i32 %add19.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %depth.0.i)
  %cmp.i.i = icmp ult i32 %depth.0.i, 9
  br i1 %cmp.i.i, label %if.end10.i.if.end27.i_crit_edge, label %if.else.i.i

if.end10.i.if.end27.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.else.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %depth.0.i)
  %cmp1.i.i = icmp ult i32 %depth.0.i, 16
  br i1 %cmp1.i.i, label %if.else.i.i.if.end27.i_crit_edge, label %if.else3.i.i

if.else.i.i.if.end27.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %depth.0.i)
  %cmp4.i.i = icmp eq i32 %depth.0.i, 16
  br i1 %cmp4.i.i, label %if.else3.i.i.if.end27.i_crit_edge, label %if.else6.i.i

if.else3.i.i.if.end27.i_crit_edge:                ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.else6.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %depth.0.i)
  %cmp7.i.i = icmp ult i32 %depth.0.i, 25
  br i1 %cmp7.i.i, label %if.else6.i.i.if.end27.i_crit_edge, label %if.else9.i.i

if.else6.i.i.if.end27.i_crit_edge:                ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.else9.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %depth.0.i)
  %cmp10.i.i = icmp ult i32 %depth.0.i, 33
  br i1 %cmp10.i.i, label %if.else9.i.i.if.end27.i_crit_edge, label %do.end.i

if.else9.i.i.if.end27.i_crit_edge:                ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

do.end.i:                                         ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #14
  br label %cleanup

if.end27.i:                                       ; preds = %if.else9.i.i.if.end27.i_crit_edge, %if.else6.i.i.if.end27.i_crit_edge, %if.else3.i.i.if.end27.i_crit_edge, %if.else.i.i.if.end27.i_crit_edge, %if.end10.i.if.end27.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 5, %if.else6.i.i.if.end27.i_crit_edge ], [ 4, %if.else3.i.i.if.end27.i_crit_edge ], [ 3, %if.else.i.i.if.end27.i_crit_edge ], [ 2, %if.end10.i.if.end27.i_crit_edge ], [ 6, %if.else9.i.i.if.end27.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x i8], ptr @__const.aty128_var_to_crtc.mode_bytpp, i32 0, i32 %retval.0.i.ph.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %35 to i32
  %mul.i = mul i32 %32, %33
  %mul28.i = mul i32 %mul.i, %conv.i
  %vram_size.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 6
  %36 = ptrtoint ptr %vram_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vram_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul28.i, i32 %37)
  %cmp29.i = icmp ugt i32 %mul28.i, %37
  br i1 %cmp29.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #14
  br label %cleanup

if.end37.i:                                       ; preds = %if.end27.i
  %add38.i = add i32 %15, %and11.i
  %add39.i = add i32 %add38.i, %17
  %add40.i = add i32 %add39.i, %23
  %shr41.i = lshr i32 %add40.i, 3
  %sub42.i = add nuw nsw i32 %shr41.i, 65535
  %and43.i = and i32 %sub42.i, 65535
  %add45.i = add i32 %3, 65535
  %add46.i = add i32 %add45.i, %19
  %add47.i = add i32 %add46.i, %21
  %sub48.i = add i32 %add47.i, %25
  %and49.i = and i32 %sub48.i, 65535
  %shr50.i = lshr i32 %and43.i, 3
  %38 = add nsw i32 %shr50.i, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %38)
  %cmp52.i = icmp ult i32 %38, -512
  %39 = add nsw i32 %and49.i, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %39)
  %cmp55.i = icmp ult i32 %39, -2048
  %or.cond.i = select i1 %cmp52.i, i1 true, i1 %cmp55.i
  br i1 %or.cond.i, label %do.end60.i, label %if.end

do.end60.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #14
  br label %cleanup

if.end:                                           ; preds = %if.end37.i
  %sub44.i = add i32 %3, -1
  %shr.i = lshr i32 %add.i, 3
  %sub.i = add nsw i32 %shr.i, -1
  %add64.i = add i32 %23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add64.i)
  %cmp66.i = icmp ult i32 %add64.i, 8
  %shr65.i = lshr i32 %add64.i, 3
  %40 = tail call i32 @llvm.umin.i32(i32 %shr65.i, i32 63) #11
  %phi.bo.i = shl nuw nsw i32 %40, 16
  %h_sync_wid.0.i = select i1 %cmp66.i, i32 65536, i32 %phi.bo.i
  %shl.i = shl i32 %sub.i, 3
  %add75.i = add i32 %17, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp76.i = icmp eq i32 %25, 0
  %41 = tail call i32 @llvm.umin.i32(i32 %25, i32 31) #11
  %phi.bo223.i = shl nuw nsw i32 %41, 16
  %v_sync_wid.0.i = select i1 %cmp76.i, i32 65536, i32 %phi.bo223.i
  %add85.i = add i32 %21, %sub44.i
  %and91.i = shl i32 %27, 1
  %42 = and i32 %and91.i, 16
  %shl94.i = shl nuw nsw i32 %retval.0.i.ph.i, 8
  %or.i = or i32 %shl94.i, %42
  %or95.i = or i32 %or.i, 50331648
  %shl96.i = shl i32 %sub.i, 16
  %or97.i = or i32 %and43.i, %shl96.i
  %shl99.i = shl i32 %sub44.i, 16
  %or100.i = or i32 %and49.i, %shl99.i
  %or103.i = or i32 %h_sync_wid.0.i, %add75.i
  %and86.i = shl i32 %27, 23
  %43 = and i32 %and86.i, 8388608
  %shl104.i = xor i32 %43, 8388608
  %or105.i = or i32 %or103.i, %shl104.i
  %or107.i = or i32 %v_sync_wid.0.i, %add85.i
  %44 = shl i32 %27, 22
  %45 = and i32 %44, 8388608
  %shl108.i = xor i32 %45, 8388608
  %or109.i = or i32 %or107.i, %shl108.i
  %shr110.i = lshr i32 %32, 3
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %46 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %activate.i, align 4
  %and111.i = and i32 %47, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %cmp112.i = icmp eq i32 %and111.i, 0
  %spec.select.i = select i1 %cmp112.i, i32 65536, i32 0
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %48 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pixclock, align 4
  %constants.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4
  %50 = ptrtoint ptr %constants.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %c.sroa.0.0.copyload.i = load i32, ptr %constants.i, align 4
  %c.sroa.5.0.constants.sroa_idx.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %c.sroa.5.0.constants.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %c.sroa.5.0.copyload.i = load i32, ptr %c.sroa.5.0.constants.sroa_idx.i, align 4
  %c.sroa.9.0.constants.sroa_idx.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %c.sroa.9.0.constants.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %c.sroa.9.0.copyload.i = load i32, ptr %c.sroa.9.0.constants.sroa_idx.i, align 4
  %c.sroa.13.0.constants.sroa_idx.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %c.sroa.13.0.constants.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %c.sroa.13.0.copyload.i = load i32, ptr %c.sroa.13.0.constants.sroa_idx.i, align 4
  %div.i = udiv i32 100000000, %49
  %54 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %c.sroa.9.0.copyload.i) #11
  %mul.i26 = mul nuw nsw i32 %54, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i26, i32 %c.sroa.5.0.copyload.i)
  %cmp2.i = icmp ult i32 %mul.i26, %c.sroa.5.0.copyload.i
  %div5.i = udiv i32 %c.sroa.5.0.copyload.i, 12
  %vclk.1.i = select i1 %cmp2.i, i32 %div5.i, i32 %54
  call void @__sanitizer_cov_trace_cmp4(i32 %vclk.1.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.i = icmp ult i32 %vclk.1.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %vclk.1.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.i = icmp ugt i32 %vclk.1.i, %c.sroa.9.0.copyload.i
  %or.cond.i27 = select i1 %cmp10.not.i, i1 true, i1 %cmp13.not.i
  br i1 %or.cond.i27, label %for.inc.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.i:                                        ; preds = %if.end
  %mul8.1.i = shl nuw nsw i32 %vclk.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.1.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.1.i = icmp ult i32 %mul8.1.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.1.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.1.i = icmp ugt i32 %mul8.1.i, %c.sroa.9.0.copyload.i
  %or.cond.1.i = select i1 %cmp10.not.1.i, i1 true, i1 %cmp13.not.1.i
  br i1 %or.cond.1.i, label %for.inc.1.i, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul8.2.i = shl nuw nsw i32 %vclk.1.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.2.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.2.i = icmp ult i32 %mul8.2.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.2.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.2.i = icmp ugt i32 %mul8.2.i, %c.sroa.9.0.copyload.i
  %or.cond.2.i = select i1 %cmp10.not.2.i, i1 true, i1 %cmp13.not.2.i
  br i1 %or.cond.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end4_crit_edge

for.inc.1.i.if.end4_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul8.3.i = shl nuw i32 %vclk.1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.3.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.3.i = icmp ult i32 %mul8.3.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.3.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.3.i = icmp ugt i32 %mul8.3.i, %c.sroa.9.0.copyload.i
  %or.cond.3.i = select i1 %cmp10.not.3.i, i1 true, i1 %cmp13.not.3.i
  br i1 %or.cond.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end4_crit_edge

for.inc.2.i.if.end4_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %mul8.4.i = mul nuw nsw i32 %vclk.1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.4.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.4.i = icmp ult i32 %mul8.4.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.4.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.4.i = icmp ugt i32 %mul8.4.i, %c.sroa.9.0.copyload.i
  %or.cond.4.i = select i1 %cmp10.not.4.i, i1 true, i1 %cmp13.not.4.i
  br i1 %or.cond.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end4_crit_edge

for.inc.3.i.if.end4_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %mul8.5.i = mul nuw nsw i32 %vclk.1.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.5.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.5.i = icmp ult i32 %mul8.5.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.5.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.5.i = icmp ugt i32 %mul8.5.i, %c.sroa.9.0.copyload.i
  %or.cond.5.i = select i1 %cmp10.not.5.i, i1 true, i1 %cmp13.not.5.i
  br i1 %or.cond.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end4_crit_edge

for.inc.4.i.if.end4_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %mul8.6.i = mul nuw i32 %vclk.1.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.6.i, i32 %c.sroa.5.0.copyload.i)
  %cmp10.not.6.i = icmp ult i32 %mul8.6.i, %c.sroa.5.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.6.i, i32 %c.sroa.9.0.copyload.i)
  %cmp13.not.6.i = icmp ugt i32 %mul8.6.i, %c.sroa.9.0.copyload.i
  %or.cond.6.i = select i1 %cmp10.not.6.i, i1 true, i1 %cmp13.not.6.i
  br i1 %or.cond.6.i, label %for.inc.5.i.cleanup_crit_edge, label %for.inc.5.i.if.end4_crit_edge

for.inc.5.i.if.end4_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.5.i.cleanup_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %for.inc.5.i.if.end4_crit_edge, %for.inc.4.i.if.end4_crit_edge, %for.inc.3.i.if.end4_crit_edge, %for.inc.2.i.if.end4_crit_edge, %for.inc.1.i.if.end4_crit_edge, %for.inc.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %.lcssa.i = phi i32 [ 1, %if.end.if.end4_crit_edge ], [ 2, %for.inc.i.if.end4_crit_edge ], [ 4, %for.inc.1.i.if.end4_crit_edge ], [ 8, %for.inc.2.i.if.end4_crit_edge ], [ 3, %for.inc.3.i.if.end4_crit_edge ], [ 6, %for.inc.4.i.if.end4_crit_edge ], [ 12, %for.inc.5.i.if.end4_crit_edge ]
  %mul8.lcssa.i = phi i32 [ %vclk.1.i, %if.end.if.end4_crit_edge ], [ %mul8.1.i, %for.inc.i.if.end4_crit_edge ], [ %mul8.2.i, %for.inc.1.i.if.end4_crit_edge ], [ %mul8.3.i, %for.inc.2.i.if.end4_crit_edge ], [ %mul8.4.i, %for.inc.3.i.if.end4_crit_edge ], [ %mul8.5.i, %for.inc.4.i.if.end4_crit_edge ], [ %mul8.6.i, %for.inc.5.i.if.end4_crit_edge ]
  %mul23.i = mul i32 %mul8.lcssa.i, %c.sroa.13.0.copyload.i
  %div2449.i = lshr i32 %c.sroa.0.0.copyload.i, 1
  %add.i28 = add i32 %mul23.i, %div2449.i
  %div25.i = udiv i32 %add.i28, %c.sroa.0.0.copyload.i
  %mem.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 8
  %55 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem.i, align 4
  %xclk1.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 4
  %57 = ptrtoint ptr %xclk1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xclk1.i, align 4
  %fifo_width3.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 5
  %59 = ptrtoint ptr %fifo_width3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fifo_width3.i, align 4
  %fifo_depth5.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 4, i32 6
  %61 = ptrtoint ptr %fifo_depth5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fifo_depth5.i, align 4
  %add.i30 = add nuw nsw i32 %depth.0.i, 7
  %and.i31 = and i32 %add.i30, -8
  %mul.i32 = mul i32 %60, %58
  %mul6.i = mul i32 %vclk.1.i, %and.i31
  %div85.i = lshr exact i32 %mul6.i, 1
  %add7.i = add i32 %mul.i32, %div85.i
  %div8.i = udiv i32 %add7.i, %mul6.i
  %MB.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %MB.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %MB.i, align 1
  %conv.i33 = zext i8 %64 to i32
  %mul9.i = shl nuw nsw i32 %conv.i33, 2
  %Trcd.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 2
  %65 = ptrtoint ptr %Trcd.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %Trcd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp.i = icmp ugt i8 %66, 2
  %conv10.i = zext i8 %66 to i32
  %67 = mul nuw nsw i32 %conv10.i, 3
  %phi.bo.i34 = add nsw i32 %67, -6
  %cond.i35 = select i1 %cmp.i, i32 %phi.bo.i34, i32 0
  %Trp.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 3
  %68 = ptrtoint ptr %Trp.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %Trp.i, align 1
  %conv17.i = zext i8 %69 to i32
  %mul18.i = shl nuw nsw i32 %conv17.i, 1
  %Twr.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 4
  %70 = ptrtoint ptr %Twr.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %Twr.i, align 4
  %conv20.i = zext i8 %71 to i32
  %CL.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 5
  %72 = ptrtoint ptr %CL.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %CL.i, align 1
  %conv22.i = zext i8 %73 to i32
  %Tr2w.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 6
  %74 = ptrtoint ptr %Tr2w.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %Tr2w.i, align 2
  %conv24.i = zext i8 %75 to i32
  %add16.i = add i32 %mul9.i, %div8.i
  %add19.i36 = add i32 %add16.i, %mul18.i
  %add21.i = add i32 %add19.i36, %conv20.i
  %add23.i = add i32 %add21.i, %cond.i35
  %add25.i = add i32 %add23.i, %conv22.i
  %add26.i = add i32 %add25.i, %conv24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i, i32 %add7.i)
  %tobool.not87.i = icmp ugt i32 %mul6.i, %add7.i
  br i1 %tobool.not87.i, label %if.end4.while.end.i_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.while.end.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end4.while.body.i_crit_edge
  %b.089.i = phi i32 [ %phi.bo86.i, %while.body.i.while.body.i_crit_edge ], [ 1, %if.end4.while.body.i_crit_edge ]
  %x.088.i = phi i32 [ %shr.i37, %while.body.i.while.body.i_crit_edge ], [ %div8.i, %if.end4.while.body.i_crit_edge ]
  %shr.i37 = ashr i32 %x.088.i, 1
  %phi.bo86.i = add i32 %b.089.i, 1
  %tobool.not.i = icmp ult i32 %x.088.i, 2
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end4.while.end.i_crit_edge
  %b.0.lcssa.i = phi i32 [ 1, %if.end4.while.end.i_crit_edge ], [ %phi.bo86.i, %while.body.i.while.end.i_crit_edge ]
  %sub28.i = sub i32 11, %b.0.lcssa.i
  %shl.i38 = shl i32 %add26.i, %sub28.i
  %shl30.i = shl i32 %mul.i32, %sub28.i
  %add32.i = add i32 %shl30.i, %div85.i
  %div33.i = udiv i32 %add32.i, %mul6.i
  %sub34.i = add i32 %62, -4
  %mul35.i = mul i32 %div33.i, %sub34.i
  %Rloop.i = getelementptr inbounds %struct.aty128_meminfo, ptr %56, i32 0, i32 9
  %76 = ptrtoint ptr %Rloop.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %Rloop.i, align 1
  %conv36.i = zext i8 %77 to i32
  %add37.i = add i32 %shl.i38, %conv36.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i, i32 %mul35.i)
  %cmp38.not.i = icmp slt i32 %add37.i, %mul35.i
  br i1 %cmp38.not.i, label %if.end8, label %aty128_ddafifo.exit

aty128_ddafifo.exit:                              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #14
  br label %cleanup

if.end8:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl40.i = shl i32 %b.0.lcssa.i, 16
  %shl43.i = shl nuw nsw i32 %conv36.i, 20
  %or.i40 = or i32 %div33.i, %shl40.i
  %or44.i = or i32 %or.i40, %shl43.i
  %shl45.i = shl i32 %shl.i38, 16
  %or46.i = or i32 %shl45.i, %mul35.i
  %78 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or95.i, ptr %par, align 4
  %crtc.sroa.5.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 4
  %79 = ptrtoint ptr %crtc.sroa.5.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or97.i, ptr %crtc.sroa.5.0.par.sroa_idx, align 4
  %crtc.sroa.6.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 8
  %80 = ptrtoint ptr %crtc.sroa.6.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or105.i, ptr %crtc.sroa.6.0.par.sroa_idx, align 4
  %crtc.sroa.7.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 12
  %81 = ptrtoint ptr %crtc.sroa.7.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or100.i, ptr %crtc.sroa.7.0.par.sroa_idx, align 4
  %crtc.sroa.8.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 16
  %82 = ptrtoint ptr %crtc.sroa.8.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or109.i, ptr %crtc.sroa.8.0.par.sroa_idx, align 4
  %crtc.sroa.9.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 20
  %83 = ptrtoint ptr %crtc.sroa.9.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shr110.i, ptr %crtc.sroa.9.0.par.sroa_idx, align 4
  %crtc.sroa.10.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 24
  %84 = ptrtoint ptr %crtc.sroa.10.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %crtc.sroa.10.0.par.sroa_idx, align 4
  %crtc.sroa.11.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 28
  %85 = ptrtoint ptr %crtc.sroa.11.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select.i, ptr %crtc.sroa.11.0.par.sroa_idx, align 4
  %crtc.sroa.12.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 32
  %86 = ptrtoint ptr %crtc.sroa.12.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and13.i, ptr %crtc.sroa.12.0.par.sroa_idx, align 4
  %crtc.sroa.13.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 36
  %87 = ptrtoint ptr %crtc.sroa.13.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %11, ptr %crtc.sroa.13.0.par.sroa_idx, align 4
  %crtc.sroa.14.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 40
  %88 = ptrtoint ptr %crtc.sroa.14.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %32, ptr %crtc.sroa.14.0.par.sroa_idx, align 4
  %crtc.sroa.15.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 44
  %89 = ptrtoint ptr %crtc.sroa.15.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %33, ptr %crtc.sroa.15.0.par.sroa_idx, align 4
  %crtc.sroa.16.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 48
  %90 = ptrtoint ptr %crtc.sroa.16.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %depth.0.i, ptr %crtc.sroa.16.0.par.sroa_idx, align 4
  %crtc.sroa.18.0.par.sroa_idx = getelementptr inbounds i8, ptr %par, i32 52
  %91 = ptrtoint ptr %crtc.sroa.18.0.par.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %13, ptr %crtc.sroa.18.0.par.sroa_idx, align 4
  %pll10 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 1
  %92 = ptrtoint ptr %pll10 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.lcssa.i, ptr %pll10, align 4
  %pll.sroa.5.0.pll10.sroa_idx = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %pll.sroa.5.0.pll10.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div25.i, ptr %pll.sroa.5.0.pll10.sroa_idx, align 4
  %pll.sroa.7.0.pll10.sroa_idx = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %pll.sroa.7.0.pll10.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %vclk.1.i, ptr %pll.sroa.7.0.pll10.sroa_idx, align 4
  %fifo_reg11 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 2
  %fifo_reg.sroa.5.0.insert.ext = zext i32 %or46.i to i64
  %fifo_reg.sroa.0.0.insert.ext = zext i32 %or44.i to i64
  %fifo_reg.sroa.0.0.insert.shift = shl nuw i64 %fifo_reg.sroa.0.0.insert.ext, 32
  %fifo_reg.sroa.0.0.insert.insert = or i64 %fifo_reg.sroa.0.0.insert.shift, %fifo_reg.sroa.5.0.insert.ext
  %95 = ptrtoint ptr %fifo_reg11 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 %fifo_reg.sroa.0.0.insert.insert, ptr %fifo_reg11, align 4
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %96 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %accel_flags, align 4
  %accel_flags12 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 3
  %98 = ptrtoint ptr %accel_flags12 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %accel_flags12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %aty128_ddafifo.exit, %for.inc.5.i.cleanup_crit_edge, %do.end60.i, %do.end34.i, %do.end.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %aty128_ddafifo.exit ], [ -22, %for.inc.5.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end34.i ], [ -22, %do.end60.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_idle(ptr nocapture noundef %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i12.i = alloca i32, align 4
  %regindex.addr.i8.i = alloca i32, align 4
  %regindex.addr.i.i7 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  %regindex.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %fifo_slots.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 11
  br label %for.body.i

for.cond1.i:                                      ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond1.i.for.body.i.backedge_crit_edge

for.cond1.i.for.body.i.backedge_crit_edge:        ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.end.i, %for.cond1.i.for.body.i.backedge_crit_edge
  %i.01.i.be = phi i32 [ %inc.i, %for.cond1.i.for.body.i.backedge_crit_edge ], [ 0, %for.end.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %i.01.i.be, %for.body.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %0 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 5952, ptr %regindex.addr.i.i, align 4
  %1 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i = load volatile i32, ptr %regindex.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %4 = and i32 %3, -15794176
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %6 = ptrtoint ptr %fifo_slots.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fifo_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %5)
  %cmp3.i = icmp ugt i32 %5, 63
  br i1 %cmp3.i, label %for.body.i.for.body_crit_edge, label %for.cond1.i

for.body.i.for.body_crit_edge:                    ; preds = %for.body.i
  br label %for.body

for.end.i:                                        ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aty128_reset_engine(ptr noundef %par) #11
  br label %for.body.i.backedge

for.cond1:                                        ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 2000000
  br i1 %exitcond.not, label %for.end, label %for.cond1.for.body.backedge_crit_edge

for.cond1.for.body.backedge_crit_edge:            ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.end, %for.cond1.for.body.backedge_crit_edge
  %i.015.be = phi i32 [ %inc, %for.cond1.for.body.backedge_crit_edge ], [ 0, %for.end ]
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.i.for.body_crit_edge
  %i.015 = phi i32 [ %i.015.be, %for.body.backedge ], [ 0, %for.body.i.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %7 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 5952, ptr %regindex.addr.i, align 4
  %8 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %.mask = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.then, label %for.cond1

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i7)
  %11 = ptrtoint ptr %regindex.addr.i.i7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 388, ptr %regindex.addr.i.i7, align 4
  %12 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i.i7.0.regindex.addr.i.i7.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i9 = load volatile i32, ptr %regindex.addr.i.i7, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %13, i32 %regindex.addr.i.i7.0.regindex.addr.i.i7.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i7)
  %15 = or i32 %14, -16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i8.i)
  %16 = ptrtoint ptr %regindex.addr.i8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 388, ptr %regindex.addr.i8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i.i, align 4
  %19 = ptrtoint ptr %regindex.addr.i8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %regindex.addr.i8.i.0.regindex.addr.i8.i.0.regindex.addr.i8.0.regindex.addr.i8.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i10.i = load volatile i32, ptr %regindex.addr.i8.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %18, i32 %regindex.addr.i8.i.0.regindex.addr.i8.i.0.regindex.addr.i8.0.regindex.addr.i8.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %15) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i8.i)
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %if.then
  %i.016.i = phi i32 [ 0, %if.then ], [ %inc.i11, %for.body.i13.for.body.i13_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i12.i)
  %20 = ptrtoint ptr %regindex.addr.i12.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 388, ptr %regindex.addr.i12.i, align 4
  %21 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i12.i.0.regindex.addr.i12.i.0.regindex.addr.i12.0.regindex.addr.i12.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i14.i = load volatile i32, ptr %regindex.addr.i12.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %22, i32 %regindex.addr.i12.i.0.regindex.addr.i12.i.0.regindex.addr.i12.0.regindex.addr.i12.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i14.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i12.i)
  %.mask.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  %inc.i11 = add nuw nsw i32 %i.016.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc.i11)
  %exitcond.not.i12 = icmp eq i32 %inc.i11, 2000000
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i12
  br i1 %or.cond.i, label %aty128_flush_pixel_cache.exit, label %for.body.i13.for.body.i13_crit_edge

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i13

aty128_flush_pixel_cache.exit:                    ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  %blitter_may_be_busy = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 10
  %24 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %blitter_may_be_busy, align 4
  ret void

for.end:                                          ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @aty128_reset_engine(ptr noundef %par)
  br label %for.body.backedge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_set_crt_enable(ptr nocapture noundef readonly %par, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i25 = alloca i32, align 4
  %regindex.addr.i21 = alloca i32, align 4
  %regindex.addr.i17 = alloca i32, align 4
  %regindex.addr.i13 = alloca i32, align 4
  %regindex.addr.i9 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %0 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 84, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %1 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %4 = or i32 %3, 8388608
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i9)
  %5 = ptrtoint ptr %regindex.addr.i9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 84, ptr %regindex.addr.i9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i, align 4
  %8 = ptrtoint ptr %regindex.addr.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %regindex.addr.i9.0.regindex.addr.i9.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i11 = load volatile i32, ptr %regindex.addr.i9, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 %regindex.addr.i9.0.regindex.addr.i9.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %4) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i13)
  %9 = ptrtoint ptr %regindex.addr.i13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 88, ptr %regindex.addr.i13, align 4
  %10 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i13.0.regindex.addr.i13.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i15 = load volatile i32, ptr %regindex.addr.i13, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 %regindex.addr.i13.0.regindex.addr.i13.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i15
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i13)
  %13 = or i32 %12, 1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i17)
  %14 = ptrtoint ptr %regindex.addr.i17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 88, ptr %regindex.addr.i17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase.i, align 4
  %17 = ptrtoint ptr %regindex.addr.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %regindex.addr.i17.0.regindex.addr.i17.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i19 = load volatile i32, ptr %regindex.addr.i17, align 4
  %add.ptr.i20 = getelementptr i8, ptr %16, i32 %regindex.addr.i17.0.regindex.addr.i17.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %13) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i17)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i21)
  %18 = ptrtoint ptr %regindex.addr.i21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 84, ptr %regindex.addr.i21, align 4
  %regbase.i22 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %19 = ptrtoint ptr %regbase.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i22, align 4
  %regindex.addr.i21.0.regindex.addr.i21.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i23 = load volatile i32, ptr %regindex.addr.i21, align 4
  %add.ptr.i24 = getelementptr i8, ptr %20, i32 %regindex.addr.i21.0.regindex.addr.i21.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i23
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i21)
  %22 = and i32 %21, -8388609
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i25)
  %23 = ptrtoint ptr %regindex.addr.i25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 84, ptr %regindex.addr.i25, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %regbase.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i22, align 4
  %26 = ptrtoint ptr %regindex.addr.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %regindex.addr.i25.0.regindex.addr.i25.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i27 = load volatile i32, ptr %regindex.addr.i25, align 4
  %add.ptr.i28 = getelementptr i8, ptr %25, i32 %regindex.addr.i25.0.regindex.addr.i25.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %22) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_set_lcd_enable(ptr nocapture noundef readonly %par, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i44 = alloca i32, align 4
  %regindex.addr.i40 = alloca i32, align 4
  %regindex.addr.i36 = alloca i32, align 4
  %regindex.addr.i18 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 14
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %4 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 720, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %5 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %8 = and i32 %7, 2097148927
  %9 = or i32 %8, -2130703360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i18)
  %10 = ptrtoint ptr %regindex.addr.i18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 720, ptr %regindex.addr.i18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i, align 4
  %13 = ptrtoint ptr %regindex.addr.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %regindex.addr.i18.0.regindex.addr.i18.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i20 = load volatile i32, ptr %regindex.addr.i18, align 4
  %add.ptr.i21 = getelementptr i8, ptr %12, i32 %regindex.addr.i18.0.regindex.addr.i18.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %9) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i18)
  %bl_dev.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bl_dev.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %power2.i = getelementptr inbounds %struct.backlight_properties, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %power2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %power2.i, align 8
  %17 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bl_dev.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %18, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #11
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.then.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %22(ptr noundef %18) #11
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.then.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %bl_dev.i22 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %bl_dev.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bl_dev.i22, align 4
  %tobool.not.i23 = icmp eq ptr %24, null
  br i1 %tobool.not.i23, label %if.else.aty128_bl_set_power.exit35_crit_edge, label %if.then.i28

if.else.aty128_bl_set_power.exit35_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128_bl_set_power.exit35

if.then.i28:                                      ; preds = %if.else
  %power2.i24 = getelementptr inbounds %struct.backlight_properties, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %power2.i24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %power2.i24, align 8
  %26 = ptrtoint ptr %bl_dev.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bl_dev.i22, align 4
  %update_lock.i.i25 = getelementptr inbounds %struct.backlight_device, ptr %27, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i25, i32 noundef 0) #11
  %ops.i.i26 = getelementptr inbounds %struct.backlight_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i26, align 4
  %tobool.not.i.i27 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i27, label %if.then.i28.backlight_update_status.exit.i34_crit_edge, label %land.lhs.true.i.i31

if.then.i28.backlight_update_status.exit.i34_crit_edge: ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit.i34

land.lhs.true.i.i31:                              ; preds = %if.then.i28
  %update_status.i.i29 = getelementptr inbounds %struct.backlight_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %update_status.i.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %update_status.i.i29, align 4
  %tobool2.not.i.i30 = icmp eq ptr %31, null
  br i1 %tobool2.not.i.i30, label %land.lhs.true.i.i31.backlight_update_status.exit.i34_crit_edge, label %if.then.i.i33

land.lhs.true.i.i31.backlight_update_status.exit.i34_crit_edge: ; preds = %land.lhs.true.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit.i34

if.then.i.i33:                                    ; preds = %land.lhs.true.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i32 = tail call i32 %31(ptr noundef %27) #11
  br label %backlight_update_status.exit.i34

backlight_update_status.exit.i34:                 ; preds = %if.then.i.i33, %land.lhs.true.i.i31.backlight_update_status.exit.i34_crit_edge, %if.then.i28.backlight_update_status.exit.i34_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i25) #11
  br label %aty128_bl_set_power.exit35

aty128_bl_set_power.exit35:                       ; preds = %backlight_update_status.exit.i34, %if.else.aty128_bl_set_power.exit35_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i36)
  %32 = ptrtoint ptr %regindex.addr.i36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 720, ptr %regindex.addr.i36, align 4
  %regbase.i37 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %33 = ptrtoint ptr %regbase.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i37, align 4
  %regindex.addr.i36.0.regindex.addr.i36.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i38 = load volatile i32, ptr %regindex.addr.i36, align 4
  %add.ptr.i39 = getelementptr i8, ptr %34, i32 %regindex.addr.i36.0.regindex.addr.i36.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i38
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i36)
  %36 = or i32 %35, 33554432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i40)
  %37 = ptrtoint ptr %regindex.addr.i40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 720, ptr %regindex.addr.i40, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %regbase.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regbase.i37, align 4
  %40 = ptrtoint ptr %regindex.addr.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %regindex.addr.i40.0.regindex.addr.i40.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i42 = load volatile i32, ptr %regindex.addr.i40, align 4
  %add.ptr.i43 = getelementptr i8, ptr %39, i32 %regindex.addr.i40.0.regindex.addr.i40.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %36) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i40)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %aty128_bl_set_power.exit35
  %__ms.048 = phi i32 [ 100, %aty128_bl_set_power.exit35 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.048, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #11
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %42 = and i32 %36, -16777217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i44)
  %43 = ptrtoint ptr %regindex.addr.i44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 720, ptr %regindex.addr.i44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %regbase.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regbase.i37, align 4
  %46 = ptrtoint ptr %regindex.addr.i44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %regindex.addr.i44.0.regindex.addr.i44.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i46 = load volatile i32, ptr %regindex.addr.i44, align 4
  %add.ptr.i47 = getelementptr i8, ptr %45, i32 %regindex.addr.i44.0.regindex.addr.i44.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %42) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i44)
  br label %if.end

if.end:                                           ; preds = %while.end, %backlight_update_status.exit.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_reset_engine(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i63 = alloca i32, align 4
  %regindex.addr.i59 = alloca i32, align 4
  %regindex.addr.i55 = alloca i32, align 4
  %regindex.addr.i.i50 = alloca i32, align 4
  %regindex.addr.i46 = alloca i32, align 4
  %regindex.addr.i42 = alloca i32, align 4
  %regindex.addr.i38 = alloca i32, align 4
  %regindex.addr.i34 = alloca i32, align 4
  %regindex.addr.i30 = alloca i32, align 4
  %regindex.addr.i.i25 = alloca i32, align 4
  %regindex.addr.i.i21 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  %regindex.addr.i12.i = alloca i32, align 4
  %regindex.addr.i8.i = alloca i32, align 4
  %regindex.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %0 = ptrtoint ptr %regindex.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 388, ptr %regindex.addr.i.i, align 4
  %regbase.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %1 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i = load volatile i32, ptr %regindex.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %regindex.addr.i.i.0.regindex.addr.i.i.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i)
  %4 = or i32 %3, -16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i8.i)
  %5 = ptrtoint ptr %regindex.addr.i8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 388, ptr %regindex.addr.i8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i.i, align 4
  %8 = ptrtoint ptr %regindex.addr.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %regindex.addr.i8.i.0.regindex.addr.i8.i.0.regindex.addr.i8.0.regindex.addr.i8.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i10.i = load volatile i32, ptr %regindex.addr.i8.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %7, i32 %regindex.addr.i8.i.0.regindex.addr.i8.i.0.regindex.addr.i8.0.regindex.addr.i8.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %4) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i8.i)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i12.i)
  %9 = ptrtoint ptr %regindex.addr.i12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 388, ptr %regindex.addr.i12.i, align 4
  %10 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i12.i.0.regindex.addr.i12.i.0.regindex.addr.i12.0.regindex.addr.i12.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i14.i = load volatile i32, ptr %regindex.addr.i12.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %11, i32 %regindex.addr.i12.i.0.regindex.addr.i12.i.0.regindex.addr.i12.0.regindex.addr.i12.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i14.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i12.i)
  %.mask.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  %inc.i = add nuw nsw i32 %i.016.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 2000000
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %aty128_flush_pixel_cache.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

aty128_flush_pixel_cache.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %13 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 8, ptr %regindex.addr.i, align 4
  %14 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23, i8 15) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i21)
  %19 = ptrtoint ptr %regindex.addr.i.i21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 12, ptr %regindex.addr.i.i21, align 4
  %20 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i.i21.0.regindex.addr.i.i21.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i24 = load volatile i32, ptr %regindex.addr.i.i21, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %21, i32 %regindex.addr.i.i21.0.regindex.addr.i.i21.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i21)
  %23 = or i32 %22, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i27, i8 -113) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i25)
  %26 = ptrtoint ptr %regindex.addr.i.i25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 12, ptr %regindex.addr.i.i25, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regbase.i.i, align 4
  %29 = ptrtoint ptr %regindex.addr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %regindex.addr.i.i25.0.regindex.addr.i.i25.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i28 = load volatile i32, ptr %regindex.addr.i.i25, align 4
  %add.ptr.i3.i29 = getelementptr i8, ptr %28, i32 %regindex.addr.i.i25.0.regindex.addr.i.i25.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i29, i32 %23) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i30)
  %30 = ptrtoint ptr %regindex.addr.i30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 240, ptr %regindex.addr.i30, align 4
  %31 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i30.0.regindex.addr.i30.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i32 = load volatile i32, ptr %regindex.addr.i30, align 4
  %add.ptr.i33 = getelementptr i8, ptr %32, i32 %regindex.addr.i30.0.regindex.addr.i30.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #11, !srcloc !232
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i30)
  %or3 = or i32 %34, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i34)
  %35 = ptrtoint ptr %regindex.addr.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 240, ptr %regindex.addr.i34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %36 = tail call i32 @llvm.bswap.i32(i32 %or3) #11
  %37 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase.i.i, align 4
  %39 = ptrtoint ptr %regindex.addr.i34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %regindex.addr.i34.0.regindex.addr.i34.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i36 = load volatile i32, ptr %regindex.addr.i34, align 4
  %add.ptr.i37 = getelementptr i8, ptr %38, i32 %regindex.addr.i34.0.regindex.addr.i34.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %36) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i38)
  %40 = ptrtoint ptr %regindex.addr.i38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 240, ptr %regindex.addr.i38, align 4
  %41 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i38.0.regindex.addr.i38.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i40 = load volatile i32, ptr %regindex.addr.i38, align 4
  %add.ptr.i41 = getelementptr i8, ptr %42, i32 %regindex.addr.i38.0.regindex.addr.i38.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i38)
  %and = and i32 %34, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i42)
  %44 = ptrtoint ptr %regindex.addr.i42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 240, ptr %regindex.addr.i42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %45 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %46 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regbase.i.i, align 4
  %48 = ptrtoint ptr %regindex.addr.i42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %regindex.addr.i42.0.regindex.addr.i42.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i44 = load volatile i32, ptr %regindex.addr.i42, align 4
  %add.ptr.i45 = getelementptr i8, ptr %47, i32 %regindex.addr.i42.0.regindex.addr.i42.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %45) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i46)
  %49 = ptrtoint ptr %regindex.addr.i46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 240, ptr %regindex.addr.i46, align 4
  %50 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regbase.i.i, align 4
  %regindex.addr.i46.0.regindex.addr.i46.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i48 = load volatile i32, ptr %regindex.addr.i46, align 4
  %add.ptr.i49 = getelementptr i8, ptr %51, i32 %regindex.addr.i46.0.regindex.addr.i46.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i48
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 -113) #11, !srcloc !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i.i50)
  %55 = ptrtoint ptr %regindex.addr.i.i50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 12, ptr %regindex.addr.i.i50, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regbase.i.i, align 4
  %58 = ptrtoint ptr %regindex.addr.i.i50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %regindex.addr.i.i50.0.regindex.addr.i.i50.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i53 = load volatile i32, ptr %regindex.addr.i.i50, align 4
  %add.ptr.i3.i54 = getelementptr i8, ptr %57, i32 %regindex.addr.i.i50.0.regindex.addr.i.i50.0.regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i54, i32 %22) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i55)
  %59 = ptrtoint ptr %regindex.addr.i55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 8, ptr %regindex.addr.i55, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regbase.i.i, align 4
  %62 = ptrtoint ptr %regindex.addr.i55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %regindex.addr.i55.0.regindex.addr.i55.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i57 = load volatile i32, ptr %regindex.addr.i55, align 4
  %add.ptr.i58 = getelementptr i8, ptr %61, i32 %regindex.addr.i55.0.regindex.addr.i55.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %16) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i59)
  %63 = ptrtoint ptr %regindex.addr.i59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 240, ptr %regindex.addr.i59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regbase.i.i, align 4
  %66 = ptrtoint ptr %regindex.addr.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %regindex.addr.i59.0.regindex.addr.i59.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i61 = load volatile i32, ptr %regindex.addr.i59, align 4
  %add.ptr.i62 = getelementptr i8, ptr %65, i32 %regindex.addr.i59.0.regindex.addr.i59.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %33) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i63)
  %67 = ptrtoint ptr %regindex.addr.i63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1796, ptr %regindex.addr.i63, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regbase.i.i, align 4
  %70 = ptrtoint ptr %regindex.addr.i63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %regindex.addr.i63.0.regindex.addr.i63.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i65 = load volatile i32, ptr %regindex.addr.i63, align 4
  %add.ptr.i66 = getelementptr i8, ptr %69, i32 %regindex.addr.i63.0.regindex.addr.i63.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 0) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i63)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty128_st_pal(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  %regindex.addr.i13 = alloca i32, align 4
  %regindex.addr.i7 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_gen = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 7
  %0 = ptrtoint ptr %chip_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %2 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 88, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %3 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %6 = and i32 %5, -536870913
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i7)
  %7 = ptrtoint ptr %regindex.addr.i7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 88, ptr %regindex.addr.i7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase.i, align 4
  %10 = ptrtoint ptr %regindex.addr.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %regindex.addr.i7.0.regindex.addr.i7.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i9 = load volatile i32, ptr %regindex.addr.i7, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 %regindex.addr.i7.0.regindex.addr.i7.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %6) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = trunc i32 %regno to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %regbase.i11 = getelementptr inbounds %struct.aty128fb_par, ptr %par, i32 0, i32 5
  %11 = ptrtoint ptr %regbase.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %12, i32 176
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 %conv) #11, !srcloc !273
  %shl = shl i32 %red, 16
  %shl1 = shl i32 %green, 8
  %or = or i32 %shl1, %shl
  %or2 = or i32 %or, %blue
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i13)
  %13 = ptrtoint ptr %regindex.addr.i13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 180, ptr %regindex.addr.i13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or2) #11
  %15 = ptrtoint ptr %regbase.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase.i11, align 4
  %17 = ptrtoint ptr %regindex.addr.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %regindex.addr.i13.0.regindex.addr.i13.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i15 = load volatile i32, ptr %regindex.addr.i13, align 4
  %add.ptr.i16 = getelementptr i8, ptr %16, i32 %regindex.addr.i13.0.regindex.addr.i13.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %14) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i13)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_bl_default_curve(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128_bl_update_status(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  %regindex.addr.i89 = alloca i32, align 4
  %regindex.addr.i85 = alloca i32, align 4
  %regindex.addr.i81 = alloca i32, align 4
  %regindex.addr.i73 = alloca i32, align 4
  %regindex.addr.i69 = alloca i32, align 4
  %regindex.addr.i65 = alloca i32, align 4
  %regindex.addr.i61 = alloca i32, align 4
  %regindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i)
  %2 = ptrtoint ptr %regindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 720, ptr %regindex.addr.i, align 4
  %regbase.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i = load volatile i32, ptr %regindex.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %regindex.addr.i.0.regindex.addr.i.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !232
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i)
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.else21_crit_edge

entry.if.else21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

lor.lhs.false:                                    ; preds = %entry
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 3
  %9 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.not = icmp eq i32 %10, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false.if.else21_crit_edge

lor.lhs.false.if.else21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %lcd_on = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %lcd_on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lcd_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false4.if.else21_crit_edge, label %if.end

lor.lhs.false4.if.else21_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.end:                                           ; preds = %lor.lhs.false4
  %13 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp sgt i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.else21_crit_edge

if.end.if.else21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.then7:                                         ; preds = %if.end
  %or8 = or i32 %6, 851968
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %and11 = and i32 %or8, -524289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i61)
  %15 = ptrtoint ptr %regindex.addr.i61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 720, ptr %regindex.addr.i61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %and11) #11
  %17 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase.i, align 4
  %19 = ptrtoint ptr %regindex.addr.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %regindex.addr.i61.0.regindex.addr.i61.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i63 = load volatile i32, ptr %regindex.addr.i61, align 4
  %add.ptr.i64 = getelementptr i8, ptr %18, i32 %regindex.addr.i61.0.regindex.addr.i61.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %16) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i61)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i65)
  %20 = ptrtoint ptr %regindex.addr.i65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 720, ptr %regindex.addr.i65, align 4
  %21 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i65.0.regindex.addr.i65.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i67 = load volatile i32, ptr %regindex.addr.i65, align 4
  %add.ptr.i68 = getelementptr i8, ptr %22, i32 %regindex.addr.i65.0.regindex.addr.i65.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i67
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i65)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i69)
  %34 = ptrtoint ptr %regindex.addr.i69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 720, ptr %regindex.addr.i69, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %or8) #11
  %36 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regbase.i, align 4
  %38 = ptrtoint ptr %regindex.addr.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %regindex.addr.i69.0.regindex.addr.i69.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i71 = load volatile i32, ptr %regindex.addr.i69, align 4
  %add.ptr.i72 = getelementptr i8, ptr %37, i32 %regindex.addr.i69.0.regindex.addr.i69.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %35) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i69)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then7.if.end15_crit_edge
  %and16 = and i32 %or8, -65412
  %pdev.i = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 8
  %41 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.fb_info, ptr %42, i32 0, i32 17, i32 %14
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %45 = xor i8 %44, -1
  %sub.i = zext i8 %45 to i32
  %shl = shl nuw nsw i32 %sub.i, 8
  %or18 = or i32 %shl, %and16
  %or19 = or i32 %or18, 129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i73)
  %46 = ptrtoint ptr %regindex.addr.i73 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 720, ptr %regindex.addr.i73, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %or19) #11
  %48 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regbase.i, align 4
  %50 = ptrtoint ptr %regindex.addr.i73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %regindex.addr.i73.0.regindex.addr.i73.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i75 = load volatile i32, ptr %regindex.addr.i73, align 4
  %add.ptr.i76 = getelementptr i8, ptr %49, i32 %regindex.addr.i73.0.regindex.addr.i73.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %47) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i73)
  br label %if.end29

if.else21:                                        ; preds = %if.end.if.else21_crit_edge, %lor.lhs.false4.if.else21_crit_edge, %lor.lhs.false.if.else21_crit_edge, %entry.if.else21_crit_edge
  %or = and i32 %6, -655107
  %pdev.i77 = getelementptr inbounds %struct.aty128fb_par, ptr %1, i32 0, i32 14
  %51 = ptrtoint ptr %pdev.i77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i77, align 4
  %driver_data.i.i.i78 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i78, align 4
  %arrayidx.i79 = getelementptr %struct.fb_info, ptr %54, i32 0, i32 17, i32 0
  %55 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i79, align 1
  %57 = xor i8 %56, -1
  %sub.i80 = zext i8 %57 to i32
  %shl24 = shl nuw nsw i32 %sub.i80, 8
  %and22 = or i32 %shl24, %or
  %or26 = or i32 %and22, 589826
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i81)
  %58 = ptrtoint ptr %regindex.addr.i81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 720, ptr %regindex.addr.i81, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %or26) #11
  %60 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regbase.i, align 4
  %62 = ptrtoint ptr %regindex.addr.i81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %regindex.addr.i81.0.regindex.addr.i81.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i83 = load volatile i32, ptr %regindex.addr.i81, align 4
  %add.ptr.i84 = getelementptr i8, ptr %61, i32 %regindex.addr.i81.0.regindex.addr.i81.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %59) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i85)
  %63 = ptrtoint ptr %regindex.addr.i85 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 720, ptr %regindex.addr.i85, align 4
  %64 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regbase.i, align 4
  %regindex.addr.i85.0.regindex.addr.i85.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i87 = load volatile i32, ptr %regindex.addr.i85, align 4
  %add.ptr.i88 = getelementptr i8, ptr %65, i32 %regindex.addr.i85.0.regindex.addr.i85.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i87
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i85)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #11
  %and28 = and i32 %or26, -786562
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regindex.addr.i89)
  %68 = ptrtoint ptr %regindex.addr.i89 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 720, ptr %regindex.addr.i89, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %69 = tail call i32 @llvm.bswap.i32(i32 %and28) #11
  %70 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regbase.i, align 4
  %72 = ptrtoint ptr %regindex.addr.i89 to i32
  call void @__asan_load4_noabort(i32 %72)
  %regindex.addr.i89.0.regindex.addr.i89.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i91 = load volatile i32, ptr %regindex.addr.i89, align 4
  %add.ptr.i92 = getelementptr i8, ptr %71, i32 %regindex.addr.i89.0.regindex.addr.i89.0.regindex.addr.0.regindex.addr.0.regindex.addr.0..i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %69) #11, !srcloc !236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regindex.addr.i89)
  br label %if.end29

if.end29:                                         ; preds = %if.else21, %if.end15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty128_pci_suspend(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty128_pci_resume(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #11
  %power.i = getelementptr i8, ptr %dev, i32 384
  %0 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.aty128_do_resume.exit_crit_edge, label %if.end.i

entry.aty128_do_resume.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128_do_resume.exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par1.i, align 4
  %asleep.i = getelementptr inbounds %struct.aty128fb_par, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %asleep.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %asleep.i, align 4
  tail call fastcc void @aty128_reset_engine(ptr noundef %5) #11
  tail call fastcc void @wait_for_idle(ptr noundef %5) #11
  %call2.i = tail call i32 @aty128fb_set_par(ptr noundef %3) #11
  %var.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6
  %call3.i = tail call i32 @fb_pan_display(ptr noundef %3, ptr noundef %var.i) #11
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 12
  %call4.i = tail call i32 @fb_set_cmap(ptr noundef %cmap.i, ptr noundef %3) #11
  tail call void @fb_set_suspend(ptr noundef %3, i32 noundef 0) #11
  %lock_blank.i = getelementptr inbounds %struct.aty128fb_par, ptr %5, i32 0, i32 17
  %7 = ptrtoint ptr %lock_blank.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %lock_blank.i, align 4
  %8 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par1.i, align 4
  %lock_blank.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %lock_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lock_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.aty128fb_blank.exit.i_crit_edge

if.end.i.aty128fb_blank.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_blank.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %asleep.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %asleep.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asleep.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.aty128fb_blank.exit.i_crit_edge

lor.lhs.false.i.i.aty128fb_blank.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_blank.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %regbase.i.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 0) #11, !srcloc !273
  %chip_gen.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %chip_gen.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip_gen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 4
  br i1 %cmp.i.i, label %if.then7.i.i, label %if.end.i.i.aty128fb_blank.exit.i_crit_edge

if.end.i.i.aty128fb_blank.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %aty128fb_blank.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %crt_on.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 12
  %18 = ptrtoint ptr %crt_on.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crt_on.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not.i.i = icmp ne i32 %19, 0
  %20 = zext i1 %tobool8.not.i.i to i32
  tail call fastcc void @aty128_set_crt_enable(ptr noundef %9, i32 noundef %20) #11
  %lcd_on.i.i = getelementptr inbounds %struct.aty128fb_par, ptr %9, i32 0, i32 13
  %21 = ptrtoint ptr %lcd_on.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lcd_on.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not.i.i = icmp ne i32 %22, 0
  %23 = zext i1 %tobool10.not.i.i to i32
  tail call fastcc void @aty128_set_lcd_enable(ptr noundef %9, i32 noundef %23) #11
  br label %aty128fb_blank.exit.i

aty128fb_blank.exit.i:                            ; preds = %if.then7.i.i, %if.end.i.i.aty128fb_blank.exit.i_crit_edge, %lor.lhs.false.i.i.aty128fb_blank.exit.i_crit_edge, %if.end.i.aty128fb_blank.exit.i_crit_edge
  %24 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %power.i, align 8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #14
  br label %aty128_do_resume.exit

aty128_do_resume.exit:                            ; preds = %aty128fb_blank.exit.i, %entry.aty128_do_resume.exit_crit_edge
  tail call void @console_unlock() #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty128_pci_freeze(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty128_pci_hibernate(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !196, !197, !198, !199, !201, !203, !204, !205, !206, !208, !210, !212, !214, !216, !217, !219, !220}
!llvm.named.register.sp = !{!222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__initcall__kmod_aty128fb__305_2514_aty128fb_init6, !1, !"__initcall__kmod_aty128fb__305_2514_aty128fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2514, i32 1}
!2 = !{ptr @__exitcall_aty128fb_exit, !3, !"__exitcall_aty128fb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2516, i32 1}
!4 = !{ptr @__UNIQUE_ID_author306, !5, !"__UNIQUE_ID_author306", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2518, i32 1}
!6 = !{ptr @__UNIQUE_ID_description307, !7, !"__UNIQUE_ID_description307", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2519, i32 1}
!8 = !{ptr @__UNIQUE_ID_file308, !9, !"__UNIQUE_ID_file308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2520, i32 1}
!10 = !{ptr @__UNIQUE_ID_license309, !9, !"__UNIQUE_ID_license309", i1 false, i1 false}
!11 = !{ptr @__param_mode_option, !12, !"__param_mode_option", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2521, i32 1}
!13 = !{ptr @__UNIQUE_ID_mode_optiontype310, !12, !"__UNIQUE_ID_mode_optiontype310", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_mode_option311, !15, !"__UNIQUE_ID_mode_option311", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2522, i32 1}
!16 = !{ptr @__param_nomtrr, !17, !"__param_nomtrr", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2523, i32 1}
!18 = !{ptr @__UNIQUE_ID_nomtrrtype312, !17, !"__UNIQUE_ID_nomtrrtype312", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_nomtrr313, !20, !"__UNIQUE_ID_nomtrr313", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2524, i32 1}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 283, i32 11}
!23 = !{ptr @aty128fb_driver, !24, !"aty128fb_driver", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 282, i32 26}
!25 = !{ptr @aty128_pci_tbl, !26, !"aty128_pci_tbl", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 182, i32 35}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2059, i32 3}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @aty128_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @aty128_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2065, i32 7}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2067, i32 3}
!37 = !{ptr @aty128_probe._entry.5, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @aty128_probe._entry_ptr.7, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2073, i32 7}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2075, i32 3}
!43 = !{ptr @aty128_probe._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @aty128_probe._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2111, i32 3}
!47 = !{ptr @aty128_probe._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @aty128_probe._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2122, i32 3}
!51 = !{ptr @aty128_probe._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @aty128_probe._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2124, i32 3}
!55 = !{ptr @aty128_probe._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @aty128_probe._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @aty128fb_fix, !58, !"aty128fb_fix", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 376, i32 39}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 829, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @aty128_map_ROM._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @aty128_map_ROM._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 835, i32 3}
!66 = !{ptr @aty128_map_ROM._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @aty128_map_ROM._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 869, i32 3}
!70 = !{ptr @aty128_map_ROM._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @aty128_map_ROM._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 876, i32 3}
!74 = !{ptr @aty128_map_ROM._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @aty128_map_ROM._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 879, i32 3}
!78 = !{ptr @aty128_map_ROM._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @aty128_map_ROM._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 882, i32 3}
!82 = !{ptr @aty128_map_ROM._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @aty128_map_ROM._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 885, i32 3}
!86 = !{ptr @aty128_map_ROM._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @aty128_map_ROM._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 596, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @aty_pll_wait_readupdate._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @aty_pll_wait_readupdate._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 345, i32 10}
!95 = !{ptr @sdr_128, !96, !"sdr_128", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 334, i32 36}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 359, i32 10}
!99 = !{ptr @sdr_sgram, !100, !"sdr_sgram", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 348, i32 36}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 373, i32 10}
!103 = !{ptr @ddr_sgram, !104, !"ddr_sgram", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 362, i32 36}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1910, i32 21}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1919, i32 2}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @aty128_init._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @aty128_init._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1922, i32 3}
!114 = !{ptr @aty128_init._entry.49, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @aty128_init._entry_ptr.51, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1924, i32 3}
!118 = !{ptr @aty128_init._entry.52, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @aty128_init._entry_ptr.54, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2005, i32 3}
!122 = !{ptr @aty128_init._entry.55, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @aty128_init._entry_ptr.57, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2039, i32 2}
!126 = !{ptr @aty128_init._entry.58, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @aty128_init._entry_ptr.60, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 149, i32 2}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 150, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 151, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 152, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 153, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 154, i32 2}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 155, i32 2}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 156, i32 2}
!144 = !{ptr @r128_family, !145, !"r128_family", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 148, i32 21}
!146 = !{ptr @aty128fb_ops, !147, !"aty128fb_ops", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 505, i32 28}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1084, i32 3}
!150 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @aty128_var_to_crtc._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @aty128_var_to_crtc._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1093, i32 3}
!155 = !{ptr @aty128_var_to_crtc._entry.71, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @aty128_var_to_crtc._entry_ptr.73, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1105, i32 3}
!159 = !{ptr @aty128_var_to_crtc._entry.74, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @aty128_var_to_crtc._entry_ptr.76, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1465, i32 3}
!163 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @aty128_ddafifo._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @aty128_ddafifo._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @default_lcd_on, !167, !"default_lcd_on", i1 false, i1 false}
!167 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 394, i32 12}
!168 = !{ptr @default_crt_on, !169, !"default_crt_on", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 393, i32 12}
!170 = !{ptr @default_var, !171, !"default_var", i1 false, i1 false}
!171 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 97, i32 39}
!172 = !{ptr @defaultmode, !173, !"defaultmode", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 120, i32 34}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1215, i32 3}
!176 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @aty128_pix_width_to_var._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @aty128_pix_width_to_var._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @backlight, !180, !"backlight", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 398, i32 12}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1844, i32 31}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1853, i32 3}
!185 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @aty128_bl_init._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @aty128_bl_init._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1866, i32 2}
!190 = !{ptr @aty128_bl_init._entry.84, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @aty128_bl_init._entry_ptr.86, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @aty128_bl_data, !193, !"aty128_bl_data", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1816, i32 35}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1877, i32 2}
!196 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @aty128_bl_exit._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @aty128_bl_exit._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @aty128_pci_pm_ops, !200, !"aty128_pci_pm_ops", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 172, i32 32}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 2479, i32 2}
!203 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @aty128_do_resume._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @aty128_do_resume._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1681, i32 38}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1682, i32 26}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1685, i32 33}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1688, i32 33}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 1694, i32 25}
!216 = !{ptr @__param_str_mode_option, !12, !"__param_str_mode_option", i1 false, i1 false}
!217 = !{ptr @mode_option, !218, !"mode_option", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 386, i32 14}
!219 = !{ptr @__param_str_nomtrr, !17, !"__param_str_nomtrr", i1 false, i1 false}
!220 = !{ptr @mtrr, !221, !"mtrr", i1 false, i1 false}
!221 = !{!"../drivers/video/fbdev/aty/aty128fb.c", i32 395, i32 13}
!222 = !{!"sp"}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i64 6148798}
!233 = !{i64 2156279810}
!234 = !{i8 0, i8 2}
!235 = !{i64 2156280199}
!236 = !{i64 6148380}
!237 = !{!"auto-init"}
!238 = !{i64 6148578}
!239 = !{i64 2156287790}
!240 = !{i64 2156288020}
!241 = !{i64 2156289965}
!242 = !{i64 2156290195}
!243 = !{i64 2156290491}
!244 = !{i64 2156290727}
!245 = !{i64 2156291111}
!246 = !{i64 2156291347}
!247 = !{i64 2156291583}
!248 = !{i64 2156291819}
!249 = !{i64 2156293828}
!250 = !{i64 2156294064}
!251 = !{i64 2156294300}
!252 = !{i64 2156294536}
!253 = !{i64 2156294810}
!254 = !{i64 2156301220}
!255 = !{i64 2156301456}
!256 = !{i64 2156301796}
!257 = !{i64 2156302054}
!258 = !{i64 2156302504}
!259 = !{i64 2156302762}
!260 = !{i64 2156303020}
!261 = !{i64 2156303278}
!262 = !{i64 2156303728}
!263 = !{i64 2156303986}
!264 = !{i64 2156304244}
!265 = !{i64 2156304502}
!266 = !{i64 2156304842}
!267 = !{i64 2156305100}
!268 = !{i64 2156305440}
!269 = !{i64 2156305698}
!270 = !{i64 2156306038}
!271 = !{i64 2156306296}
!272 = !{i64 2156281182}
!273 = !{i64 6148183}
!274 = !{i64 5521651}
!275 = !{i64 5521848}
!276 = !{i64 2153007081}
!277 = !{i64 2156360664, i64 2156360944, i64 2156361278, i64 2156361612}
!278 = !{i64 2156370929, i64 2156371209, i64 2156371543, i64 2156371877}
