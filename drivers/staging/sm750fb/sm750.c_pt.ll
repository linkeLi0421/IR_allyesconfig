; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/sm750.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/sm750.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.sm750_dev = type { i16, i8, ptr, [2 x ptr], %struct.lynx_accel, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.init_status, i32, i32, i32, i32 }
%struct.lynx_accel = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.86 = type { i32 }
%struct.init_status = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.lynxfb_par = type { i32, [256 x i32], %struct.lynxfb_crtc, %struct.lynxfb_output, ptr, ptr }
%struct.lynxfb_crtc = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, ptr, %struct.lynx_cursor }
%struct.lynx_cursor = type { i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.lynxfb_output = type { i32, i32, ptr, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }

@__initcall__kmod_sm750fb__310_1182_lynxfb_init6 = internal global ptr @lynxfb_init, section ".initcall6.init", align 4
@lynxfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @smi_pci_table, ptr @lynxfb_pci_probe, ptr @lynxfb_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lynxfb_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lynxfb_exit = internal global ptr @lynxfb_exit, section ".exitcall.exit", align 4
@__param_str_g_option = internal constant [17 x i8] c"sm750fb.g_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@g_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_g_option = internal constant %struct.kernel_param { ptr @__param_str_g_option, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_option } }, section "__param", align 4
@__UNIQUE_ID_g_optiontype311 = internal constant [32 x i8] c"sm750fb.parmtype=g_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_g_option312 = internal constant [281 x i8] c"sm750fb.parm=g_option:\0A\09\09Common options:\0A\09\09noaccel:disable 2d capabilities\0A\09\09nomtrr:disable MTRR attribute for video memory\0A\09\09dualview:dual frame buffer feature enabled\0A\09\09nohwc:disable hardware cursor\0A\09\09Usual example:\0A\09\09insmod ./sm750fb.ko g_option=\22noaccel,nohwc,1280x1024-8@60\22\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [53 x i8] c"sm750fb.author=monk liu <monk.liu@siliconmotion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [55 x i8] c"sm750fb.author=Sudip Mukherjee <sudip@vectorindia.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [58 x i8] c"sm750fb.description=Frame buffer driver for SM750 chipset\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [45 x i8] c"sm750fb.file=drivers/staging/sm750fb/sm750fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [29 x i8] c"sm750fb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm750fb\00", [24 x i8] zeroinitializer }, align 32
@lynxfb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\014no options.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lynxfb_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/sm750fb/sm750.c\00", [32 x i8] zeroinitializer }, align 32
@lynxfb_setup._entry_ptr = internal global ptr @lynxfb_setup._entry, section ".printk_index", align 4
@lynxfb_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016options:%s\0A\00", [18 x i8] zeroinitializer }, align 32
@lynxfb_setup._entry_ptr.6 = internal global ptr @lynxfb_setup._entry.4, section ".printk_index", align 4
@g_settings = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@g_noaccel = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@g_nomtrr = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@g_dualview = internal global { i1, [31 x i8] } zeroinitializer, align 32
@lynxfb_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016parameter left for chip specific analysis:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@lynxfb_setup._entry_ptr.13 = internal global ptr @lynxfb_setup._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smi_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4719, i32 1872, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@lynxfb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lynxfb_suspend, ptr @lynxfb_resume, ptr @lynxfb_suspend, ptr @lynxfb_resume, ptr @lynxfb_suspend, ptr @lynxfb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lynxfb_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sm750_dev->slock\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sm750_fb1\00", [22 x i8] zeroinitializer }, align 32
@g_hwcursor = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 884, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no specific g_option.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sm750fb_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry_ptr = internal global ptr @sm750fb_setup._entry, section ".printk_index", align 4
@sm750fb_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.3, i32 889, ptr @.str.22, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"opt=%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry_ptr.23 = internal global ptr @sm750fb_setup._entry.20, section ".printk_index", align 4
@sm750fb_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 890, ptr @.str.22, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"src=%s\0A\00", [24 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry_ptr.26 = internal global ptr @sm750fb_setup._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swap\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nocrt\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"36bit\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"18bit\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"24bit\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nohwc0\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nohwc1\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nohwc\00", [26 x i8] zeroinitializer }, align 32
@g_fbmode = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@sm750fb_setup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.17, ptr @.str.3, i32 912, ptr @.str.22, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find fbmode0 : %s\0A\00", [45 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry_ptr.37 = internal global ptr @sm750fb_setup._entry.35, section ".printk_index", align 4
@sm750fb_setup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.17, ptr @.str.3, i32 916, ptr @.str.22, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find fbmode1 : %s\0A\00", [45 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry_ptr.40 = internal global ptr @sm750fb_setup._entry.38, section ".printk_index", align 4
@sm750fb_setup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.17, ptr @.str.3, i32 918, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"How many view you wann set?\0A\00", [35 x i8] zeroinitializer }, align 32
@sm750fb_setup._entry_ptr.43 = internal global ptr @sm750fb_setup._entry.41, section ".printk_index", align 4
@lynx750_ext = internal constant { [12 x %struct.fb_videomode], [160 x i8] } { [12 x %struct.fb_videomode] [%struct.fb_videomode { ptr null, i32 60, i32 1024, i32 600, i32 20423, i32 144, i32 40, i32 18, i32 1, i32 104, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1024, i32 600, i32 17211, i32 152, i32 48, i32 21, i32 1, i32 104, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1024, i32 600, i32 15822, i32 160, i32 56, i32 23, i32 1, i32 104, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1024, i32 600, i32 13730, i32 168, i32 56, i32 26, i32 1, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 720, i32 480, i32 37427, i32 88, i32 16, i32 13, i32 1, i32 72, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 720, i32 13426, i32 162, i32 86, i32 22, i32 1, i32 136, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 768, i32 12579, i32 192, i32 64, i32 20, i32 3, i32 128, i32 7, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1360, i32 768, i32 11804, i32 208, i32 64, i32 23, i32 1, i32 144, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1368, i32 768, i32 11647, i32 216, i32 72, i32 23, i32 1, i32 144, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1440, i32 900, i32 9392, i32 232, i32 80, i32 28, i32 1, i32 152, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1440, i32 960, i32 8733, i32 240, i32 88, i32 30, i32 1, i32 152, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1080, i32 6734, i32 148, i32 88, i32 41, i32 1, i32 44, i32 3, i32 2, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@vesa_modes = external dso_local constant [0 x %struct.fb_videomode], align 4
@lynxfb_set_fbinfo.mdb_desc = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver prepared modes\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel prepared default modedb\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kernel HELPERS prepared vesa_modes\00", [61 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo.fixId = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.47], [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sm750_fb2\00", [22 x i8] zeroinitializer }, align 32
@lynxfb_ops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lynxfb_ops_check_var, ptr @lynxfb_ops_set_par, ptr @lynxfb_ops_setcolreg, ptr null, ptr @lynxfb_ops_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr @lynxfb_ops_cursor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016crtc->cursor.mmio = %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lynxfb_set_fbinfo\00", [46 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr = internal global ptr @lynxfb_set_fbinfo._entry, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016success! use specified mode:%s in %s\0A\00", [56 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.52 = internal global ptr @lynxfb_set_fbinfo._entry.50, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014use specified mode:%s in %s,with an ignored refresh rate\0A\00", [36 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.55 = internal global ptr @lynxfb_set_fbinfo._entry.53, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014wanna use default mode\0A\00", [38 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.58 = internal global ptr @lynxfb_set_fbinfo._entry.56, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.3, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014fall back to any valid mode\0A\00", [33 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.61 = internal global ptr @lynxfb_set_fbinfo._entry.59, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.3, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014ret = %d,fb_find_mode failed,with %s\0A\00", [56 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.64 = internal global ptr @lynxfb_set_fbinfo._entry.62, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.49, ptr @.str.3, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\016Member of info->var is :\0Axres=%d\0Ayres=%d\0Axres_virtual=%d\0Ayres_virtual=%d\0Axoffset=%d\0Ayoffset=%d\0Abits_per_pixel=%d\0A ...\0A\00", [39 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.67 = internal global ptr @lynxfb_set_fbinfo._entry.65, section ".printk_index", align 4
@lynxfb_set_fbinfo.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.68, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"screen_base vaddr = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.49, ptr @.str.3, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016fix->smem_start = %lx\0A\00", [39 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.71 = internal global ptr @lynxfb_set_fbinfo._entry.69, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.49, ptr @.str.3, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016fix->smem_len = %x\0A\00", [42 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.74 = internal global ptr @lynxfb_set_fbinfo._entry.72, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.49, ptr @.str.3, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016fix->mmio_start = %lx\0A\00", [39 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.77 = internal global ptr @lynxfb_set_fbinfo._entry.75, section ".printk_index", align 4
@lynxfb_set_fbinfo._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.49, ptr @.str.3, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016fix->mmio_len = %x\0A\00", [42 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.80 = internal global ptr @lynxfb_set_fbinfo._entry.78, section ".printk_index", align 4
@lynxfb_set_fbinfo.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.81, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"#1 show info->cmap :\0Astart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.49, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Could not allocate memory for cmap.\0A\00", [57 x i8] zeroinitializer }, align 32
@lynxfb_set_fbinfo._entry_ptr.84 = internal global ptr @lynxfb_set_fbinfo._entry.82, section ".printk_index", align 4
@lynxfb_set_fbinfo.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.85, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"#2 show info->cmap :\0Astart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@sm750fb_set_drv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016use simul primary mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm750fb_set_drv\00", [16 x i8] zeroinitializer }, align 32
@sm750fb_set_drv._entry_ptr = internal global ptr @sm750fb_set_drv._entry, section ".printk_index", align 4
@lynxfb_ops_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016fix->line_length = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lynxfb_ops_set_par\00", [45 x i8] zeroinitializer }, align 32
@lynxfb_ops_set_par._entry_ptr = internal global ptr @lynxfb_ops_set_par._entry, section ".printk_index", align 4
@lynxfb_ops_set_par._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013bpp %d not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@lynxfb_ops_set_par._entry_ptr.92 = internal global ptr @lynxfb_ops_set_par._entry.90, section ".printk_index", align 4
@lynxfb_ops_setcolreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013regno = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lynxfb_ops_setcolreg\00", [43 x i8] zeroinitializer }, align 32
@lynxfb_ops_setcolreg._entry_ptr = internal global ptr @lynxfb_ops_setcolreg._entry, section ".printk_index", align 4
@lynxfb_ops_blank.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lynxfb_ops_blank\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"blank = %d.\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"1024x768-32@60\00", [17 x i8] zeroinitializer }, align 32
@lynxfb_ops_check_var.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lynxfb_ops_check_var\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check var:%dx%d-%d\0A\00", [44 x i8] zeroinitializer }, align 32
@lynxfb_ops_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.98, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lynxfb_ops_check_var._entry_ptr = internal global ptr @lynxfb_ops_check_var._entry, section ".printk_index", align 4
@lynxfb_ops_check_var._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.98, ptr @.str.3, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013not enough video memory for mode\0A\00", [60 x i8] zeroinitializer }, align 32
@lynxfb_ops_check_var._entry_ptr.102 = internal global ptr @lynxfb_ops_check_var._entry.100, section ".printk_index", align 4
@switch.table.lynxfb_set_fbinfo = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"lynxfb_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1160, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"g_option\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 40, i32 14 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1175, i32 21 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1106, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1110, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"g_settings\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 38, i32 14 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1128, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1130, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"g_noaccel\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1132, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant [9 x i8] c"g_nomtrr\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1134, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant [11 x i8] c"g_dualview\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1147, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"smi_pci_table\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1151, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"lynxfb_pm_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1158, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1037, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1003, i32 38 }
@___asan_gen_.178 = private unnamed_addr constant [11 x i8] c"g_hwcursor\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 33, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 884, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 889, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 890, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 892, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 894, i32 28 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 896, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 898, i32 28 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 900, i32 28 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 902, i32 28 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 904, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 906, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant [9 x i8] c"g_fbmode\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 36, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 911, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 915, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 918, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant [12 x i8] c"lynx750_ext\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 42, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant [9 x i8] c"mdb_desc\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 691, i32 28 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 692, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 693, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 694, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [6 x i8] c"fixId\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 697, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 698, i32 16 }
@___asan_gen_.277 = private unnamed_addr constant [11 x i8] c"lynxfb_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 664, i32 22 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 725, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 756, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 761, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 766, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 769, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 771, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 779, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 805, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 820, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 829, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 833, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 835, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 844, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 851, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 855, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 619, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 380, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 393, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 536, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 577, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 37, i32 35 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 489, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 497, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.419 = private constant [35 x i8] c"../drivers/staging/sm750fb/sm750.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 511, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [31 x i8] c"switch.table.lynxfb_set_fbinfo\00", align 1
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_g_option312, ptr @__UNIQUE_ID_g_optiontype311, ptr @__UNIQUE_ID_license317, ptr @__exitcall_lynxfb_exit, ptr @__initcall__kmod_sm750fb__310_1182_lynxfb_init6, ptr @__param_g_option, ptr @lynxfb_exit, ptr @lynxfb_ops_check_var._entry, ptr @lynxfb_ops_check_var._entry.100, ptr @lynxfb_ops_check_var._entry_ptr, ptr @lynxfb_ops_check_var._entry_ptr.102, ptr @lynxfb_ops_set_par._entry, ptr @lynxfb_ops_set_par._entry.90, ptr @lynxfb_ops_set_par._entry_ptr, ptr @lynxfb_ops_set_par._entry_ptr.92, ptr @lynxfb_ops_setcolreg._entry, ptr @lynxfb_ops_setcolreg._entry_ptr, ptr @lynxfb_set_fbinfo._entry, ptr @lynxfb_set_fbinfo._entry.50, ptr @lynxfb_set_fbinfo._entry.53, ptr @lynxfb_set_fbinfo._entry.56, ptr @lynxfb_set_fbinfo._entry.59, ptr @lynxfb_set_fbinfo._entry.62, ptr @lynxfb_set_fbinfo._entry.65, ptr @lynxfb_set_fbinfo._entry.69, ptr @lynxfb_set_fbinfo._entry.72, ptr @lynxfb_set_fbinfo._entry.75, ptr @lynxfb_set_fbinfo._entry.78, ptr @lynxfb_set_fbinfo._entry.82, ptr @lynxfb_set_fbinfo._entry_ptr, ptr @lynxfb_set_fbinfo._entry_ptr.52, ptr @lynxfb_set_fbinfo._entry_ptr.55, ptr @lynxfb_set_fbinfo._entry_ptr.58, ptr @lynxfb_set_fbinfo._entry_ptr.61, ptr @lynxfb_set_fbinfo._entry_ptr.64, ptr @lynxfb_set_fbinfo._entry_ptr.67, ptr @lynxfb_set_fbinfo._entry_ptr.71, ptr @lynxfb_set_fbinfo._entry_ptr.74, ptr @lynxfb_set_fbinfo._entry_ptr.77, ptr @lynxfb_set_fbinfo._entry_ptr.80, ptr @lynxfb_set_fbinfo._entry_ptr.84, ptr @lynxfb_setup._entry, ptr @lynxfb_setup._entry.11, ptr @lynxfb_setup._entry.4, ptr @lynxfb_setup._entry_ptr, ptr @lynxfb_setup._entry_ptr.13, ptr @lynxfb_setup._entry_ptr.6, ptr @sm750fb_set_drv._entry, ptr @sm750fb_set_drv._entry_ptr, ptr @sm750fb_setup._entry, ptr @sm750fb_setup._entry.20, ptr @sm750fb_setup._entry.24, ptr @sm750fb_setup._entry.35, ptr @sm750fb_setup._entry.38, ptr @sm750fb_setup._entry.41, ptr @sm750fb_setup._entry_ptr, ptr @sm750fb_setup._entry_ptr.23, ptr @sm750fb_setup._entry_ptr.26, ptr @sm750fb_setup._entry_ptr.37, ptr @sm750fb_setup._entry_ptr.40, ptr @sm750fb_setup._entry_ptr.43, ptr @lynxfb_driver, ptr @g_option, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @g_settings, ptr @.str.7, ptr @.str.8, ptr @g_noaccel, ptr @.str.9, ptr @g_nomtrr, ptr @.str.10, ptr @g_dualview, ptr @.str.12, ptr @smi_pci_table, ptr @lynxfb_pm_ops, ptr @lynxfb_pci_probe.__key, ptr @.str.14, ptr @.str.15, ptr @g_hwcursor, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @g_fbmode, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @lynx750_ext, ptr @lynxfb_set_fbinfo.mdb_desc, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @lynxfb_set_fbinfo.fixId, ptr @.str.47, ptr @lynxfb_ops, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @switch.table.lynxfb_set_fbinfo], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_settings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_dualview to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_hwcursor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_fbmode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_setup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_setup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_setup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx750_ext to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo.mdb_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo.fixId to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_set_fbinfo._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm750fb_set_drv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_ops_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_ops_set_par._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_ops_setcolreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_ops_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynxfb_ops_check_var._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lynxfb_set_fbinfo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %option, align 4, !annotation !233
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @lynxfb_setup(ptr noundef %2) #13
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @lynxfb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lynxfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @lynxfb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lynxfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %do.end5

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

do.end5:                                          ; preds = %lor.lhs.false
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %options) #14
  %3 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %options.addr, align 4
  %call8 = tail call i32 @strlen(ptr noundef %4) #15
  %add = add i32 %call8, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  store ptr %call9.i.i, ptr @g_settings, align 4
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %do.end5.cleanup_crit_edge, label %while.cond.preheader

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end5
  %call131 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.7) #10
  %cmp.not2 = icmp eq ptr %call131, null
  br i1 %cmp.not2, label %while.cond.preheader.do.end37_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call134 = phi ptr [ %call13, %if.end34.while.body_crit_edge ], [ %call131, %while.cond.preheader.while.body_crit_edge ]
  %tmp.03 = phi ptr [ %tmp.1, %if.end34.while.body_crit_edge ], [ %call9.i.i, %while.cond.preheader.while.body_crit_edge ]
  %call14 = call i32 @strncmp(ptr noundef nonnull %call134, ptr noundef nonnull dereferenceable(8) @.str.8, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @g_noaccel, align 4
  br label %if.end34

if.else:                                          ; preds = %while.body
  %call17 = call i32 @strncmp(ptr noundef nonnull %call134, ptr noundef nonnull dereferenceable(7) @.str.9, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @g_nomtrr, align 4
  br label %if.end34

if.else20:                                        ; preds = %if.else
  %call21 = call i32 @strncmp(ptr noundef nonnull %call134, ptr noundef nonnull dereferenceable(5) @.str.10, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @g_dualview, align 4
  br label %if.end34

if.else24:                                        ; preds = %if.else20
  %call25 = call ptr @strcat(ptr noundef %tmp.03, ptr noundef nonnull %call134)
  %call26 = call i32 @strlen(ptr noundef nonnull %call134) #15
  %add.ptr = getelementptr i8, ptr %tmp.03, i32 %call26
  %5 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %options.addr, align 4
  %tobool27.not = icmp eq ptr %6, null
  %incdec.ptr30 = getelementptr i8, ptr %add.ptr, i32 1
  br i1 %tobool27.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 58, ptr %add.ptr, align 1
  br label %if.end34

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.else29, %if.then28, %if.then23, %if.then19, %if.then16
  %tmp.1 = phi ptr [ %incdec.ptr30, %if.then28 ], [ %incdec.ptr30, %if.else29 ], [ %tmp.03, %if.then23 ], [ %tmp.03, %if.then19 ], [ %tmp.03, %if.then16 ]
  %call13 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.7) #10
  %cmp.not = icmp eq ptr %call13, null
  br i1 %cmp.not, label %if.end34.do.end37_crit_edge, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end34.do.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end37:                                         ; preds = %if.end34.do.end37_crit_edge, %while.cond.preheader.do.end37_crit_edge
  %9 = load ptr, ptr @g_settings, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end5.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #8 align 64 {
entry:
  %src.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i.i.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource.i, align 8
  %ranges.i = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ranges.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ranges.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %6
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %size.i = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i.i, i32 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i, ptr %size.i, align 8
  %call13.i = tail call i32 @remove_conflicting_framebuffers(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.15, i1 noundef zeroext false) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  %call1 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 156, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %fbinfo = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 3
  %arrayidx = getelementptr %struct.sm750_dev, ptr %call.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %fbinfo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fbinfo, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %call.i, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %13 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %revision, align 4
  %revid = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %revid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %revid, align 2
  %pdev11 = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %pdev11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pdev, ptr %pdev11, align 4
  %.b85 = load i1, ptr @g_nomtrr, align 4
  %17 = zext i1 %.b85 to i32
  %mtrr_off = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %mtrr_off to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mtrr_off, align 4
  %mtrr = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mtrr, align 4
  %.b = load i1, ptr @g_noaccel, align 4
  %20 = zext i1 %.b to i32
  %accel_off = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %accel_off to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %accel_off, align 4
  %slock = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.14, ptr noundef nonnull @lynxfb_pci_probe.__key, i16 noundef signext 3) #10
  %22 = ptrtoint ptr %accel_off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %accel_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %if.then15, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %de_init = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %de_init to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sm750_hw_de_init, ptr %de_init, align 4
  %de_fillrect = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %de_fillrect to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sm750_hw_fillrect, ptr %de_fillrect, align 4
  %de_copyarea = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %de_copyarea to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sm750_hw_copyarea, ptr %de_copyarea, align 4
  %de_imageblit = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %de_imageblit to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sm750_hw_imageblit, ptr %de_imageblit, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end8.if.end19_crit_edge
  %28 = load ptr, ptr @g_settings, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src.addr.i)
  %29 = ptrtoint ptr %src.addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %src.addr.i, align 4
  %initParm.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 16
  %resetMemory.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 16, i32 5
  %30 = call ptr @memset(ptr %initParm.i, i32 0, i32 10)
  %31 = ptrtoint ptr %resetMemory.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %resetMemory.i, align 2
  store i32 3, ptr @g_hwcursor, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end19.do.end.i_crit_edge, label %lor.lhs.false.i

if.end19.do.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end19
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool6.not.i = icmp eq i8 %33, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call143.i = call ptr @strsep(ptr noundef nonnull %src.addr.i, ptr noundef nonnull @.str.7) #10
  %cmp.not144.i = icmp eq ptr %call143.i, null
  br i1 %cmp.not144.i, label %while.cond.preheader.i.NO_PARAM.i_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.NO_PARAM.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %NO_PARAM.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %pnltype38.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 17
  %nocrt.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 19
  br label %land.rhs.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end19.do.end.i_crit_edge
  %34 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev11, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #14
  br label %NO_PARAM.i

land.rhs.i:                                       ; preds = %if.end83.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %call146.i = phi ptr [ %call143.i, %land.rhs.lr.ph.i ], [ %call.i87, %if.end83.i.land.rhs.i_crit_edge ]
  %swap.0145.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %swap.1.i, %if.end83.i.land.rhs.i_crit_edge ]
  %36 = ptrtoint ptr %call146.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %call146.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp7.not.i = icmp eq i8 %37, 0
  br i1 %cmp7.not.i, label %land.rhs.i.NO_PARAM.i_crit_edge, label %do.end11.i

land.rhs.i.NO_PARAM.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %NO_PARAM.i

do.end11.i:                                       ; preds = %land.rhs.i
  %38 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev11, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %call146.i) #14
  %40 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev11, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %src.addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src.addr.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18.i, ptr noundef nonnull @.str.25, ptr noundef %43) #14
  %call19.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(5) @.str.27, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.end11.i.if.end83.i_crit_edge, label %if.else.i

do.end11.i.if.end83.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

if.else.i:                                        ; preds = %do.end11.i
  %call22.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(6) @.str.28, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %nocrt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %nocrt.i, align 4
  br label %if.end83.i

if.else25.i:                                      ; preds = %if.else.i
  %call26.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(6) @.str.29, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.else29.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %pnltype38.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %pnltype38.i, align 4
  br label %if.end83.i

if.else29.i:                                      ; preds = %if.else25.i
  %call30.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(6) @.str.30, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else34.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %pnltype38.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %pnltype38.i, align 4
  br label %if.end83.i

if.else34.i:                                      ; preds = %if.else29.i
  %call35.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(6) @.str.31, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %if.else39.i

if.then37.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %pnltype38.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pnltype38.i, align 4
  br label %if.end83.i

if.else39.i:                                      ; preds = %if.else34.i
  %call40.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(7) @.str.32, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.else43.i

if.then42.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = load i32, ptr @g_hwcursor, align 4
  %and.i = and i32 %48, -2
  store i32 %and.i, ptr @g_hwcursor, align 4
  br label %if.end83.i

if.else43.i:                                      ; preds = %if.else39.i
  %call44.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(7) @.str.33, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.else48.i

if.then46.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = load i32, ptr @g_hwcursor, align 4
  %and47.i = and i32 %49, -3
  store i32 %and47.i, ptr @g_hwcursor, align 4
  br label %if.end83.i

if.else48.i:                                      ; preds = %if.else43.i
  %call49.i = call i32 @strncmp(ptr noundef nonnull %call146.i, ptr noundef nonnull dereferenceable(6) @.str.34, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.else52.i

if.then51.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @g_hwcursor, align 4
  br label %if.end83.i

if.else52.i:                                      ; preds = %if.else48.i
  %50 = load ptr, ptr @g_fbmode, align 4
  %tobool53.not.i = icmp eq ptr %50, null
  br i1 %tobool53.not.i, label %if.then54.i, label %if.else60.i

if.then54.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call146.i, ptr @g_fbmode, align 4
  %51 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev11, align 4
  %dev59.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59.i, ptr noundef nonnull @.str.36, ptr noundef nonnull %call146.i) #14
  br label %if.end83.i

if.else60.i:                                      ; preds = %if.else52.i
  %53 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @g_fbmode, i32 0, i32 1), align 4
  %tobool61.not.i = icmp eq ptr %53, null
  br i1 %tobool61.not.i, label %if.then62.i, label %do.end71.i

if.then62.i:                                      ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call146.i, ptr getelementptr inbounds ([2 x ptr], ptr @g_fbmode, i32 0, i32 1), align 4
  %54 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev11, align 4
  %dev67.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67.i, ptr noundef nonnull @.str.39, ptr noundef nonnull %call146.i) #14
  br label %if.end83.i

do.end71.i:                                       ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev11, align 4
  %dev73.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev73.i, ptr noundef nonnull @.str.42) #14
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end71.i, %if.then62.i, %if.then54.i, %if.then51.i, %if.then46.i, %if.then42.i, %if.then37.i, %if.then32.i, %if.then28.i, %if.then24.i, %do.end11.i.if.end83.i_crit_edge
  %swap.1.i = phi i32 [ %swap.0145.i, %do.end71.i ], [ %swap.0145.i, %if.then62.i ], [ %swap.0145.i, %if.then54.i ], [ %swap.0145.i, %if.then51.i ], [ %swap.0145.i, %if.then46.i ], [ %swap.0145.i, %if.then42.i ], [ %swap.0145.i, %if.then37.i ], [ %swap.0145.i, %if.then32.i ], [ %swap.0145.i, %if.then28.i ], [ %swap.0145.i, %if.then24.i ], [ 1, %do.end11.i.if.end83.i_crit_edge ]
  %call.i87 = call ptr @strsep(ptr noundef nonnull %src.addr.i, ptr noundef nonnull @.str.7) #10
  %cmp.not.i = icmp eq ptr %call.i87, null
  br i1 %cmp.not.i, label %if.end83.i.NO_PARAM.i_crit_edge, label %if.end83.i.land.rhs.i_crit_edge

if.end83.i.land.rhs.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

if.end83.i.NO_PARAM.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %NO_PARAM.i

NO_PARAM.i:                                       ; preds = %if.end83.i.NO_PARAM.i_crit_edge, %land.rhs.i.NO_PARAM.i_crit_edge, %do.end.i, %while.cond.preheader.i.NO_PARAM.i_crit_edge
  %swap.2.i = phi i32 [ 0, %do.end.i ], [ 0, %while.cond.preheader.i.NO_PARAM.i_crit_edge ], [ %swap.0145.i, %land.rhs.i.NO_PARAM.i_crit_edge ], [ %swap.1.i, %if.end83.i.NO_PARAM.i_crit_edge ]
  %58 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %revid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %59)
  %cmp85.not.i = icmp eq i8 %59, -2
  br i1 %cmp85.not.i, label %if.else104.i, label %if.then87.i

if.then87.i:                                      ; preds = %NO_PARAM.i
  %fb_count.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 6
  %60 = ptrtoint ptr %fb_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp88.i = icmp sgt i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %swap.2.i)
  %tobool91.not.i = icmp eq i32 %swap.2.i, 0
  %dataflow94.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 18
  br i1 %cmp88.i, label %if.then90.i, label %if.else96.i

if.then90.i:                                      ; preds = %if.then87.i
  br i1 %tobool91.not.i, label %if.else93.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dataflow94.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %dataflow94.i, align 4
  br label %sm750fb_setup.exit

if.else93.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dataflow94.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %dataflow94.i, align 4
  br label %sm750fb_setup.exit

if.else96.i:                                      ; preds = %if.then87.i
  br i1 %tobool91.not.i, label %if.else100.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dataflow94.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %dataflow94.i, align 4
  br label %sm750fb_setup.exit

if.else100.i:                                     ; preds = %if.else96.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %dataflow94.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %dataflow94.i, align 4
  br label %sm750fb_setup.exit

if.else104.i:                                     ; preds = %NO_PARAM.i
  call void @__sanitizer_cov_trace_pc() #12
  %dataflow105.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 18
  %66 = ptrtoint ptr %dataflow105.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %dataflow105.i, align 4
  %nocrt106.i = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 19
  %67 = ptrtoint ptr %nocrt106.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %nocrt106.i, align 4
  br label %sm750fb_setup.exit

sm750fb_setup.exit:                               ; preds = %if.else104.i, %if.else100.i, %if.then98.i, %if.else93.i, %if.then92.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src.addr.i)
  %call20 = call i32 @hw_sm750_map(ptr noundef nonnull %call.i, ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %sm750fb_setup.exit.cleanup_crit_edge

sm750fb_setup.exit.cleanup_crit_edge:             ; preds = %sm750fb_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %sm750fb_setup.exit
  %68 = ptrtoint ptr %mtrr_off to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mtrr_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool25.not = icmp eq i32 %69, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %mtrr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end23.if.end30_crit_edge
  %pvMem = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 14
  %71 = ptrtoint ptr %pvMem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pvMem, align 4
  %vidmem_size31 = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 11
  %73 = ptrtoint ptr %vidmem_size31 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vidmem_size31, align 4
  call void @mmioset(ptr noundef %72, i32 noundef 0, i32 noundef %74) #10
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call32 = call i32 @hw_sm750_inithw(ptr noundef nonnull %call.i, ptr noundef %pdev) #10
  %.b86 = load i1, ptr @g_dualview, align 4
  %cond = select i1 %.b86, i32 2, i32 1
  %fb_count.i94 = getelementptr inbounds %struct.sm750_dev, ptr %call.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30
  %fbidx.0102 = phi i32 [ 0, %if.end30 ], [ %inc, %for.inc.for.body_crit_edge ]
  %76 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev11, align 4
  %dev.i89 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %call.i90 = call ptr @framebuffer_alloc(i32 noundef 1124, ptr noundef %dev.i89) #10
  %tobool.not.i91 = icmp eq ptr %call.i90, null
  br i1 %tobool.not.i91, label %for.body.release_fb_crit_edge, label %if.end.i92

for.body.release_fb_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_fb

if.end.i92:                                       ; preds = %for.body
  %arrayidx.i = getelementptr %struct.sm750_dev, ptr %call.i, i32 0, i32 3, i32 %fbidx.0102
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i90, ptr %arrayidx.i, align 4
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %call.i90, i32 0, i32 30
  %79 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %par1.i, align 4
  %dev2.i = getelementptr inbounds %struct.lynxfb_par, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %dev2.i, align 4
  %call3.i = call fastcc i32 @lynxfb_set_fbinfo(ptr noundef nonnull %call.i90, i32 noundef %fbidx.0102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i92.release_fb.i_crit_edge

if.end.i92.release_fb.i_crit_edge:                ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_fb.i

if.end6.i:                                        ; preds = %if.end.i92
  %call7.i = call i32 @register_framebuffer(ptr noundef nonnull %call.i90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i93 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i93, label %if.end6.i.release_fb.i_crit_edge, label %for.inc

if.end6.i.release_fb.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_fb.i

release_fb.i:                                     ; preds = %if.end6.i.release_fb.i_crit_edge, %if.end.i92.release_fb.i_crit_edge
  %err.0.i = phi i32 [ %call3.i, %if.end.i92.release_fb.i_crit_edge ], [ %call7.i, %if.end6.i.release_fb.i_crit_edge ]
  call void @framebuffer_release(ptr noundef nonnull %call.i90) #10
  br label %release_fb

for.inc:                                          ; preds = %if.end6.i
  %82 = ptrtoint ptr %fb_count.i94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fb_count.i94, align 4
  %inc.i = add i32 %83, 1
  store i32 %inc.i, ptr %fb_count.i94, align 4
  %inc = add nuw nsw i32 %fbidx.0102, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

release_fb:                                       ; preds = %release_fb.i, %for.body.release_fb_crit_edge
  %retval.0.i95.ph = phi i32 [ %err.0.i, %release_fb.i ], [ -12, %for.body.release_fb_crit_edge ]
  call fastcc void @sm750fb_framebuffer_release(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %release_fb, %for.inc.cleanup_crit_edge, %sm750fb_setup.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i95.ph, %release_fb ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call20, %sm750fb_setup.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynxfb_pci_remove(ptr nocapture noundef readonly %pdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fb_count.i = getelementptr inbounds %struct.sm750_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fb_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not7.i = icmp eq i32 %3, 0
  br i1 %tobool.not7.i, label %entry.sm750fb_framebuffer_release.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sm750fb_framebuffer_release.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm750fb_framebuffer_release.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %sub.i = add i32 %4, -1
  %arrayidx.i = getelementptr %struct.sm750_dev, ptr %1, i32 0, i32 3, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %6) #10
  tail call void @framebuffer_release(ptr noundef %6) #10
  %7 = ptrtoint ptr %fb_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fb_count.i, align 4
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr %fb_count.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.sm750fb_framebuffer_release.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.sm750fb_framebuffer_release.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm750fb_framebuffer_release.exit

sm750fb_framebuffer_release.exit:                 ; preds = %while.body.i.sm750fb_framebuffer_release.exit_crit_edge, %entry.sm750fb_framebuffer_release.exit_crit_edge
  %pvReg = getelementptr inbounds %struct.sm750_dev, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %pvReg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pvReg, align 4
  tail call void @iounmap(ptr noundef %10) #10
  %pvMem = getelementptr inbounds %struct.sm750_dev, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %pvMem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pvMem, align 4
  tail call void @iounmap(ptr noundef %12) #10
  %13 = load ptr, ptr @g_settings, align 4
  tail call void @kfree(ptr noundef %13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_de_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_hw_fillrect(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_hw_copyarea(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_hw_imageblit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_inithw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm750fb_framebuffer_release(ptr nocapture noundef %sm750_dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_count = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 6
  %0 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7 = icmp eq i32 %1, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %sub = add i32 %2, -1
  %arrayidx = getelementptr %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 3, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_framebuffer(ptr noundef %4) #10
  tail call void @framebuffer_release(ptr noundef %4) #10
  %5 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fb_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %fb_count, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_conflicting_framebuffers(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lynxfb_set_fbinfo(ptr noundef %info, i32 noundef %index) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %var4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %index, ptr %1, align 4
  %channel = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 4
  %channel7 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %channel7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %channel, ptr %channel7, align 4
  %vidmem_size.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %vidmem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vidmem_size.i, align 4
  %vidmem_size3.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %vidmem_size3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vidmem_size3.i, align 4
  %fb_count.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %fb_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp sgt i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %7, 1
  %11 = ptrtoint ptr %vidmem_size3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i, ptr %vidmem_size3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %12 = load i32, ptr @g_hwcursor, align 4
  %hwCursor.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 20
  %13 = ptrtoint ptr %hwCursor.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %hwCursor.i, align 4
  %line_pad.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %line_pad.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %line_pad.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 8, ptr %xpanstep.i, align 2
  %ypanstep.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %ypanstep.i, align 4
  %ywrapstep.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 9
  %17 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %ywrapstep.i, align 2
  %revid.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %revid.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %revid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %19)
  %cmp5.i = icmp eq i8 %19, -2
  %cond.i = select i1 %cmp5.i, ptr @hw_sm750le_setBLANK, ptr @hw_sm750_setBLANK
  %proc_setBLANK.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %proc_setBLANK.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond.i, ptr %proc_setBLANK.i, align 4
  %21 = ptrtoint ptr %revid.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %revid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %22)
  %cmp9.i = icmp eq i8 %22, -2
  %cond11.i = select i1 %cmp9.i, ptr @hw_sm750le_deWait, ptr @hw_sm750_deWait
  %de_wait.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %de_wait.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cond11.i, ptr %de_wait.i, align 4
  %dataflow.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %dataflow.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dataflow.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end.i.sm750fb_set_drv.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb18.i
    i32 3, label %sw.bb36.i
  ]

if.end.i.sm750fb_set_drv.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm750fb_set_drv.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %paths.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %paths.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %paths.i, align 4
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %channel, align 4
  %o_screen.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %o_screen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %o_screen.i, align 4
  %pvMem.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %30 = ptrtoint ptr %pvMem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pvMem.i, align 4
  %v_screen.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %v_screen.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %v_screen.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #14
  br label %sm750fb_set_drv.exit

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %paths13.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %paths13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %paths13.i, align 4
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %channel, align 4
  %o_screen15.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %o_screen15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %o_screen15.i, align 4
  %pvMem16.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %36 = ptrtoint ptr %pvMem16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pvMem16.i, align 4
  %v_screen17.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %v_screen17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %v_screen17.i, align 4
  br label %sm750fb_set_drv.exit

sw.bb18.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp19.i = icmp eq i32 %40, 0
  %paths22.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 1
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %paths22.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %paths22.i, align 4
  %42 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %channel, align 4
  %o_screen24.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %o_screen24.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %o_screen24.i, align 4
  %pvMem25.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %44 = ptrtoint ptr %pvMem25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pvMem25.i, align 4
  %v_screen26.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %v_screen26.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %v_screen26.i, align 4
  br label %sm750fb_set_drv.exit

if.else.i:                                        ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %paths22.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %paths22.i, align 4
  %48 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %channel, align 4
  %49 = ptrtoint ptr %vidmem_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vidmem_size.i, align 4
  %shr30.i = lshr i32 %50, 1
  %o_screen31.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %o_screen31.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr30.i, ptr %o_screen31.i, align 4
  %pvMem32.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %52 = ptrtoint ptr %pvMem32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pvMem32.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %shr30.i
  %v_screen34.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %v_screen34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %v_screen34.i, align 4
  br label %sm750fb_set_drv.exit

sw.bb36.i:                                        ; preds = %if.end.i
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp38.i = icmp eq i32 %56, 0
  %paths41.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 1
  br i1 %cmp38.i, label %if.then40.i, label %if.else46.i

if.then40.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %paths41.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %paths41.i, align 4
  %58 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %channel, align 4
  %o_screen43.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %59 = ptrtoint ptr %o_screen43.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %o_screen43.i, align 4
  %pvMem44.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %60 = ptrtoint ptr %pvMem44.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pvMem44.i, align 4
  %v_screen45.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %v_screen45.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %v_screen45.i, align 4
  br label %sm750fb_set_drv.exit

if.else46.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %paths41.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %paths41.i, align 4
  %64 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %channel, align 4
  %65 = ptrtoint ptr %vidmem_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vidmem_size.i, align 4
  %shr50.i = lshr i32 %66, 1
  %o_screen51.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %o_screen51.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr50.i, ptr %o_screen51.i, align 4
  %pvMem52.i = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %68 = ptrtoint ptr %pvMem52.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pvMem52.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %69, i32 %shr50.i
  %v_screen55.i = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %v_screen55.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr54.i, ptr %v_screen55.i, align 4
  br label %sm750fb_set_drv.exit

sm750fb_set_drv.exit:                             ; preds = %if.else46.i, %if.then40.i, %if.else.i, %if.then21.i, %sw.bb12.i, %sw.bb.i, %if.end.i.sm750fb_set_drv.exit_crit_edge
  store ptr @lynxfb_ops_pan_display, ptr getelementptr inbounds (%struct.fb_ops, ptr @lynxfb_ops, i32 0, i32 10), align 4
  %o_screen = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %o_screen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %o_screen, align 4
  %73 = ptrtoint ptr %vidmem_size3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vidmem_size3.i, align 4
  %add = add i32 %72, -1024
  %sub = add i32 %add, %74
  %offset = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 6
  %75 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub, ptr %offset, align 4
  %pvReg = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 13
  %76 = ptrtoint ptr %pvReg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pvReg, align 4
  %add.ptr = getelementptr i8, ptr %77, i32 524528
  %78 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channel, align 4
  %mul = mul i32 %79, 320
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %mul
  %mmio = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 7
  %80 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr9, ptr %mmio, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %add.ptr9) #14
  %max_w = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 3
  %81 = ptrtoint ptr %max_w to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 64, ptr %max_w, align 4
  %max_h = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 4
  %82 = ptrtoint ptr %max_h to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 64, ptr %max_h, align 4
  %size = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 2
  %83 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1024, ptr %size, align 4
  %pvMem = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 14
  %84 = ptrtoint ptr %pvMem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pvMem, align 4
  %86 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset, align 4
  %add.ptr25 = getelementptr i8, ptr %85, i32 %87
  %vstart = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 5
  %88 = ptrtoint ptr %vstart to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr25, ptr %vstart, align 4
  tail call void @mmioset(ptr noundef %add.ptr25, i32 noundef 0, i32 noundef 1024) #10
  %89 = load i32, ptr @g_hwcursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not = icmp eq i32 %89, 0
  br i1 %tobool.not, label %if.then, label %sm750fb_set_drv.exit.if.end_crit_edge

sm750fb_set_drv.exit.if.end_crit_edge:            ; preds = %sm750fb_set_drv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sm750fb_set_drv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cursor = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11
  store ptr null, ptr getelementptr inbounds (%struct.fb_ops, ptr @lynxfb_ops, i32 0, i32 14), align 4
  tail call void @sm750_hw_cursor_disable(ptr noundef %cursor) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sm750fb_set_drv.exit.if.end_crit_edge
  %accel_off = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 5
  %90 = ptrtoint ptr %accel_off to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %accel_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool32.not = icmp eq i32 %91, 0
  br i1 %tobool32.not, label %if.then33, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @lynxfb_ops_fillrect, ptr getelementptr inbounds (%struct.fb_ops, ptr @lynxfb_ops, i32 0, i32 11), align 4
  store ptr @lynxfb_ops_copyarea, ptr getelementptr inbounds (%struct.fb_ops, ptr @lynxfb_ops, i32 0, i32 12), align 4
  store ptr @lynxfb_ops_imageblit, ptr getelementptr inbounds (%struct.fb_ops, ptr @lynxfb_ops, i32 0, i32 13), align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end.if.end34_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %92 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @lynxfb_ops, ptr %fbops, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @g_fbmode, i32 0, i32 %index
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %tobool35.not = icmp eq ptr %94, null
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %if.end34
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.97, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %tobool38.not = icmp eq i32 %index, 0
  br i1 %tobool38.not, label %if.then36.if.end42_crit_edge, label %if.then39

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %96 = load ptr, ptr @g_fbmode, align 4
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %arrayidx, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then36.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 4
  %call46 = tail call i32 @fb_find_mode(ptr noundef %var4, ptr noundef %info, ptr noundef %99, ptr noundef nonnull @lynx750_ext, i32 noundef 12, ptr noundef null, i32 noundef 8) #10
  %100 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call46, label %do.end84 [
    i32 1, label %if.end42.do.end51_crit_edge
    i32 2, label %if.end42.do.end60_crit_edge
    i32 3, label %do.end70
    i32 4, label %do.end78
  ]

if.end42.do.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

if.end42.do.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end51:                                         ; preds = %for.inc.1.do.end51_crit_edge, %for.inc.do.end51_crit_edge, %if.end42.do.end51_crit_edge
  %i.0341.lcssa = phi i32 [ 0, %if.end42.do.end51_crit_edge ], [ %call46.1, %for.inc.do.end51_crit_edge ], [ 2, %for.inc.1.do.end51_crit_edge ]
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx, align 4
  %arrayidx54 = getelementptr [3 x ptr], ptr @lynxfb_set_fbinfo.mdb_desc, i32 0, i32 %i.0341.lcssa
  %103 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %102, ptr noundef %104) #14
  br label %do.end94

do.end60:                                         ; preds = %for.inc.1.do.end60_crit_edge, %for.inc.do.end60_crit_edge, %if.end42.do.end60_crit_edge
  %i.0341.lcssa342 = phi i32 [ 0, %if.end42.do.end60_crit_edge ], [ 1, %for.inc.do.end60_crit_edge ], [ %call46.2, %for.inc.1.do.end60_crit_edge ]
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx, align 4
  %arrayidx63 = getelementptr [3 x ptr], ptr @lynxfb_set_fbinfo.mdb_desc, i32 0, i32 %i.0341.lcssa342
  %107 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx63, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %106, ptr noundef %108) #14
  br label %do.end94

do.end70:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #14
  br label %for.inc

do.end78:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %for.inc

do.end84:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call46, ptr noundef nonnull @.str.44) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end84, %do.end78, %do.end70
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx, align 4
  %call46.1 = tail call i32 @fb_find_mode(ptr noundef %var4, ptr noundef %info, ptr noundef %110, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #10
  %111 = zext i32 %call46.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call46.1, label %do.end84.1 [
    i32 1, label %for.inc.do.end51_crit_edge
    i32 2, label %for.inc.do.end60_crit_edge
    i32 3, label %do.end70.1
    i32 4, label %do.end78.1
  ]

for.inc.do.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

for.inc.do.end51_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end78.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call80.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %for.inc.1

do.end70.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call72.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #14
  br label %for.inc.1

do.end84.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call87.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call46.1, ptr noundef nonnull @.str.45) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end84.1, %do.end70.1, %do.end78.1
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx, align 4
  %call46.2 = tail call i32 @fb_find_mode(ptr noundef %var4, ptr noundef %info, ptr noundef %113, ptr noundef nonnull @vesa_modes, i32 noundef 43, ptr noundef null, i32 noundef 8) #10
  %114 = zext i32 %call46.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call46.2, label %do.end84.2 [
    i32 1, label %for.inc.1.do.end51_crit_edge
    i32 2, label %for.inc.1.do.end60_crit_edge
    i32 3, label %do.end70.2
    i32 4, label %do.end78.2
  ]

for.inc.1.do.end60_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

for.inc.1.do.end51_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end78.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %call80.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %do.end94

do.end70.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %call72.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #14
  br label %do.end94

do.end84.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %call87.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call46.2, ptr noundef nonnull @.str.46) #14
  br label %do.end94

do.end94:                                         ; preds = %do.end84.2, %do.end70.2, %do.end78.2, %do.end60, %do.end51
  %115 = ptrtoint ptr %var4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %var4, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %yres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %119 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %121 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %yres_virtual, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %123 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %125 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %yoffset, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %127 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bits_per_pixel, align 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124, i32 noundef %126, i32 noundef %128) #14
  %info97 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %info97 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %info, ptr %info97, align 4
  %130 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %xres_virtual, align 4
  %132 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bits_per_pixel, align 4
  %mul100 = mul i32 %133, %131
  %div101329 = lshr i32 %mul100, 3
  %134 = ptrtoint ptr %line_pad.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %line_pad.i, align 4
  %conv = zext i16 %135 to i32
  %sub102 = add nsw i32 %conv, -1
  %add103 = add nsw i32 %sub102, %div101329
  %neg = sub nsw i32 0, %conv
  %and = and i32 %add103, %neg
  %pseudo_palette = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 1
  %pseudo_palette108 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %136 = ptrtoint ptr %pseudo_palette108 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %pseudo_palette, ptr %pseudo_palette108, align 4
  %v_screen = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %v_screen to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %v_screen, align 4
  %139 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %138, ptr %139, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lynxfb_set_fbinfo, %if.then115)) #10
          to label %do.end118 [label %if.then115], !srcloc !234

if.then115:                                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %139, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.68, ptr noundef %142) #10
  br label %do.end118

do.end118:                                        ; preds = %if.then115, %do.end94
  %143 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %yres_virtual, align 4
  %mul120 = mul i32 %144, %and
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %145 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul120, ptr %screen_size, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %flags, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %147 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 4
  %148 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %type_aux, align 4
  %149 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %xpanstep.i, align 2
  %xpanstep121 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %151 = ptrtoint ptr %xpanstep121 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %xpanstep121, align 4
  %152 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %ypanstep.i, align 4
  %ypanstep122 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %154 = ptrtoint ptr %ypanstep122 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %ypanstep122, align 2
  %155 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %ywrapstep.i, align 2
  %ywrapstep123 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %157 = ptrtoint ptr %ywrapstep123 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %ywrapstep123, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %158 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 171, ptr %accel, align 4
  %arrayidx124 = getelementptr [2 x ptr], ptr @lynxfb_set_fbinfo.fixId, i32 0, i32 %index
  %159 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx124, align 4
  %call125 = tail call i32 @strscpy(ptr noundef %fix5, ptr noundef %160, i32 noundef 16) #10
  %161 = ptrtoint ptr %o_screen to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %o_screen, align 4
  %vidmem_start = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 9
  %163 = ptrtoint ptr %vidmem_start to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %vidmem_start, align 4
  %add127 = add i32 %164, %162
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %165 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %add127, ptr %smem_start, align 4
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %add127) #14
  %166 = ptrtoint ptr %vidmem_size3.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %vidmem_size3.i, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %168 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %smem_len, align 4
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %167) #14
  %169 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %smem_len, align 4
  %171 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %screen_size, align 4
  %line_length143 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %172 = ptrtoint ptr %line_length143 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and, ptr %line_length143, align 4
  %vidreg_start = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 10
  %173 = ptrtoint ptr %vidreg_start to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %vidreg_start, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 10
  %175 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %mmio_start, align 4
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %174) #14
  %vidreg_size = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 12
  %176 = ptrtoint ptr %vidreg_size to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %vidreg_size, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 11
  %178 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %mmio_len, align 4
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %177) #14
  %179 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %bits_per_pixel, align 4
  %181 = add i32 %180, -8
  %182 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %182)
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %switch.lookup, label %do.end118.lynxfb_set_visual_mode.exit_crit_edge

do.end118.lynxfb_set_visual_mode.exit_crit_edge:  ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %lynxfb_set_visual_mode.exit

switch.lookup:                                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.lynxfb_set_fbinfo, i32 0, i32 %182
  %184 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %184)
  %switch.load = load i32, ptr %switch.gep, align 4
  %visual3.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %185 = ptrtoint ptr %visual3.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %switch.load, ptr %visual3.i, align 4
  br label %lynxfb_set_visual_mode.exit

lynxfb_set_visual_mode.exit:                      ; preds = %switch.lookup, %do.end118.lynxfb_set_visual_mode.exit_crit_edge
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %186 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %activate, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %187 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %accel_flags, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %188 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %vmode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lynxfb_set_fbinfo, %if.then168)) #10
          to label %do.end176 [label %if.then168], !srcloc !234

if.then168:                                       ; preds = %lynxfb_set_visual_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %189 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cmap, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %191 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len, align 4
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %193 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %red, align 4
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %195 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %green, align 4
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %197 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %blue, align 4
  %transp = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 5
  %199 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %transp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.81, i32 noundef %190, i32 noundef %192, ptr noundef %194, ptr noundef %196, ptr noundef %198, ptr noundef %200) #10
  br label %do.end176

do.end176:                                        ; preds = %if.then168, %lynxfb_set_visual_mode.exit
  %cmap177 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call178 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap177, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %do.end184, label %do.body188

do.end184:                                        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #12
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  br label %exit

do.body188:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lynxfb_set_fbinfo, %if.then200)) #10
          to label %exit [label %if.then200], !srcloc !234

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %cmap177 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cmap177, align 4
  %len204 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %203 = ptrtoint ptr %len204 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %len204, align 4
  %red206 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %205 = ptrtoint ptr %red206 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %red206, align 4
  %green208 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %207 = ptrtoint ptr %green208 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %green208, align 4
  %blue210 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %209 = ptrtoint ptr %blue210 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %blue210, align 4
  %transp212 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 5
  %211 = ptrtoint ptr %transp212 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %transp212, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.85, i32 noundef %202, i32 noundef %204, ptr noundef %206, ptr noundef %208, ptr noundef %210, ptr noundef %212) #10
  br label %exit

exit:                                             ; preds = %if.then200, %do.body188, %do.end184
  %call216 = tail call i32 @lynxfb_ops_check_var(ptr noundef %var4, ptr noundef %info)
  ret i32 %call178
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_ops_pan_display(ptr noundef %var, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %crtc2 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2
  %call = tail call i32 @hw_sm750_pan_display(ptr noundef %crtc2, ptr noundef %var, ptr noundef nonnull %info) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_cursor_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynxfb_ops_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %region) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.lynxfb_par, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %o_screen = getelementptr inbounds %struct.lynxfb_par, ptr %3, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %o_screen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %o_screen, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %8 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line_length, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp2 = icmp eq i32 %shr, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %color3 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pseudo_palette, align 4
  %color4 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %14 = ptrtoint ptr %color4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %color4, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %color3, %cond.true ], [ %arrayidx, %cond.false ]
  %16 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond = load i32, ptr %cond.in, align 4
  %rop5 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %17 = ptrtoint ptr %rop5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rop5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not = icmp eq i32 %18, 0
  %cond7 = select i1 %cmp6.not, i32 12, i32 6
  %slock = getelementptr inbounds %struct.sm750_dev, ptr %5, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %accel = getelementptr inbounds %struct.sm750_dev, ptr %5, i32 0, i32 4
  %de_fillrect = getelementptr inbounds %struct.sm750_dev, ptr %5, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %de_fillrect to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %de_fillrect, align 4
  %21 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %region, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %23 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %call = tail call i32 %20(ptr noundef %accel, i32 noundef %7, i32 noundef %9, i32 noundef %shr, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %cond, i32 noundef %cond7) #10
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynxfb_ops_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %region) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %o_screen = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %o_screen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %o_screen, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line_length, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %9, 3
  %slock = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %accel = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 4
  %de_copyarea = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %de_copyarea to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %de_copyarea, align 4
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %12 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sx, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %14 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sy, align 4
  %16 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %region, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %18 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %call = tail call i32 %11(ptr noundef %accel, i32 noundef %5, i32 noundef %7, i32 noundef %13, i32 noundef %15, i32 noundef %5, i32 noundef %7, i32 noundef %shr, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef 12) #10
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynxfb_ops_imageblit(ptr noundef %info, ptr noundef %image) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %o_screen = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %o_screen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %o_screen, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line_length, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %9, 3
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not = icmp eq i8 %11, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visual, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %13, label %if.else [
    i32 2, label %if.end.if.then10_crit_edge
    i32 4, label %if.end.if.then10_crit_edge48
  ]

if.end.if.then10_crit_edge48:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge48
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %15 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pseudo_palette, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %17 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 %18
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %19 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bg_color, align 4
  %arrayidx12 = getelementptr i32, ptr %16, i32 %20
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fg_color13 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color14 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %fgcol.0.in = phi ptr [ %arrayidx, %if.then10 ], [ %fg_color13, %if.else ]
  %bgcol.0.in = phi ptr [ %arrayidx12, %if.then10 ], [ %bg_color14, %if.else ]
  %21 = ptrtoint ptr %bgcol.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %bgcol.0 = load i32, ptr %bgcol.0.in, align 4
  %22 = ptrtoint ptr %fgcol.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %fgcol.0 = load i32, ptr %fgcol.0.in, align 4
  %slock = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %accel = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 4
  %de_imageblit = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %de_imageblit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %de_imageblit, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width, align 4
  %shr17 = lshr i32 %28, 3
  %29 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %image, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %31 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dy, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %call = tail call i32 %24(ptr noundef %accel, ptr noundef %26, i32 noundef %shr17, i32 noundef 0, i32 noundef %5, i32 noundef %7, i32 noundef %shr, i32 noundef %30, i32 noundef %32, i32 noundef %28, i32 noundef %34, i32 noundef %fgcol.0, i32 noundef %bgcol.0, i32 noundef 12) #10
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_ops_check_var(ptr noundef %var, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %crtc2 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lynxfb_ops_check_var.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lynxfb_ops_check_var, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !234

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lynxfb_ops_check_var.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.99, i32 noundef %3, i32 noundef %5, i32 noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bits_per_pixel.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel.i.i, align 4
  %10 = add i32 %9, -8
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 29) #10
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %11, label %do.end.do.end10_crit_edge [
    i32 0, label %sw.epilog.sink.split.i.i.thread
    i32 1, label %do.end.sw.epilog.sink.split.i.i_crit_edge
    i32 2, label %do.end.sw.epilog.sink.split.i.i_crit_edge55
    i32 3, label %do.end.sw.epilog.sink.split.i.i_crit_edge56
  ]

do.end.sw.epilog.sink.split.i.i_crit_edge56:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

do.end.sw.epilog.sink.split.i.i_crit_edge55:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

do.end.sw.epilog.sink.split.i.i_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

sw.epilog.sink.split.i.i.thread:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %visual3.i.i52 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %visual3.i.i52 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %visual3.i.i52, align 4
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %14 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %red.i, align 4
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %length.i, align 4
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %16 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %green.i, align 4
  %length8.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %17 = ptrtoint ptr %length8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %length8.i, align 4
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %18 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %blue.i, align 4
  %length13.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %19 = ptrtoint ptr %length13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %length13.i, align 4
  %transp.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length15.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %20 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %length15.i, align 4
  %21 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %transp.i, align 4
  br label %if.end14

sw.epilog.sink.split.i.i:                         ; preds = %do.end.sw.epilog.sink.split.i.i_crit_edge, %do.end.sw.epilog.sink.split.i.i_crit_edge55, %do.end.sw.epilog.sink.split.i.i_crit_edge56
  %visual3.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %visual3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %visual3.i.i, align 4
  %23 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %11, label %sw.epilog.sink.split.i.i.do.end10_crit_edge [
    i32 3, label %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge
    i32 1, label %sw.bb19.i
    i32 2, label %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge57
  ]

sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge57:   ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44.i

sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge:     ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44.i

sw.epilog.sink.split.i.i.do.end10_crit_edge:      ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

sw.bb19.i:                                        ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %red21.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %24 = ptrtoint ptr %red21.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %red21.i, align 4
  %length25.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %25 = ptrtoint ptr %length25.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %length25.i, align 4
  %green27.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %26 = ptrtoint ptr %green27.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %green27.i, align 4
  %length31.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %27 = ptrtoint ptr %length31.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %length31.i, align 4
  %blue33.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %28 = ptrtoint ptr %blue33.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blue33.i, align 4
  %length37.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %29 = ptrtoint ptr %length37.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %length37.i, align 4
  %transp39.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length40.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %30 = ptrtoint ptr %length40.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %length40.i, align 4
  %31 = ptrtoint ptr %transp39.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %transp39.i, align 4
  br label %if.end14

sw.bb44.i:                                        ; preds = %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge, %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge57
  %red46.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %32 = ptrtoint ptr %red46.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %red46.i, align 4
  %length50.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %33 = ptrtoint ptr %length50.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %length50.i, align 4
  %green52.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %34 = ptrtoint ptr %green52.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %green52.i, align 4
  %length56.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %35 = ptrtoint ptr %length56.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %length56.i, align 4
  %blue58.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %36 = ptrtoint ptr %blue58.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %blue58.i, align 4
  %length62.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %37 = ptrtoint ptr %length62.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %length62.i, align 4
  br label %if.end14

do.end10:                                         ; preds = %sw.epilog.sink.split.i.i.do.end10_crit_edge, %do.end.do.end10_crit_edge
  %bits_per_pixel12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %38 = ptrtoint ptr %bits_per_pixel12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bits_per_pixel12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %39) #14
  br label %cleanup

if.end14:                                         ; preds = %sw.bb44.i, %sw.bb19.i, %sw.epilog.sink.split.i.i.thread
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %40 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %41 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %height, align 4
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %42 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %accel_flags, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %43 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %45 = ptrtoint ptr %bits_per_pixel15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bits_per_pixel15, align 4
  %shr = lshr i32 %46, 3
  %mul = mul i32 %shr, %44
  %line_pad = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %line_pad to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %line_pad, align 4
  %conv = zext i16 %48 to i32
  %sub = add nsw i32 %conv, -1
  %add = add i32 %sub, %mul
  %neg = sub nsw i32 0, %conv
  %and = and i32 %add, %neg
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %49 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %yres_virtual, align 4
  %mul19 = mul i32 %and, %50
  %vidmem_size = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 5
  %51 = ptrtoint ptr %vidmem_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vidmem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %mul19)
  %cmp = icmp ult i32 %52, %mul19
  br i1 %cmp, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 @hw_sm750_crtc_checkMode(ptr noundef %crtc2, ptr noundef %var) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -12, %do.end24 ], [ %call28, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750le_setBLANK(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_setBLANK(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750le_deWait() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_deWait() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_pan_display(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_ops_set_par(ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %output3 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3
  %var4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %5, %3
  %div53 = lshr i32 %mul, 3
  %line_pad = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %line_pad to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %line_pad, align 4
  %conv = zext i16 %7 to i32
  %sub = add nsw i32 %conv, -1
  %add = add nsw i32 %sub, %div53
  %neg = sub nsw i32 0, %conv
  %and = and i32 %add, %neg
  %line_length9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %8 = ptrtoint ptr %line_length9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %line_length9, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %and) #14
  %9 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_per_pixel, align 4
  %11 = add i32 %10, -8
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 29) #10
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %12, label %if.end.do.end16_crit_edge [
    i32 0, label %sw.epilog.sink.split.i.i.thread
    i32 1, label %if.end.sw.epilog.sink.split.i.i_crit_edge
    i32 2, label %if.end.sw.epilog.sink.split.i.i_crit_edge61
    i32 3, label %if.end.sw.epilog.sink.split.i.i_crit_edge62
  ]

if.end.sw.epilog.sink.split.i.i_crit_edge62:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

if.end.sw.epilog.sink.split.i.i_crit_edge61:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

if.end.sw.epilog.sink.split.i.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i.i

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

sw.epilog.sink.split.i.i.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %visual3.i.i55 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %visual3.i.i55 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %visual3.i.i55, align 4
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %15 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %red.i, align 4
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %length.i, align 4
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %17 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %green.i, align 4
  %length8.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %18 = ptrtoint ptr %length8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %length8.i, align 4
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %19 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %blue.i, align 4
  %length13.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %20 = ptrtoint ptr %length13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %length13.i, align 4
  %transp.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length15.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %21 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %length15.i, align 4
  %22 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %transp.i, align 4
  br label %if.end20

sw.epilog.sink.split.i.i:                         ; preds = %if.end.sw.epilog.sink.split.i.i_crit_edge, %if.end.sw.epilog.sink.split.i.i_crit_edge61, %if.end.sw.epilog.sink.split.i.i_crit_edge62
  %visual3.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %visual3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %visual3.i.i, align 4
  %24 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %12, label %sw.epilog.sink.split.i.i.do.end16_crit_edge [
    i32 3, label %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge
    i32 1, label %sw.bb19.i
    i32 2, label %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge63
  ]

sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge63:   ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44.i

sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge:     ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb44.i

sw.epilog.sink.split.i.i.do.end16_crit_edge:      ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

sw.bb19.i:                                        ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %red21.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %25 = ptrtoint ptr %red21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 11, ptr %red21.i, align 4
  %length25.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %26 = ptrtoint ptr %length25.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %length25.i, align 4
  %green27.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %27 = ptrtoint ptr %green27.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %green27.i, align 4
  %length31.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %28 = ptrtoint ptr %length31.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %length31.i, align 4
  %blue33.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %29 = ptrtoint ptr %blue33.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %blue33.i, align 4
  %length37.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %30 = ptrtoint ptr %length37.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %length37.i, align 4
  %transp39.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length40.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %31 = ptrtoint ptr %length40.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %length40.i, align 4
  %32 = ptrtoint ptr %transp39.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %transp39.i, align 4
  br label %if.end20

sw.bb44.i:                                        ; preds = %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge, %sw.epilog.sink.split.i.i.sw.bb44.i_crit_edge63
  %red46.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %33 = ptrtoint ptr %red46.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %red46.i, align 4
  %length50.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %34 = ptrtoint ptr %length50.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %length50.i, align 4
  %green52.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %35 = ptrtoint ptr %green52.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %green52.i, align 4
  %length56.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %36 = ptrtoint ptr %length56.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %length56.i, align 4
  %blue58.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %37 = ptrtoint ptr %blue58.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue58.i, align 4
  %length62.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %38 = ptrtoint ptr %length62.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %length62.i, align 4
  br label %if.end20

do.end16:                                         ; preds = %sw.epilog.sink.split.i.i.do.end16_crit_edge, %if.end.do.end16_crit_edge
  %width = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 15
  %39 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 14
  %40 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %height, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %41 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %accel_flags, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %10) #14
  br label %cleanup

if.end20:                                         ; preds = %sw.bb44.i, %sw.bb19.i, %sw.epilog.sink.split.i.i.thread
  %width57 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 15
  %42 = ptrtoint ptr %width57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %width57, align 4
  %height58 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 14
  %43 = ptrtoint ptr %height58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %height58, align 4
  %accel_flags59 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %44 = ptrtoint ptr %accel_flags59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %accel_flags59, align 4
  %crtc2 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2
  %call21 = tail call i32 @hw_sm750_crtc_setMode(ptr noundef %crtc2, ptr noundef %var4, ptr noundef %fix5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @hw_sm750_output_setMode(ptr noundef %output3, ptr noundef %var4, ptr noundef %fix5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %entry.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call24, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_ops_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %crtc2 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp = icmp ugt i32 %regno, 256
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %regno) #14
  br label %cleanup49

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %red, 77
  %mul6 = mul i32 %green, 151
  %add = add i32 %mul6, %mul
  %mul7 = mul i32 %blue, 28
  %add8 = add i32 %add, %mul7
  %shr = lshr i32 %add8, 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then5 ], [ %blue, %if.end.if.end9_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then5 ], [ %green, %if.end.if.end9_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then5 ], [ %red, %if.end.if.end9_crit_edge ]
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp10 = icmp eq i32 %5, 8
  br i1 %cmp10, label %land.lhs.true, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end9
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp11 = icmp eq i32 %7, 3
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %shr13 = lshr i32 %red.addr.0, 8
  %shr14 = lshr i32 %green.addr.0, 8
  %shr15 = lshr i32 %blue.addr.0, 8
  %conv = trunc i32 %regno to i16
  %conv16 = trunc i32 %shr13 to i16
  %conv17 = trunc i32 %shr14 to i16
  %conv18 = trunc i32 %shr15 to i16
  %call19 = tail call i32 @hw_sm750_setColReg(ptr noundef %crtc2, i16 noundef zeroext %conv, i16 noundef zeroext %conv16, i16 noundef zeroext %conv17, i16 noundef zeroext %conv18) #10
  br label %cleanup49

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %visual22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %visual22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %visual22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp23 = icmp eq i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp26 = icmp ult i32 %regno, 256
  %or.cond = and i1 %cmp26, %cmp23
  br i1 %or.cond, label %if.then28, label %if.end20.cleanup49_crit_edge

if.end20.cleanup49_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

if.then28:                                        ; preds = %if.end20
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %5, label %if.then28.cleanup49_crit_edge [
    i32 16, label %if.then28.cleanup_crit_edge
    i32 32, label %if.then28.cleanup_crit_edge92
    i32 24, label %if.then28.cleanup_crit_edge93
  ]

if.then28.cleanup_crit_edge93:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28.cleanup_crit_edge92:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28.cleanup49_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

cleanup:                                          ; preds = %if.then28.cleanup_crit_edge, %if.then28.cleanup_crit_edge92, %if.then28.cleanup_crit_edge93
  %red40 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.0, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %12
  %shr.i = lshr i32 %and.i, %sub.i
  %13 = ptrtoint ptr %red40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %red40, align 4
  %shl.i = shl i32 %shr.i, %14
  %green42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i80 = and i32 %green.addr.0, 65535
  %length.i81 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %15 = ptrtoint ptr %length.i81 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i81, align 4
  %sub.i82 = sub i32 16, %16
  %shr.i83 = lshr i32 %and.i80, %sub.i82
  %17 = ptrtoint ptr %green42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %green42, align 4
  %shl.i84 = shl i32 %shr.i83, %18
  %or = or i32 %shl.i84, %shl.i
  %blue44 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i85 = and i32 %blue.addr.0, 65535
  %length.i86 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %19 = ptrtoint ptr %length.i86 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i86, align 4
  %sub.i87 = sub i32 16, %20
  %shr.i88 = lshr i32 %and.i85, %sub.i87
  %21 = ptrtoint ptr %blue44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blue44, align 4
  %shl.i89 = shl i32 %shr.i88, %22
  %or46 = or i32 %or, %shl.i89
  %arrayidx = getelementptr %struct.lynxfb_par, ptr %1, i32 0, i32 1, i32 %regno
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or46, ptr %arrayidx, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup, %if.then28.cleanup49_crit_edge, %if.end20.cleanup49_crit_edge, %if.then12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call19, %if.then12 ], [ 0, %cleanup ], [ -22, %if.end20.cleanup49_crit_edge ], [ -22, %if.then28.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_ops_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lynxfb_ops_blank.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lynxfb_ops_blank, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !234

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lynxfb_ops_blank.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.96, i32 noundef %blank) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %par3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par3, align 4
  %output4 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3
  %proc_setBLANK = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %proc_setBLANK to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_setBLANK, align 4
  %call5 = tail call i32 %3(ptr noundef %output4, i32 noundef %blank) #10
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_ops_cursor(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %fbcursor) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %cursor3 = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11
  %image = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5
  %width = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %max_w = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 3
  %4 = ptrtoint ptr %max_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %max_h = getelementptr inbounds %struct.lynxfb_par, ptr %1, i32 0, i32 2, i32 11, i32 4
  %8 = ptrtoint ptr %max_h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp ugt i32 %7, %9
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %depth = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 6
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp8 = icmp ugt i8 %11, 1
  br i1 %cmp8, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  tail call void @sm750_hw_cursor_disable(ptr noundef %cursor3) #10
  %12 = ptrtoint ptr %fbcursor to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fbcursor, align 4
  %14 = and i16 %13, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  tail call void @sm750_hw_cursor_setSize(ptr noundef %cursor3, i32 noundef %16, i32 noundef %18) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %19 = ptrtoint ptr %fbcursor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fbcursor, align 4
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool20.not = icmp eq i16 %21, 0
  br i1 %tobool20.not, label %if.end16.if.end26_crit_edge, label %if.then21

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %image, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %24 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xoffset, align 4
  %sub = sub i32 %23, %25
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yoffset, align 4
  %sub25 = sub i32 %27, %29
  tail call void @sm750_hw_cursor_setPos(ptr noundef %cursor3, i32 noundef %sub, i32 noundef %sub25) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end16.if.end26_crit_edge
  %30 = ptrtoint ptr %fbcursor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fbcursor, align 4
  %32 = and i16 %31, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool30.not = icmp eq i16 %32, 0
  br i1 %tobool30.not, label %if.end26.if.end77_crit_edge, label %if.then31

if.end26.if.end77_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %33 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %red, align 4
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 4
  %35 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i16, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx, align 2
  %39 = and i16 %38, -2048
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %40 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %green, align 4
  %arrayidx38 = getelementptr i16, ptr %41, i32 %36
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx38, align 2
  %44 = lshr i16 %43, 5
  %45 = and i16 %44, 2016
  %or125 = or i16 %45, %39
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %46 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %blue, align 4
  %arrayidx44 = getelementptr i16, ptr %47, i32 %36
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx44, align 2
  %50 = lshr i16 %49, 11
  %or48126 = or i16 %or125, %50
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 5
  %51 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bg_color, align 4
  %arrayidx53 = getelementptr i16, ptr %34, i32 %52
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx53, align 2
  %55 = and i16 %54, -2048
  %arrayidx60 = getelementptr i16, ptr %41, i32 %52
  %56 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx60, align 2
  %58 = lshr i16 %57, 5
  %59 = and i16 %58, 2016
  %or64127 = or i16 %59, %55
  %arrayidx69 = getelementptr i16, ptr %47, i32 %52
  %60 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx69, align 2
  %62 = lshr i16 %61, 11
  %or73128 = or i16 %or64127, %62
  %conv75 = zext i16 %or48126 to i32
  %conv76 = zext i16 %or73128 to i32
  tail call void @sm750_hw_cursor_setColor(ptr noundef %cursor3, i32 noundef %conv75, i32 noundef %conv76) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then31, %if.end26.if.end77_crit_edge
  %63 = ptrtoint ptr %fbcursor to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fbcursor, align 4
  %65 = and i16 %64, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool81.not = icmp eq i16 %65, 0
  br i1 %tobool81.not, label %if.end77.if.end84_crit_edge, label %if.then82

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 2
  %66 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rop, align 4
  %data = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 5, i32 7
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 3
  %70 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mask, align 4
  tail call void @sm750_hw_cursor_setData(ptr noundef %cursor3, i16 noundef zeroext %67, ptr noundef %69, ptr noundef %71) #10
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end77.if.end84_crit_edge
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %fbcursor, i32 0, i32 1
  %72 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool85.not = icmp eq i16 %73, 0
  br i1 %tobool85.not, label %if.end84.cleanup_crit_edge, label %if.then86

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sm750_hw_cursor_enable(ptr noundef %cursor3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end84.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false6.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_crtc_setMode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_output_setMode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_setColReg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_cursor_setSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_cursor_setPos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_cursor_setColor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_cursor_setData(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_cursor_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_sm750_crtc_checkMode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_suspend(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @console_lock() #10
  %fbinfo = getelementptr inbounds %struct.sm750_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbinfo, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_set_suspend(ptr noundef nonnull %3, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr %struct.sm750_dev, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_set_suspend(ptr noundef nonnull %5, i32 noundef 1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @console_unlock() #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynxfb_resume(ptr noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @console_lock() #10
  %call1 = tail call i32 @hw_sm750_inithw(ptr noundef %1, ptr noundef %add.ptr) #10
  %fbinfo = getelementptr inbounds %struct.sm750_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbinfo, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %par2 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par2, align 4
  %vstart = getelementptr inbounds %struct.lynxfb_par, ptr %5, i32 0, i32 2, i32 11, i32 5
  %6 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vstart, align 4
  %size = getelementptr inbounds %struct.lynxfb_par, ptr %5, i32 0, i32 2, i32 11, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  tail call void @mmioset(ptr noundef %7, i32 noundef 0, i32 noundef %9) #10
  %v_screen = getelementptr inbounds %struct.lynxfb_par, ptr %5, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %v_screen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v_screen, align 4
  %vidmem_size = getelementptr inbounds %struct.lynxfb_par, ptr %5, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %vidmem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vidmem_size, align 4
  tail call void @mmioset(ptr noundef %11, i32 noundef 0, i32 noundef %13) #10
  %call5 = tail call i32 @lynxfb_ops_set_par(ptr noundef nonnull %3)
  tail call void @fb_set_suspend(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.sm750_dev, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %if.then9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %par10 = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 30
  %16 = ptrtoint ptr %par10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par10, align 4
  %vstart13 = getelementptr inbounds %struct.lynxfb_par, ptr %17, i32 0, i32 2, i32 11, i32 5
  %18 = ptrtoint ptr %vstart13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vstart13, align 4
  %size14 = getelementptr inbounds %struct.lynxfb_par, ptr %17, i32 0, i32 2, i32 11, i32 2
  %20 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size14, align 4
  tail call void @mmioset(ptr noundef %19, i32 noundef 0, i32 noundef %21) #10
  %v_screen15 = getelementptr inbounds %struct.lynxfb_par, ptr %17, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %v_screen15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v_screen15, align 4
  %vidmem_size16 = getelementptr inbounds %struct.lynxfb_par, ptr %17, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %vidmem_size16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vidmem_size16, align 4
  tail call void @mmioset(ptr noundef %23, i32 noundef 0, i32 noundef %25) #10
  %call17 = tail call i32 @lynxfb_ops_set_par(ptr noundef nonnull %15)
  tail call void @fb_set_suspend(ptr noundef nonnull %15, i32 noundef 0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end.if.end18_crit_edge
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %26 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %power, align 8
  tail call void @console_unlock() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !181, !183, !184, !185, !186, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !210, !212, !213, !214, !216, !217, !219, !220, !221, !223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @__initcall__kmod_sm750fb__310_1182_lynxfb_init6, !1, !"__initcall__kmod_sm750fb__310_1182_lynxfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1182, i32 1}
!2 = !{ptr @__exitcall_lynxfb_exit, !3, !"__exitcall_lynxfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1188, i32 1}
!4 = !{ptr @__param_g_option, !5, !"__param_g_option", i1 false, i1 false}
!5 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1190, i32 1}
!6 = !{ptr @__UNIQUE_ID_g_optiontype311, !5, !"__UNIQUE_ID_g_optiontype311", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_g_option312, !8, !"__UNIQUE_ID_g_option312", i1 false, i1 false}
!8 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1192, i32 1}
!9 = !{ptr @__UNIQUE_ID_author313, !10, !"__UNIQUE_ID_author313", i1 false, i1 false}
!10 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1202, i32 1}
!11 = !{ptr @__UNIQUE_ID_author314, !12, !"__UNIQUE_ID_author314", i1 false, i1 false}
!12 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1203, i32 1}
!13 = !{ptr @__UNIQUE_ID_description315, !14, !"__UNIQUE_ID_description315", i1 false, i1 false}
!14 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1204, i32 1}
!15 = !{ptr @__UNIQUE_ID_file316, !16, !"__UNIQUE_ID_file316", i1 false, i1 false}
!16 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1205, i32 1}
!17 = !{ptr @__UNIQUE_ID_license317, !16, !"__UNIQUE_ID_license317", i1 false, i1 false}
!18 = !{ptr @g_option, !19, !"g_option", i1 false, i1 false}
!19 = !{!"../drivers/staging/sm750fb/sm750.c", i32 40, i32 14}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1175, i32 21}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1106, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lynxfb_setup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @lynxfb_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1110, i32 2}
!30 = !{ptr @lynxfb_setup._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lynxfb_setup._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1128, i32 33}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1130, i32 21}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1132, i32 28}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1134, i32 28}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1147, i32 2}
!42 = !{ptr @lynxfb_setup._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lynxfb_setup._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @g_settings, !45, !"g_settings", i1 false, i1 false}
!45 = !{!"../drivers/staging/sm750fb/sm750.c", i32 38, i32 14}
!46 = distinct !{null, !47, !"g_noaccel", i1 false, i1 false}
!47 = !{!"../drivers/staging/sm750fb/sm750.c", i32 34, i32 12}
!48 = distinct !{null, !49, !"g_nomtrr", i1 false, i1 false}
!49 = !{!"../drivers/staging/sm750fb/sm750.c", i32 35, i32 12}
!50 = distinct !{null, !51, !"g_dualview", i1 false, i1 false}
!51 = !{!"../drivers/staging/sm750fb/sm750.c", i32 39, i32 12}
!52 = !{ptr @lynxfb_driver, !53, !"lynxfb_driver", i1 false, i1 false}
!53 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1160, i32 26}
!54 = !{ptr @smi_pci_table, !55, !"smi_pci_table", i1 false, i1 false}
!55 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1151, i32 35}
!56 = !{ptr @lynxfb_pci_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1037, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1003, i32 38}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/sm750fb/sm750.c", i32 884, i32 3}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sm750fb_setup._entry, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @sm750fb_setup._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/sm750fb/sm750.c", i32 889, i32 3}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sm750fb_setup._entry.20, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sm750fb_setup._entry_ptr.23, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/sm750fb/sm750.c", i32 890, i32 3}
!75 = !{ptr @sm750fb_setup._entry.24, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sm750fb_setup._entry_ptr.26, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/sm750fb/sm750.c", i32 892, i32 21}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/sm750fb/sm750.c", i32 894, i32 28}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/sm750fb/sm750.c", i32 896, i32 28}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/sm750fb/sm750.c", i32 898, i32 28}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/sm750fb/sm750.c", i32 900, i32 28}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/sm750fb/sm750.c", i32 902, i32 28}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/sm750fb/sm750.c", i32 904, i32 28}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/sm750fb/sm750.c", i32 906, i32 28}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/sm750fb/sm750.c", i32 911, i32 5}
!95 = !{ptr @sm750fb_setup._entry.35, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sm750fb_setup._entry_ptr.37, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/sm750fb/sm750.c", i32 915, i32 5}
!99 = !{ptr @sm750fb_setup._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sm750fb_setup._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/sm750fb/sm750.c", i32 918, i32 5}
!103 = !{ptr @sm750fb_setup._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @sm750fb_setup._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @g_hwcursor, !106, !"g_hwcursor", i1 false, i1 false}
!106 = !{!"../drivers/staging/sm750fb/sm750.c", i32 33, i32 12}
!107 = !{ptr @g_fbmode, !108, !"g_fbmode", i1 false, i1 false}
!108 = !{!"../drivers/staging/sm750fb/sm750.c", i32 36, i32 20}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/sm750fb/sm750.c", i32 692, i32 3}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/sm750fb/sm750.c", i32 693, i32 3}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/sm750fb/sm750.c", i32 694, i32 3}
!115 = !{ptr @lynxfb_set_fbinfo.mdb_desc, !116, !"mdb_desc", i1 false, i1 false}
!116 = !{!"../drivers/staging/sm750fb/sm750.c", i32 691, i32 28}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/sm750fb/sm750.c", i32 698, i32 16}
!119 = !{ptr @lynxfb_set_fbinfo.fixId, !120, !"fixId", i1 false, i1 false}
!120 = !{!"../drivers/staging/sm750fb/sm750.c", i32 697, i32 21}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/sm750fb/sm750.c", i32 725, i32 2}
!123 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lynxfb_set_fbinfo._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lynxfb_set_fbinfo._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/sm750fb/sm750.c", i32 756, i32 4}
!128 = !{ptr @lynxfb_set_fbinfo._entry.50, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @lynxfb_set_fbinfo._entry_ptr.52, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/sm750fb/sm750.c", i32 761, i32 4}
!132 = !{ptr @lynxfb_set_fbinfo._entry.53, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @lynxfb_set_fbinfo._entry_ptr.55, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/sm750fb/sm750.c", i32 766, i32 4}
!136 = !{ptr @lynxfb_set_fbinfo._entry.56, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lynxfb_set_fbinfo._entry_ptr.58, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/sm750fb/sm750.c", i32 769, i32 4}
!140 = !{ptr @lynxfb_set_fbinfo._entry.59, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @lynxfb_set_fbinfo._entry_ptr.61, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/sm750fb/sm750.c", i32 771, i32 4}
!144 = !{ptr @lynxfb_set_fbinfo._entry.62, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @lynxfb_set_fbinfo._entry_ptr.64, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/sm750fb/sm750.c", i32 779, i32 2}
!148 = !{ptr @lynxfb_set_fbinfo._entry.65, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @lynxfb_set_fbinfo._entry_ptr.67, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/sm750fb/sm750.c", i32 805, i32 2}
!152 = !{ptr @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug307, !151, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/sm750fb/sm750.c", i32 820, i32 2}
!155 = !{ptr @lynxfb_set_fbinfo._entry.69, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @lynxfb_set_fbinfo._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/sm750fb/sm750.c", i32 829, i32 2}
!159 = !{ptr @lynxfb_set_fbinfo._entry.72, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @lynxfb_set_fbinfo._entry_ptr.74, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/sm750fb/sm750.c", i32 833, i32 2}
!163 = !{ptr @lynxfb_set_fbinfo._entry.75, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @lynxfb_set_fbinfo._entry_ptr.77, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/sm750fb/sm750.c", i32 835, i32 2}
!167 = !{ptr @lynxfb_set_fbinfo._entry.78, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @lynxfb_set_fbinfo._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/sm750fb/sm750.c", i32 844, i32 2}
!171 = !{ptr @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug308, !170, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/sm750fb/sm750.c", i32 851, i32 3}
!174 = !{ptr @lynxfb_set_fbinfo._entry.82, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @lynxfb_set_fbinfo._entry_ptr.84, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/sm750fb/sm750.c", i32 855, i32 2}
!178 = !{ptr @lynxfb_set_fbinfo.__UNIQUE_ID_ddebug309, !177, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!179 = !{ptr @lynx750_ext, !180, !"lynx750_ext", i1 false, i1 false}
!180 = !{!"../drivers/staging/sm750fb/sm750.c", i32 42, i32 34}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/sm750fb/sm750.c", i32 619, i32 3}
!183 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @sm750fb_set_drv._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @sm750fb_set_drv._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @lynxfb_ops, !187, !"lynxfb_ops", i1 false, i1 false}
!187 = !{!"../drivers/staging/sm750fb/sm750.c", i32 664, i32 22}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/staging/sm750fb/sm750.c", i32 380, i32 2}
!190 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @lynxfb_ops_set_par._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @lynxfb_ops_set_par._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/sm750fb/sm750.c", i32 393, i32 3}
!195 = !{ptr @lynxfb_ops_set_par._entry.90, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @lynxfb_ops_set_par._entry_ptr.92, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/staging/sm750fb/sm750.c", i32 536, i32 3}
!199 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @lynxfb_ops_setcolreg._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @lynxfb_ops_setcolreg._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/staging/sm750fb/sm750.c", i32 577, i32 2}
!204 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @lynxfb_ops_blank.__UNIQUE_ID_ddebug306, !203, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/staging/sm750fb/sm750.c", i32 37, i32 35}
!208 = distinct !{null, !209, !"g_def_fbmode", i1 false, i1 false}
!209 = !{!"../drivers/staging/sm750fb/sm750.c", i32 37, i32 20}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/sm750fb/sm750.c", i32 489, i32 2}
!212 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @lynxfb_ops_check_var.__UNIQUE_ID_ddebug305, !211, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!214 = !{ptr @lynxfb_ops_check_var._entry, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/staging/sm750fb/sm750.c", i32 497, i32 3}
!216 = !{ptr @lynxfb_ops_check_var._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/staging/sm750fb/sm750.c", i32 511, i32 3}
!219 = !{ptr @lynxfb_ops_check_var._entry.100, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @lynxfb_ops_check_var._entry_ptr.102, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @lynxfb_pm_ops, !222, !"lynxfb_pm_ops", i1 false, i1 false}
!222 = !{!"../drivers/staging/sm750fb/sm750.c", i32 1158, i32 8}
!223 = !{ptr @__param_str_g_option, !5, !"__param_str_g_option", i1 false, i1 false}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{!"auto-init"}
!234 = !{i64 2148719774, i64 2148719779, i64 2148719792, i64 2148719836, i64 2148719870, i64 2148719891}
