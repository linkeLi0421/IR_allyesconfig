; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/gxt4500.c_pt.bc'
source_filename = "../drivers/video/fbdev/gxt4500.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cardinfo = type { i32, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
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
%struct.gxt4500_par = type { ptr, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }

@__initcall__kmod_gxt4500__305_784_gxt4500_init6 = internal global ptr @gxt4500_init, section ".initcall6.init", align 4
@gxt4500_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @gxt4500_pci_tbl, ptr @gxt4500_probe, ptr @gxt4500_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gxt4500_exit = internal global ptr @gxt4500_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [49 x i8] c"gxt4500.author=Paul Mackerras <paulus@samba.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [75 x i8] c"gxt4500.description=FBDev driver for IBM GXT4500P/6500P and GXT4000P/6000P\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [41 x i8] c"gxt4500.file=drivers/video/fbdev/gxt4500\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [20 x i8] c"gxt4500.license=GPL\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [20 x i8] c"gxt4500.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype310 = internal constant [35 x i8] c"gxt4500.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option311 = internal constant [83 x i8] c"gxt4500.parm=mode_option:Specify resolution as \22<xres>x<yres>[-<bpp>][@<refresh>]\22\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gxt4500\00", [24 x i8] zeroinitializer }, align 32
@gxt4500_pci_tbl = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4116, i32 540, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4116, i32 539, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4116, i32 366, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4116, i32 368, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gxt4500: cannot enable PCI device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gxt4500_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/fbdev/gxt4500.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr = internal global ptr @gxt4500_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gxt4500 regs\00", [19 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gxt4500: cannot get registers\0A\00", [33 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.9 = internal global ptr @gxt4500_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gxt4500 FB\00", [21 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gxt4500: cannot get framebuffer\0A\00", [63 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.13 = internal global ptr @gxt4500_probe._entry.11, section ".printk_index", align 4
@cardinfo = internal constant { [4 x %struct.cardinfo], [32 x i8] } { [4 x %struct.cardinfo] [%struct.cardinfo { i32 9259, ptr @.str.35 }, %struct.cardinfo { i32 9259, ptr @.str.36 }, %struct.cardinfo { i32 40000, ptr @.str.37 }, %struct.cardinfo { i32 40000, ptr @.str.38 }], [32 x i8] zeroinitializer }, align 32
@gxt4500_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"IBM GXT4500P\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 8, i16 1, i16 0, i32 0, i32 0, i32 131072, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gxt4500: cannot map registers\0A\00", [33 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.16 = internal global ptr @gxt4500_probe._entry.14, section ".printk_index", align 4
@gxt4500_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gxt4500: cannot map framebuffer\0A\00", [63 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.19 = internal global ptr @gxt4500_probe._entry.17, section ".printk_index", align 4
@gxt4500_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gxt4500_check_var, ptr @gxt4500_set_par, ptr @gxt4500_setcolreg, ptr null, ptr @gxt4500_blank, ptr @gxt4500_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gxt4500: cannot allocate cmap\0A\00", [33 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.22 = internal global ptr @gxt4500_probe._entry.20, section ".printk_index", align 4
@defaultmode = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 1024, i32 9295, i32 248, i32 48, i32 38, i32 1, i32 112, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gxt4500: cannot find valid video mode\0A\00", [57 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.25 = internal global ptr @gxt4500_probe._entry.23, section ".printk_index", align 4
@gxt4500_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gxt4500: cannot set video mode\0A\00", [62 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.28 = internal global ptr @gxt4500_probe._entry.26, section ".printk_index", align 4
@gxt4500_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"gxt4500: cannot register framebuffer\0A\00", [58 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.31 = internal global ptr @gxt4500_probe._entry.29, section ".printk_index", align 4
@gxt4500_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@gxt4500_probe._entry_ptr.34 = internal global ptr @gxt4500_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IBM GXT4500P\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IBM GXT6500P\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IBM GXT4000P\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IBM GXT6000P\00", [19 x i8] zeroinitializer }, align 32
@pixsize = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\02\02\02\04\04", [26 x i8] zeroinitializer }, align 32
@eightbits = internal constant { %struct.fb_bitfield, [20 x i8] } { %struct.fb_bitfield { i32 0, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mdivtab = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"?\00 \10(\14*\15\0A%2\19\0C&\13\09\04\22\11\08$\12)4\1A-6\1B\0D\06#18\1C.\17\0B\05\02!0\18,\16+5:\1D\0E'39<\1E/7;=>\1F\0F\07\03\01", [32 x i8] zeroinitializer }, align 32
@ndivtab = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"\00\80\C0\E0\F0x\BC^/\17\0B\85\C2\E1p8\9CN\A7\D3\E9\F4\FA\FD\FE\7F\BF\DF\EFw;\1D\8E\C7\E3q\B8\DCn\B7[-\16\8B\C5\E2\F1\F8\FC~?\9F\CFg\B3\D9l\B6\DBm6\9BM&\13\89\C4b\B1\D8\EC\F6\FB}\BE_\AFW+\95J%\92I\A4R)\94\CAe\B2Y,\96\CB\E5\F2y<\1E\0F\07\83A \90H$\12\09\84B\A1P(\14\8AE\A2\D1\E8t\BA\DD\EE\F7{=\9EO'\93\C9\E4r9\1C\0E\87\C3a0\18\8C\C6c1\98\CC\E6s\B9\\.\97K\A5\D2i", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@watfmt = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A\01\02\00\00\03", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"gxt4500_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 768, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 160, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 778, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"gxt4500_pci_tbl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 754, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 626, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 632, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 634, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 639, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 641, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"cardinfo\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 189, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"gxt4500_fix\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 593, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 660, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 668, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"gxt4500_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 602, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 693, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"defaultmode\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 163, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 700, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 705, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 710, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 713, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 190, i32 48 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 191, i32 48 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 192, i32 49 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 193, i32 49 }
@___asan_gen_.156 = private unnamed_addr constant [8 x i8] c"pixsize\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 70, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant [10 x i8] c"eightbits\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 322, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [8 x i8] c"mdivtab\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 206, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant [8 x i8] c"ndivtab\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 216, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"watfmt\00", align 1
@___asan_gen_.169 = private constant [33 x i8] c"../drivers/video/fbdev/gxt4500.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 133, i32 28 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__UNIQUE_ID_mode_option311, ptr @__UNIQUE_ID_mode_optiontype310, ptr @__exitcall_gxt4500_exit, ptr @__initcall__kmod_gxt4500__305_784_gxt4500_init6, ptr @__param_mode_option, ptr @gxt4500_exit, ptr @gxt4500_probe._entry, ptr @gxt4500_probe._entry.11, ptr @gxt4500_probe._entry.14, ptr @gxt4500_probe._entry.17, ptr @gxt4500_probe._entry.20, ptr @gxt4500_probe._entry.23, ptr @gxt4500_probe._entry.26, ptr @gxt4500_probe._entry.29, ptr @gxt4500_probe._entry.32, ptr @gxt4500_probe._entry.7, ptr @gxt4500_probe._entry_ptr, ptr @gxt4500_probe._entry_ptr.13, ptr @gxt4500_probe._entry_ptr.16, ptr @gxt4500_probe._entry_ptr.19, ptr @gxt4500_probe._entry_ptr.22, ptr @gxt4500_probe._entry_ptr.25, ptr @gxt4500_probe._entry_ptr.28, ptr @gxt4500_probe._entry_ptr.31, ptr @gxt4500_probe._entry_ptr.34, ptr @gxt4500_probe._entry_ptr.9, ptr @gxt4500_driver, ptr @mode_option, ptr @.str, ptr @gxt4500_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @cardinfo, ptr @gxt4500_fix, ptr @.str.15, ptr @.str.18, ptr @gxt4500_ops, ptr @.str.21, ptr @defaultmode, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pixsize, ptr @eightbits, ptr @mdivtab, ptr @ndivtab, ptr @watfmt], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardinfo to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaultmode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxt4500_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixsize to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eightbits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdivtab to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndivtab to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watfmt to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull @mode_option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @gxt4500_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gxt4500_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @gxt4500_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #9
  %0 = call ptr @memset(ptr %var, i32 255, i32 160)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %sub = sub i32 1, %2
  %add = add i32 %sub, %4
  %cond = select i1 %cmp, i32 0, i32 %add
  %call9 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %cond, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %arrayidx18 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx18, align 8
  %end22 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %7 = ptrtoint ptr %end22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp23 = icmp eq i32 %8, 0
  %sub32 = sub i32 1, %6
  %add33 = add i32 %sub32, %8
  %cond35 = select i1 %cmp23, i32 0, i32 %add33
  %call36 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %cond35, ptr noundef nonnull @.str.10, i32 noundef 0) #9
  %tobool37.not = icmp eq ptr %call36, null
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool37.not, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.12) #12
  br label %err_free_regs

if.end43:                                         ; preds = %if.end16
  %call45 = tail call ptr @framebuffer_alloc(i32 noundef 96, ptr noundef %dev42) #9
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end43.err_free_fb_crit_edge, label %if.end48

if.end43.err_free_fb_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_fb

if.end48:                                         ; preds = %if.end43
  %par49 = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 30
  %9 = ptrtoint ptr %par49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par49, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %arrayidx50 = getelementptr [4 x %struct.cardinfo], ptr @cardinfo, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx50, align 4
  %refclk_ps51 = getelementptr inbounds %struct.gxt4500_par, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %refclk_ps51 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %refclk_ps51, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %fix, ptr @gxt4500_fix, i32 68)
  %cardname = getelementptr [4 x %struct.cardinfo], ptr @cardinfo, i32 0, i32 %12, i32 1
  %17 = ptrtoint ptr %cardname to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cardname, align 4
  %call54 = tail call i32 @strlcpy(ptr noundef %fix, ptr noundef %18, i32 noundef 16) #9
  %pseudo_palette = getelementptr inbounds %struct.gxt4500_par, ptr %10, i32 0, i32 8
  %pseudo_palette56 = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 27
  %19 = ptrtoint ptr %pseudo_palette56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pseudo_palette, ptr %pseudo_palette56, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 7, i32 10
  %20 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %2, ptr %mmio_start, align 4
  %call58 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #9
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call58, ptr %10, align 4
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.15) #12
  br label %err_free_all

if.end66:                                         ; preds = %if.end48
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %6, ptr %smem_start, align 4
  %23 = ptrtoint ptr %end22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp71 = icmp eq i32 %24, 0
  br i1 %cmp71, label %if.end66.cond.end82_crit_edge, label %cond.false73

if.end66.cond.end82_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end82

cond.false73:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18, align 8
  %sub80 = add i32 %24, 1
  %add81 = sub i32 %sub80, %26
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false73, %if.end66.cond.end82_crit_edge
  %cond83 = phi i32 [ %add81, %cond.false73 ], [ 0, %if.end66.cond.end82_crit_edge ]
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond83, ptr %smem_len, align 4
  %call85 = tail call ptr @pci_ioremap_wc_bar(ptr noundef %pdev, i32 noundef 1) #9
  %28 = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 25
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call85, ptr %28, align 4
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %do.end90, label %if.end92

do.end90:                                         ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.18) #12
  br label %err_unmap_regs

if.end92:                                         ; preds = %cond.end82
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call45, ptr %driver_data.i.i, align 4
  %wc_cookie = getelementptr inbounds %struct.gxt4500_par, ptr %10, i32 0, i32 1
  %31 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wc_cookie, align 4
  %call98 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 64, i32 noundef 3355392) #9
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 20
  %32 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gxt4500_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 2
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12288, ptr %flags, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 12
  %call99 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end106, label %do.end104

do.end104:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.21) #12
  br label %err_unmap_all

if.end106:                                        ; preds = %if.end92
  %call107 = tail call i32 @gxt4500_blank(i32 noundef 0, ptr noundef nonnull %call45)
  %34 = load ptr, ptr @mode_option, align 4
  %call108 = call i32 @fb_find_mode(ptr noundef nonnull %var, ptr noundef nonnull %call45, ptr noundef %34, ptr noundef null, i32 noundef 0, ptr noundef nonnull @defaultmode, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %do.end113, label %if.end115

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.24) #12
  br label %err_free_cmap

if.end115:                                        ; preds = %if.end106
  %var116 = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 6
  %35 = call ptr @memcpy(ptr %var116, ptr %var, i32 160)
  %call117 = call i32 @gxt4500_set_par(ptr noundef nonnull %call45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %err_free_cmap

if.end124:                                        ; preds = %if.end115
  %call125 = call i32 @register_framebuffer(ptr noundef nonnull %call45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %do.end130, label %do.end135

do.end130:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.30) #12
  br label %err_free_cmap

do.end135:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %node = getelementptr inbounds %struct.fb_info, ptr %call45, i32 0, i32 1
  %36 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %node, align 4
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %37, ptr noundef %fix) #12
  br label %cleanup

err_free_cmap:                                    ; preds = %do.end130, %do.end122, %do.end113
  call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %err_unmap_all

err_unmap_all:                                    ; preds = %err_free_cmap, %do.end104
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %28, align 4
  call void @iounmap(ptr noundef %39) #9
  br label %err_unmap_regs

err_unmap_regs:                                   ; preds = %err_unmap_all, %do.end90
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %10, align 4
  call void @iounmap(ptr noundef %41) #9
  br label %err_free_all

err_free_all:                                     ; preds = %err_unmap_regs, %do.end64
  call void @framebuffer_release(ptr noundef nonnull %call45) #9
  br label %err_free_fb

err_free_fb:                                      ; preds = %err_free_all, %if.end43.err_free_fb_crit_edge
  %42 = ptrtoint ptr %end22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp146 = icmp eq i32 %43, 0
  br i1 %cmp146, label %err_free_fb.cond.end157_crit_edge, label %cond.false148

err_free_fb.cond.end157_crit_edge:                ; preds = %err_free_fb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end157

cond.false148:                                    ; preds = %err_free_fb
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx18, align 8
  %sub155 = add i32 %43, 1
  %add156 = sub i32 %sub155, %45
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false148, %err_free_fb.cond.end157_crit_edge
  %cond158 = phi i32 [ %add156, %cond.false148 ], [ 0, %err_free_fb.cond.end157_crit_edge ]
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %cond158) #9
  br label %err_free_regs

err_free_regs:                                    ; preds = %cond.end157, %do.end41
  %46 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp162 = icmp eq i32 %47, 0
  br i1 %cmp162, label %err_free_regs.cond.end173_crit_edge, label %cond.false164

err_free_regs.cond.end173_crit_edge:              ; preds = %err_free_regs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end173

cond.false164:                                    ; preds = %err_free_regs
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resource, align 8
  %sub171 = add i32 %47, 1
  %add172 = sub i32 %sub171, %49
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false164, %err_free_regs.cond.end173_crit_edge
  %cond174 = phi i32 [ %add172, %cond.false164 ], [ 0, %err_free_regs.cond.end173_crit_edge ]
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %cond174) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end173, %do.end135, %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %do.end135 ], [ -19, %cond.end173 ], [ -19, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gxt4500_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #9
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @iounmap(ptr noundef %8) #9
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %sub = sub i32 1, %10
  %add = add i32 %sub, %12
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %cond) #9
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 8
  %end15 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %15 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16 = icmp eq i32 %16, 0
  %sub25 = sub i32 1, %14
  %add26 = add i32 %sub25, %16
  %cond28 = select i1 %cmp16, i32 0, i32 %add26
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %cond28) #9
  tail call void @framebuffer_release(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_wc_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16436
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %5 = and i32 %4, -1644167169
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 16428
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  %10 = or i32 %9, 33554432
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %blank, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb11
    i32 3, label %sw.bb13
    i32 2, label %sw.bb15
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %11, -3
  br label %do.body

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %6, 2
  br label %do.body

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or14 = or i32 %6, 32
  br label %do.body

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or16 = or i32 %6, 64
  br label %do.body

do.body:                                          ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb, %entry.do.body_crit_edge
  %dctl.0 = phi i32 [ %11, %entry.do.body_crit_edge ], [ %11, %sw.bb15 ], [ %11, %sw.bb13 ], [ %11, %sw.bb11 ], [ %and10, %sw.bb ]
  %ctrl.0 = phi i32 [ %6, %entry.do.body_crit_edge ], [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %6, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 16436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %13) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %dctl.0)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr23 = getelementptr i8, ptr %18, i32 16428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %16) #9, !srcloc !114
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_set_par(ptr nocapture noundef %info) #0 align 64 {
entry:
  %save_par = alloca %struct.gxt4500_par, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %save_par)
  %2 = call ptr @memcpy(ptr %save_par, ptr %1, i32 96)
  %call = tail call fastcc i32 @gxt4500_var_to_par(ptr noundef %var2, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = call ptr @memcpy(ptr %1, ptr %save_par, i32 96)
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 6400
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %7 = and i32 %6, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #9, !srcloc !114
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 16460
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  %13 = and i32 %12, -2130706433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %pll_n = getelementptr inbounds %struct.gxt4500_par, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %pll_n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %16)
  %cmp = icmp slt i32 %16, 38
  %or = or i32 %14, 9
  %spec.select = select i1 %cmp, i32 %or, i32 %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %16)
  %cmp19 = icmp slt i32 %16, 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %16)
  %cmp23 = icmp ult i32 %16, 100
  %.453 = select i1 %cmp23, i32 118, i32 126
  %.sink = select i1 %cmp19, i32 53, i32 %.453
  %or21 = or i32 %spec.select, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 16460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %17) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %pll_m = getelementptr inbounds %struct.gxt4500_par, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pll_m to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pll_m, align 4
  %sub = add i32 %21, -1
  %arrayidx = getelementptr [64 x i8], ptr @mdivtab, i32 0, i32 %sub
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %23 to i32
  %24 = shl nuw i32 %conv, 24
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr39 = getelementptr i8, ptr %26, i32 16448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %24) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %pll_n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pll_n, align 4
  %sub44 = add i32 %28, -2
  %arrayidx45 = getelementptr [159 x i8], ptr @ndivtab, i32 0, i32 %sub44
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %31 = shl nuw i32 %conv46, 24
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr48 = getelementptr i8, ptr %33, i32 16452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %31) #9, !srcloc !114
  %pll_pd2 = getelementptr inbounds %struct.gxt4500_par, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %pll_pd2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pll_pd2, align 4
  %.neg = mul i32 %35, -8
  %shl = add i32 %.neg, 64
  %pll_pd1 = getelementptr inbounds %struct.gxt4500_par, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %pll_pd1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pll_pd1, align 4
  %sub50 = sub i32 8, %37
  %or51 = or i32 %shl, %sub50
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp53 = icmp eq i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp56 = icmp eq i32 %35, 8
  %or.cond = select i1 %cmp53, i1 true, i1 %cmp56
  br i1 %or.cond, label %do.body59, label %if.end.do.body66_crit_edge

if.end.do.body66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

do.body59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %or62 = or i32 %or51, 9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or62)
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr64 = getelementptr i8, ptr %40, i32 16456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %38) #9, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #9
  br label %do.body66

do.body66:                                        ; preds = %do.body59, %if.end.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %or51)
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr70 = getelementptr i8, ptr %44, i32 16456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %42) #9, !srcloc !114
  tail call void @msleep(i32 noundef 20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr75 = getelementptr i8, ptr %46, i32 16516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 0) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr80 = getelementptr i8, ptr %48, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 134219776) #9, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr85 = getelementptr i8, ptr %51, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 2048) #9, !srcloc !114
  %52 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var2, align 4
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %54 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %left_margin, align 4
  %add = add i32 %55, %53
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %56 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %right_margin, align 4
  %add86 = add i32 %add, %57
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %58 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hsync_len, align 4
  %add87 = add i32 %add86, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %sub91 = add i32 %add87, -1
  %60 = tail call i32 @llvm.bswap.i32(i32 %sub91)
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr93 = getelementptr i8, ptr %62, i32 6404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %60) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %var2, align 4
  %sub98 = add i32 %64, -1
  %65 = tail call i32 @llvm.bswap.i32(i32 %sub98)
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr100 = getelementptr i8, ptr %67, i32 6408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %65) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %var2, align 4
  %70 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %right_margin, align 4
  %add106 = add i32 %69, -1
  %sub107 = add i32 %add106, %71
  %72 = tail call i32 @llvm.bswap.i32(i32 %sub107)
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %add.ptr109 = getelementptr i8, ptr %74, i32 6412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %72) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %var2, align 4
  %77 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %right_margin, align 4
  %79 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hsync_len, align 4
  %add115 = add i32 %76, -1
  %add117 = add i32 %add115, %78
  %sub118 = add i32 %add117, %80
  %81 = tail call i32 @llvm.bswap.i32(i32 %sub118)
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %add.ptr120 = getelementptr i8, ptr %83, i32 6416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %81) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %var2, align 4
  %86 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %right_margin, align 4
  %88 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hsync_len, align 4
  %add126 = add i32 %85, -1
  %add128 = add i32 %add126, %87
  %sub129 = add i32 %add128, %89
  %90 = tail call i32 @llvm.bswap.i32(i32 %sub129)
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %add.ptr131 = getelementptr i8, ptr %92, i32 6420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %90) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %93 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %yres, align 4
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %95 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %upper_margin, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %97 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lower_margin, align 4
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %99 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vsync_len, align 4
  %add135 = add i32 %94, -1
  %add136 = add i32 %add135, %96
  %add137 = add i32 %add136, %98
  %sub138 = add i32 %add137, %100
  %101 = tail call i32 @llvm.bswap.i32(i32 %sub138)
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %add.ptr140 = getelementptr i8, ptr %103, i32 6424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %101) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %yres, align 4
  %sub145 = add i32 %105, -1
  %106 = tail call i32 @llvm.bswap.i32(i32 %sub145)
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %add.ptr147 = getelementptr i8, ptr %108, i32 6428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %106) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %109 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %yres, align 4
  %111 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lower_margin, align 4
  %add153 = add i32 %110, -1
  %sub154 = add i32 %add153, %112
  %113 = tail call i32 @llvm.bswap.i32(i32 %sub154)
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %add.ptr156 = getelementptr i8, ptr %115, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %113) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %yres, align 4
  %118 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lower_margin, align 4
  %120 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vsync_len, align 4
  %add162 = add i32 %117, -1
  %add164 = add i32 %add162, %119
  %sub165 = add i32 %add164, %121
  %122 = tail call i32 @llvm.bswap.i32(i32 %sub165)
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %add.ptr167 = getelementptr i8, ptr %124, i32 6436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %122) #9, !srcloc !114
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %125 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pixclock, align 4
  %div = udiv i32 3300000, %126
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add87)
  %cmp168.not = icmp ult i32 %div, %add87
  %spec.select449 = select i1 %cmp168.not, i32 %div, i32 %sub91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %127 = xor i32 %spec.select449, -1
  %sub177 = add i32 %add87, %127
  %128 = tail call i32 @llvm.bswap.i32(i32 %sub177)
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 4
  %add.ptr179 = getelementptr i8, ptr %130, i32 6440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %128) #9, !srcloc !114
  %131 = or i32 %6, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %add.ptr185 = getelementptr i8, ptr %133, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %131) #9, !srcloc !114
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %134 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %135)
  %cmp186 = icmp ugt i32 %135, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %135)
  %cmp191 = icmp ugt i32 %135, 1024
  %. = select i1 %cmp191, i32 2048, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %add198 = shl i32 %135, 10
  %136 = add i32 %add198, 64512
  %shl202 = and i32 %136, 2147418112
  %or203 = or i32 %shl202, -2147483648
  %137 = tail call i32 @llvm.bswap.i32(i32 %or203)
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %add.ptr206 = getelementptr i8, ptr %139, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr206, i32 %137) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %add.ptr214 = getelementptr i8, ptr %141, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 %137) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %add.ptr222 = getelementptr i8, ptr %143, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 %137) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 4
  %add.ptr230 = getelementptr i8, ptr %145, i32 4376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 %137) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %146 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %xoffset, align 4
  %shl234 = shl i32 %147, 16
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %148 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %yoffset, align 4
  %or235 = or i32 %shl234, %149
  %150 = tail call i32 @llvm.bswap.i32(i32 %or235)
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %add.ptr237 = getelementptr i8, ptr %152, i32 4248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 %150) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %153 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %var2, align 4
  %shl242 = shl i32 %154, 16
  %155 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %yres, align 4
  %or244 = or i32 %shl242, %156
  %157 = tail call i32 @llvm.bswap.i32(i32 %or244)
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %add.ptr246 = getelementptr i8, ptr %159, i32 4252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr246, i32 %157) #9, !srcloc !114
  %pixfmt247 = getelementptr inbounds %struct.gxt4500_par, ptr %1, i32 0, i32 2
  %160 = ptrtoint ptr %pixfmt247 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pixfmt247, align 4
  %.450.op = select i1 %cmp191, i32 -2147483632, i32 -2147483648
  %or248 = select i1 %cmp186, i32 -2147483616, i32 %.450.op
  %or249 = or i32 %or248, %161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %162 = tail call i32 @llvm.bswap.i32(i32 %or249)
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %add.ptr254 = getelementptr i8, ptr %164, i32 4576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 %162) #9, !srcloc !114
  %arrayidx260 = getelementptr [6 x i8], ptr @watfmt, i32 0, i32 %161
  br label %do.body257

do.body257:                                       ; preds = %do.body257.do.body257_crit_edge, %do.body66
  %i.0452 = phi i32 [ 0, %do.body66 ], [ %inc, %do.body257.do.body257_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx260, align 1
  %conv261 = zext i8 %166 to i32
  %167 = shl nuw i32 %conv261, 24
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %shl263 = shl nuw nsw i32 %i.0452, 4
  %add264 = add nuw nsw i32 %shl263, 16640
  %add.ptr265 = getelementptr i8, ptr %169, i32 %add264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr265, i32 %167) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %add271 = add nuw nsw i32 %shl263, 16644
  %add.ptr272 = getelementptr i8, ptr %171, i32 %add271
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272, i32 0) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %add278 = add nuw nsw i32 %shl263, 16648
  %add.ptr279 = getelementptr i8, ptr %173, i32 %add278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 0) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %add285 = add nuw nsw i32 %shl263, 16652
  %add.ptr286 = getelementptr i8, ptr %175, i32 %add285
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 16777216) #9, !srcloc !114
  %inc = add nuw nsw i32 %i.0452, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %do.body257.do.body257_crit_edge

do.body257.do.body257_crit_edge:                  ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body257

for.end:                                          ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #11
  %stride.0 = select i1 %cmp186, i32 4096, i32 %.
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %add.ptr290 = getelementptr i8, ptr %177, i32 16436
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr290) #9, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %179 = and i32 %178, -419430401
  %180 = tail call i32 @llvm.bswap.i32(i32 %179)
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %181 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sync, align 4
  %and295 = lshr i32 %182, 5
  %183 = and i32 %and295, 1
  %184 = or i32 %183, %180
  %and301 = shl i32 %182, 3
  %185 = and i32 %and301, 8
  %186 = or i32 %184, %185
  %187 = and i32 %and301, 16
  %188 = or i32 %186, %187
  %189 = xor i32 %188, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %add.ptr316 = getelementptr i8, ptr %192, i32 16436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr316, i32 %190) #9, !srcloc !114
  %arrayidx317 = getelementptr [6 x i8], ptr @pixsize, i32 0, i32 %161
  %193 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx317, align 1
  %conv318 = zext i8 %194 to i32
  %mul = mul nuw nsw i32 %stride.0, %conv318
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %195 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %mul, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp319 = icmp eq i32 %161, 0
  %cond = select i1 %cmp319, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %196 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %cond, ptr %visual, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %save_par)
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_check_var(ptr nocapture noundef %var, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  %par = alloca %struct.gxt4500_par, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %par) #9
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = call ptr @memcpy(ptr %par, ptr %1, i32 96)
  %call = call fastcc i32 @gxt4500_var_to_par(ptr noundef %var, ptr noundef nonnull %par)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refclk_ps.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 3
  %3 = ptrtoint ptr %refclk_ps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refclk_ps.i, align 4
  %pll_m.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 4
  %5 = ptrtoint ptr %pll_m.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pll_m.i, align 4
  %mul.i = mul i32 %6, %4
  %pll_pd1.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 6
  %7 = ptrtoint ptr %pll_pd1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_pd1.i, align 4
  %mul1.i = mul i32 %mul.i, %8
  %pll_pd2.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 7
  %9 = ptrtoint ptr %pll_pd2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_pd2.i, align 4
  %mul2.i = mul i32 %mul1.i, %10
  %pll_n.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 5
  %11 = ptrtoint ptr %pll_n.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_n.i, align 4
  %div.i = sdiv i32 %mul2.i, %12
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %13 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %pixclock, align 4
  %pixfmt = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 2
  %14 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixfmt, align 4
  %arrayidx.i = getelementptr [6 x i8], ptr @pixsize, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %17 to i32
  %mul.i6 = shl nuw nsw i32 %conv.i, 3
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %18 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.i6, ptr %bits_per_pixel.i, align 4
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %19 = call ptr @memcpy(ptr %red.i, ptr @eightbits, i32 12)
  %green.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %20 = call ptr @memcpy(ptr %green.i, ptr @eightbits, i32 12)
  %blue.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %21 = call ptr @memcpy(ptr %blue.i, ptr @eightbits, i32 12)
  %transp.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %22 = call ptr @memset(ptr %transp.i, i32 0, i32 12)
  %23 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %15, label %if.then.if.then.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
    i32 5, label %sw.bb15.i
    i32 0, label %if.then.if.end_crit_edge
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %length.i, align 4
  %length3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %length3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %length3.i, align 4
  %length5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %length5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %length5.i, align 4
  br label %if.then.i

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %length8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %length8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %length8.i, align 4
  %length10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %length10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %length10.i, align 4
  %length12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %length12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %length12.i, align 4
  %length14.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %length14.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %length14.i, align 4
  br label %if.then.i

sw.bb15.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %length17.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %length17.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %length17.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb15.i, %sw.bb6.i, %sw.bb.i, %if.then.if.then.i_crit_edge
  %32 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %blue.i, align 4
  %length21.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %length21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length21.i, align 4
  %35 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %green.i, align 4
  %length27.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %length27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length27.i, align 4
  %add.i = add i32 %37, %34
  %38 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %red.i, align 4
  %length31.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %length31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then32.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then32.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %length36.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %length36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length36.i, align 4
  %add37.i = add i32 %42, %add.i
  %43 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add37.i, ptr %transp.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then32.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %par) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_setcolreg(i32 noundef %reg, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %reg)
  %cmp = icmp ugt i32 %reg, 1023
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = shl i32 %transp, 16
  %shl = and i32 %and, -16777216
  %and2 = shl i32 %red, 8
  %shl3 = and i32 %and2, 16711680
  %and4 = and i32 %green, 65280
  %shr = lshr i32 %blue, 8
  %or = or i32 %and4, %shl3
  %or5 = or i32 %or, %shr
  %or6 = or i32 %or5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %mul = shl nuw nsw i32 %reg, 2
  %add = add nuw nsw i32 %mul, 24576
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %cmp7 = icmp ult i32 %reg, 16
  br i1 %cmp7, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pixfmt = getelementptr inbounds %struct.gxt4500_par, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8.not = icmp eq i32 %6, 0
  br i1 %cmp8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %7 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pseudo_palette, align 4
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %6, label %if.then9.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 5, label %sw.bb20
    i32 4, label %if.then9.sw.bb23_crit_edge
  ]

if.then9.sw.bb23_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %shl11 = shl nuw nsw i32 %reg, 11
  %shl12 = shl nuw nsw i32 %reg, 5
  %or13 = or i32 %shl12, %reg
  %or14 = or i32 %or13, %shl11
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %shl16 = shl nuw nsw i32 %reg, 10
  %shl17 = shl nuw nsw i32 %reg, 5
  %or18 = or i32 %shl17, %reg
  %or19 = or i32 %or18, %shl16
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %shl21 = shl nuw nsw i32 %reg, 24
  %or22 = or i32 %shl21, %reg
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb20, %if.then9.sw.bb23_crit_edge
  %val.0 = phi i32 [ %reg, %if.then9.sw.bb23_crit_edge ], [ %or22, %sw.bb20 ]
  %shl24 = shl nuw nsw i32 %reg, 16
  %shl25 = shl nuw nsw i32 %reg, 8
  %or26 = or i32 %shl24, %shl25
  %or27 = or i32 %or26, %val.0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb15, %sw.bb, %if.then9.sw.epilog_crit_edge
  %val.1 = phi i32 [ %reg, %if.then9.sw.epilog_crit_edge ], [ %or27, %sw.bb23 ], [ %or19, %sw.bb15 ], [ %or14, %sw.bb ]
  %arrayidx = getelementptr i32, ptr %8, i32 %reg
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %val.1, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %sw.epilog ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gxt4500_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %var3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var3, align 4
  %add = add i32 %5, %3
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ugt i32 %add, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %add6 = add i32 %11, %9
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %13)
  %cmp8 = icmp ugt i32 %add6, %13
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xoffset, align 4
  %shl = shl i32 %15, 16
  %16 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yoffset, align 4
  %or = or i32 %shl, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 4248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #9, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %do.body, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gxt4500_var_to_par(ptr nocapture noundef readonly %var, ptr nocapture noundef %par) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %add = add i32 %3, %1
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset, align 4
  %add1 = add i32 %9, %7
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %11)
  %cmp2 = icmp ugt i32 %add1, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp5 = icmp ugt i32 %5, 4096
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp5
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %12 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vmode, align 4
  %and = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %if.end8, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8:                                          ; preds = %if.end
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %14 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixclock, align 4
  %16 = add i32 %15, -200001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -196668, i32 %16)
  %17 = icmp ult i32 %16, -196668
  br i1 %17, label %if.end8.return_crit_edge, label %for.cond.preheader.i

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.cond.preheader.i:                             ; preds = %if.end8
  %add.i = add nsw i32 %15, -1
  %refclk_ps.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 3
  %pll_m.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 4
  %pll_n.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 5
  %pll_pd1.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 6
  %pll_pd2.i = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 7
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc37.i.for.cond3.preheader.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ 2, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc37.i.for.cond3.preheader.i_crit_edge ]
  %best_error.091.i = phi i32 [ 1000000, %for.cond.preheader.i ], [ %best_error.4.i, %for.inc37.i.for.cond3.preheader.i_crit_edge ]
  %pdiv1.090.i = phi i32 [ 1, %for.cond.preheader.i ], [ %inc38.i, %for.inc37.i.for.cond3.preheader.i_crit_edge ]
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc34.i.for.body5.i_crit_edge, %for.cond3.preheader.i
  %best_error.189.i = phi i32 [ %best_error.091.i, %for.cond3.preheader.i ], [ %best_error.4.i, %for.inc34.i.for.body5.i_crit_edge ]
  %pdiv2.088.i = phi i32 [ 1, %for.cond3.preheader.i ], [ %inc35.i, %for.inc34.i.for.body5.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %pdiv2.088.i, %pdiv1.090.i
  %sub.i = add i32 %add.i, %mul.i
  %div.i = sdiv i32 %sub.i, %mul.i
  %18 = add i32 %div.i, -2858
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1192, i32 %18)
  %19 = icmp ult i32 %18, -1192
  br i1 %19, label %for.body5.i.for.inc34.i_crit_edge, label %for.cond11.preheader.i

for.body5.i.for.inc34.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.i

for.cond11.preheader.i:                           ; preds = %for.body5.i
  %20 = ptrtoint ptr %refclk_ps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refclk_ps.i, align 4
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.cond11.preheader.i
  %best_error.287.i = phi i32 [ %best_error.189.i, %for.cond11.preheader.i ], [ %best_error.3.i, %for.inc.i.for.body13.i_crit_edge ]
  %m.086.i = phi i32 [ 1, %for.cond11.preheader.i ], [ %inc.i, %for.inc.i.for.body13.i_crit_edge ]
  %mul14.i = mul i32 %m.086.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %mul14.i)
  %cmp15.i = icmp sgt i32 %mul14.i, 500000
  br i1 %cmp15.i, label %for.body13.i.for.inc34.i_crit_edge, label %if.end17.i

for.body13.i.for.inc34.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.i

if.end17.i:                                       ; preds = %for.body13.i
  %mul18.i = mul i32 %mul14.i, %mul.i
  %div19.i = sdiv i32 %mul18.i, %15
  %22 = add i32 %div19.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -158, i32 %22)
  %23 = icmp ult i32 %22, -158
  br i1 %23, label %if.end17.i.for.inc.i_crit_edge, label %if.end24.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end24.i:                                       ; preds = %if.end17.i
  %div28.i = sdiv i32 %mul18.i, %div19.i
  %sub29.i = sub i32 %div28.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub29.i)
  %cmp30.i = icmp sgt i32 %sub29.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.i, i32 %best_error.287.i)
  %cmp31.i = icmp slt i32 %sub29.i, %best_error.287.i
  %or.cond85.i = select i1 %cmp30.i, i1 %cmp31.i, i1 false
  br i1 %or.cond85.i, label %if.then32.i, label %if.end24.i.for.inc.i_crit_edge

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then32.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %pll_m.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %m.086.i, ptr %pll_m.i, align 4
  %25 = ptrtoint ptr %pll_n.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div19.i, ptr %pll_n.i, align 4
  %26 = ptrtoint ptr %pll_pd1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %pdiv1.090.i, ptr %pll_pd1.i, align 4
  %27 = ptrtoint ptr %pll_pd2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pdiv2.088.i, ptr %pll_pd2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then32.i, %if.end24.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge
  %best_error.3.i = phi i32 [ %best_error.287.i, %if.end17.i.for.inc.i_crit_edge ], [ %sub29.i, %if.then32.i ], [ %best_error.287.i, %if.end24.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %m.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %for.inc.i.for.inc34.i_crit_edge, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.i

for.inc.i.for.inc34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %for.inc.i.for.inc34.i_crit_edge, %for.body13.i.for.inc34.i_crit_edge, %for.body5.i.for.inc34.i_crit_edge
  %best_error.4.i = phi i32 [ %best_error.189.i, %for.body5.i.for.inc34.i_crit_edge ], [ %best_error.3.i, %for.inc.i.for.inc34.i_crit_edge ], [ %best_error.287.i, %for.body13.i.for.inc34.i_crit_edge ]
  %inc35.i = add nuw nsw i32 %pdiv2.088.i, 1
  %exitcond92.i = icmp eq i32 %inc35.i, %indvars.iv.i
  br i1 %exitcond92.i, label %for.inc37.i, label %for.inc34.i.for.body5.i_crit_edge

for.inc34.i.for.body5.i_crit_edge:                ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

for.inc37.i:                                      ; preds = %for.inc34.i
  %inc38.i = add nuw nsw i32 %pdiv1.090.i, 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond93.not.i = icmp eq i32 %indvars.iv.next.i, 10
  br i1 %exitcond93.not.i, label %calc_pll.exit, label %for.inc37.i.for.cond3.preheader.i_crit_edge

for.inc37.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i

calc_pll.exit:                                    ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %best_error.4.i)
  %cmp40.i = icmp eq i32 %best_error.4.i, 1000000
  br i1 %cmp40.i, label %calc_pll.exit.return_crit_edge, label %if.end11

calc_pll.exit.return_crit_edge:                   ; preds = %calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end11:                                         ; preds = %calc_pll.exit
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %28 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits_per_pixel, align 4
  %30 = add i32 %29, -8
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 29)
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %31, label %if.end11.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb15
    i32 1, label %sw.bb17
    i32 0, label %sw.bb25
  ]

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %if.end11
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  %pixfmt13 = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %pixfmt13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %pixfmt13, align 4
  br label %return

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %pixfmt13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %pixfmt13, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %pixfmt16 = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 2
  %37 = ptrtoint ptr %pixfmt16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %pixfmt16, align 4
  br label %return

sw.bb17:                                          ; preds = %if.end11
  %length18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp19 = icmp eq i32 %39, 5
  %pixfmt21 = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 2
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %pixfmt21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %pixfmt21, align 4
  br label %return

if.else22:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %pixfmt21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %pixfmt21, align 4
  br label %return

sw.bb25:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %pixfmt26 = getelementptr inbounds %struct.gxt4500_par, ptr %par, i32 0, i32 2
  %42 = ptrtoint ptr %pixfmt26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %pixfmt26, align 4
  br label %return

return:                                           ; preds = %sw.bb25, %if.else22, %if.then20, %sw.bb15, %if.else, %if.then12, %if.end11.return_crit_edge, %calc_pll.exit.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %calc_pll.exit.return_crit_edge ], [ -22, %if.end11.return_crit_edge ], [ 0, %if.then20 ], [ 0, %if.else22 ], [ 0, %if.then12 ], [ 0, %if.else ], [ 0, %sw.bb25 ], [ 0, %sw.bb15 ], [ -22, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_gxt4500__305_784_gxt4500_init6, !1, !"__initcall__kmod_gxt4500__305_784_gxt4500_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/gxt4500.c", i32 784, i32 1}
!2 = !{ptr @__exitcall_gxt4500_exit, !3, !"__exitcall_gxt4500_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/gxt4500.c", i32 790, i32 1}
!4 = !{ptr @__UNIQUE_ID_author306, !5, !"__UNIQUE_ID_author306", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/gxt4500.c", i32 792, i32 1}
!6 = !{ptr @__UNIQUE_ID_description307, !7, !"__UNIQUE_ID_description307", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/gxt4500.c", i32 793, i32 1}
!8 = !{ptr @__UNIQUE_ID_file308, !9, !"__UNIQUE_ID_file308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/gxt4500.c", i32 794, i32 1}
!10 = !{ptr @__UNIQUE_ID_license309, !9, !"__UNIQUE_ID_license309", i1 false, i1 false}
!11 = !{ptr @__param_mode_option, !12, !"__param_mode_option", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/gxt4500.c", i32 795, i32 1}
!13 = !{ptr @__UNIQUE_ID_mode_optiontype310, !12, !"__UNIQUE_ID_mode_optiontype310", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_mode_option311, !15, !"__UNIQUE_ID_mode_option311", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/gxt4500.c", i32 796, i32 1}
!16 = !{ptr @mode_option, !17, !"mode_option", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/gxt4500.c", i32 160, i32 14}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/gxt4500.c", i32 778, i32 21}
!20 = !{ptr @gxt4500_driver, !21, !"gxt4500_driver", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/gxt4500.c", i32 768, i32 26}
!22 = !{ptr @gxt4500_pci_tbl, !23, !"gxt4500_pci_tbl", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/gxt4500.c", i32 754, i32 35}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/gxt4500.c", i32 626, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gxt4500_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @gxt4500_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/gxt4500.c", i32 632, i32 7}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/gxt4500.c", i32 634, i32 3}
!36 = !{ptr @gxt4500_probe._entry.7, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gxt4500_probe._entry_ptr.9, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/gxt4500.c", i32 639, i32 7}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/gxt4500.c", i32 641, i32 3}
!42 = !{ptr @gxt4500_probe._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gxt4500_probe._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/gxt4500.c", i32 660, i32 3}
!46 = !{ptr @gxt4500_probe._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gxt4500_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/gxt4500.c", i32 668, i32 3}
!50 = !{ptr @gxt4500_probe._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gxt4500_probe._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/gxt4500.c", i32 693, i32 3}
!54 = !{ptr @gxt4500_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gxt4500_probe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/gxt4500.c", i32 700, i32 3}
!58 = !{ptr @gxt4500_probe._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gxt4500_probe._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/gxt4500.c", i32 705, i32 3}
!62 = !{ptr @gxt4500_probe._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @gxt4500_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/gxt4500.c", i32 710, i32 3}
!66 = !{ptr @gxt4500_probe._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @gxt4500_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/gxt4500.c", i32 713, i32 2}
!70 = !{ptr @gxt4500_probe._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gxt4500_probe._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/gxt4500.c", i32 190, i32 48}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/gxt4500.c", i32 191, i32 48}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/gxt4500.c", i32 192, i32 49}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/gxt4500.c", i32 193, i32 49}
!80 = !{ptr @cardinfo, !81, !"cardinfo", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/gxt4500.c", i32 189, i32 3}
!82 = !{ptr @gxt4500_fix, !83, !"gxt4500_fix", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/gxt4500.c", i32 593, i32 39}
!84 = !{ptr @gxt4500_ops, !85, !"gxt4500_ops", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/gxt4500.c", i32 602, i32 28}
!86 = !{ptr @pixsize, !87, !"pixsize", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/gxt4500.c", i32 70, i32 28}
!88 = !{ptr @eightbits, !89, !"eightbits", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/gxt4500.c", i32 322, i32 33}
!90 = distinct !{null, !91, !"nobits", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/gxt4500.c", i32 323, i32 33}
!92 = !{ptr @defaultmode, !93, !"defaultmode", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/gxt4500.c", i32 163, i32 34}
!94 = !{ptr @mdivtab, !95, !"mdivtab", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/gxt4500.c", i32 206, i32 28}
!96 = !{ptr @ndivtab, !97, !"ndivtab", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/gxt4500.c", i32 216, i32 28}
!98 = !{ptr @watfmt, !99, !"watfmt", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/gxt4500.c", i32 133, i32 28}
!100 = !{ptr @__param_str_mode_option, !12, !"__param_str_mode_option", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 4735457}
!111 = !{i64 2156244626}
!112 = !{i64 2156245205}
!113 = !{i64 2156245507}
!114 = !{i64 4735039}
!115 = !{i64 2156245992}
!116 = !{i64 2156222004}
!117 = !{i64 2156222300}
!118 = !{i64 2156223075}
!119 = !{i64 2156223359}
!120 = !{i64 2156223879}
!121 = !{i64 2156224459}
!122 = !{i64 2156225011}
!123 = !{i64 2156226045}
!124 = !{i64 2156226523}
!125 = !{i64 2156227035}
!126 = !{i64 2156228118}
!127 = !{i64 2156228626}
!128 = !{i64 2156229141}
!129 = !{i64 2156229711}
!130 = !{i64 2156230375}
!131 = !{i64 2156231090}
!132 = !{i64 2156231851}
!133 = !{i64 2156232561}
!134 = !{i64 2156233131}
!135 = !{i64 2156233795}
!136 = !{i64 2156234456}
!137 = !{i64 2156235008}
!138 = !{i64 2156235606}
!139 = !{i64 2156236252}
!140 = !{i64 2156236898}
!141 = !{i64 2156237544}
!142 = !{i64 2156238181}
!143 = !{i64 2156238809}
!144 = !{i64 2156239386}
!145 = !{i64 2156239922}
!146 = !{i64 2156240464}
!147 = !{i64 2156240967}
!148 = !{i64 2156241472}
!149 = !{i64 2156242240}
!150 = !{i64 2156242557}
!151 = !{i64 2156243098}
!152 = !{i64 2156243767}
