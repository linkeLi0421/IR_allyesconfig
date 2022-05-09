; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/pvr2fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/pvr2fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pvr2_board = type { ptr, ptr, [16 x i8] }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.pvr2_params = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%union.anon.85 = type { ptr }
%struct.pvr2fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, [16 x i32] }

@board_driver = internal global [2 x %struct.pvr2_board] [%struct.pvr2_board { ptr @pvr2fb_pci_init, ptr @pvr2fb_pci_exit, [16 x i8] c"PCI PVR2\00\00\00\00\00\00\00\00" }, %struct.pvr2_board zeroinitializer], section ".ref.data", align 4
@fb_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_pvr2fb__309_1130_pvr2fb_init6 = internal global ptr @pvr2fb_init, section ".initcall6.init", align 4
@__exitcall_pvr2fb_exit = internal global ptr @pvr2fb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [79 x i8] c"pvr2fb.author=Paul Mundt <lethal@linux-sh.org>, M. R. Brown <mrbrown@0xd6.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [78 x i8] c"pvr2fb.description=Framebuffer driver for NEC PowerVR 2 based graphics boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [39 x i8] c"pvr2fb.file=drivers/video/fbdev/pvr2fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [19 x i8] c"pvr2fb.license=GPL\00", section ".modinfo", align 1
@pvr2fb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pvr2fb_pci_tbl, ptr @pvr2fb_pci_probe, ptr @pvr2fb_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pvr2fb\00", [25 x i8] zeroinitializer }, align 32
@pvr2fb_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4147, i32 103, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pvr2fb_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013pvr2fb: PCI enable failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2fb_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/pvr2fb.c\00", [35 x i8] zeroinitializer }, align 32
@pvr2fb_pci_probe._entry_ptr = internal global ptr @pvr2fb_pci_probe._entry, section ".printk_index", align 4
@pvr2fb_pci_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pvr2fb: PCI request regions failed\0A\00", [58 x i8] zeroinitializer }, align 32
@pvr2fb_pci_probe._entry_ptr.6 = internal global ptr @pvr2fb_pci_probe._entry.4, section ".printk_index", align 4
@pvr2_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"NEC PowerVR2\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 1, i16 1, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@currentpar = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvr2fb_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pvr2fb: Failed to remap smem space\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2fb_common_init\00", [45 x i8] zeroinitializer }, align 32
@pvr2fb_common_init._entry_ptr = internal global ptr @pvr2fb_common_init._entry, section ".printk_index", align 4
@pvr2fb_common_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pvr2fb: Failed to remap mmio space\0A\00", [58 x i8] zeroinitializer }, align 32
@pvr2fb_common_init._entry_ptr.11 = internal global ptr @pvr2fb_common_init._entry.9, section ".printk_index", align 4
@nopan = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pvr2fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2fb_check_var, ptr @pvr2fb_set_par, ptr @pvr2fb_setcolreg, ptr null, ptr @pvr2fb_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@video_output = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@defmode = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480@60\00", [21 x i8] zeroinitializer }, align 32
@pvr2_modedb = internal global { [3 x %struct.fb_videomode], [56 x i8] } { [3 x %struct.fb_videomode] [%struct.fb_videomode { ptr @.str.25, i32 60, i32 640, i32 480, i32 74239, i32 38, i32 33, i32 0, i32 18, i32 146, i32 26, i32 16, i32 257, i32 0 }, %struct.fb_videomode { ptr @.str.26, i32 60, i32 640, i32 240, i32 74239, i32 38, i32 33, i32 0, i32 0, i32 146, i32 22, i32 16, i32 256, i32 0 }, %struct.fb_videomode { ptr @.str.27, i32 60, i32 640, i32 480, i32 37119, i32 38, i32 33, i32 0, i32 18, i32 146, i32 26, i32 0, i32 256, i32 0 }], [56 x i8] zeroinitializer }, align 32
@pvr2_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 16, i32 0, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pvr2fb_common_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016fb%d: %s (rev %ld.%ld) frame buffer device, using %ldk/%ldk of video memory\0A\00", [49 x i8] zeroinitializer }, align 32
@pvr2fb_common_init._entry_ptr.15 = internal global ptr @pvr2fb_common_init._entry.13, section ".printk_index", align 4
@pvr2fb_common_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.3, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016fb%d: Mode %dx%d-%d pitch = %ld cable: %s video output: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@pvr2fb_common_init._entry_ptr.18 = internal global ptr @pvr2fb_common_init._entry.16, section ".printk_index", align 4
@cables = internal global { [3 x %struct.pvr2_params], [40 x i8] } { [3 x %struct.pvr2_params] [%struct.pvr2_params { i32 0, ptr @.str.28 }, %struct.pvr2_params { i32 2, ptr @.str.29 }, %struct.pvr2_params { i32 3, ptr @.str.30 }], [40 x i8] zeroinitializer }, align 32
@cable_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@outputs = internal global { [3 x %struct.pvr2_params], [40 x i8] } { [3 x %struct.pvr2_params] [%struct.pvr2_params { i32 0, ptr @.str.31 }, %struct.pvr2_params { i32 1, ptr @.str.32 }, %struct.pvr2_params { i32 2, ptr @.str.28 }], [40 x i8] zeroinitializer }, align 32
@pvr2fb_check_var.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2fb_check_var\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid pixclock value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pvr2fb_check_var.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid hsync total for PAL\0A\00", [35 x i8] zeroinitializer }, align 32
@pvr2fb_check_var.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid hsync total for NTSC\0A\00", [34 x i8] zeroinitializer }, align 32
@pvr2fb_setcolreg.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2fb_setcolreg\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid bit depth %d?!?\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ntsc_640x480i\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntsc_640x240\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vga_640x480\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VGA\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"COMPOSITE\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@pvr2fb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pvr2fb: Failed init of %s device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pvr2fb_init\00", [20 x i8] zeroinitializer }, align 32
@pvr2fb_init._entry_ptr = internal global ptr @pvr2fb_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inverse\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cable:\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"output:\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nopan\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nowrap\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 37119, i64 74239]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"fb_info\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 147, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"pvr2fb_pci_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 993, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1002, i32 9 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"pvr2fb_pci_tbl\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 985, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 947, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 953, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"pvr2_fix\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 149, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"currentpar\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 145, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 789, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 796, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"nopan\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"pvr2fb_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 722, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"video_output\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 174, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"defmode\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 227, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 815, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"pvr2_modedb\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 197, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant [9 x i8] c"pvr2_var\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 158, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 834, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 838, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"cables\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 116, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"cable_type\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 173, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [8 x i8] c"outputs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 120, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 438, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 514, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 520, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 314, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 206, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 211, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 215, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 117, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 117, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 117, i32 56 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 121, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 121, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1101, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1033, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1036, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1038, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1040, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1042, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [32 x i8] c"../drivers/video/fbdev/pvr2fb.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1044, i32 33 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_pvr2fb_exit, ptr @__initcall__kmod_pvr2fb__309_1130_pvr2fb_init6, ptr @pvr2fb_common_init._entry, ptr @pvr2fb_common_init._entry.13, ptr @pvr2fb_common_init._entry.16, ptr @pvr2fb_common_init._entry.9, ptr @pvr2fb_common_init._entry_ptr, ptr @pvr2fb_common_init._entry_ptr.11, ptr @pvr2fb_common_init._entry_ptr.15, ptr @pvr2fb_common_init._entry_ptr.18, ptr @pvr2fb_exit, ptr @pvr2fb_init._entry, ptr @pvr2fb_init._entry_ptr, ptr @pvr2fb_pci_probe._entry, ptr @pvr2fb_pci_probe._entry.4, ptr @pvr2fb_pci_probe._entry_ptr, ptr @pvr2fb_pci_probe._entry_ptr.6, ptr @fb_info, ptr @pvr2fb_pci_driver, ptr @.str, ptr @pvr2fb_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @pvr2_fix, ptr @currentpar, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @nopan, ptr @pvr2fb_ops, ptr @video_output, ptr @defmode, ptr @mode_option, ptr @.str.12, ptr @pvr2_modedb, ptr @pvr2_var, ptr @.str.14, ptr @.str.17, ptr @cables, ptr @cable_type, ptr @outputs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_pci_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @currentpar to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_common_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nopan to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_output to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defmode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_modedb to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_common_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_common_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cables to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cable_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outputs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2fb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pvr2fb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %if.end.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ 1, %if.end.for.body_crit_edge ]
  %exit = getelementptr %struct.pvr2_board, ptr @board_driver, i32 %i.05, i32 1
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @fb_info, align 4
  tail call void @unregister_framebuffer(ptr noundef %2) #10
  %3 = load ptr, ptr @fb_info, align 4
  tail call void @framebuffer_release(ptr noundef %3) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2fb_init() #0 section ".init.text" align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @pvr2fb_setup(ptr noundef %2) #13
  %call2 = call ptr @framebuffer_alloc(i32 noundef 108, ptr noundef null) #10
  store ptr %call2, ptr @fb_info, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup15_crit_edge, label %if.end5

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

if.end5:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 4
  store ptr %4, ptr @currentpar, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %ret.032 = phi i32 [ -19, %if.end5 ], [ %ret.1.ph, %for.inc.for.body_crit_edge ]
  %cmp = phi i1 [ true, %if.end5 ], [ false, %for.inc.for.body_crit_edge ]
  %i.030 = phi i32 [ 0, %if.end5 ], [ 1, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.pvr2_board, ptr @board_driver, i32 %i.030
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %call10 = call i32 %6() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end8.for.inc_crit_edge, label %cleanup

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr %struct.pvr2_board, ptr @board_driver, i32 %i.030, i32 2
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name) #14
  %7 = load ptr, ptr @fb_info, align 4
  call void @framebuffer_release(ptr noundef %7) #10
  br label %cleanup15

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1.ph = phi i32 [ 0, %if.end8.for.inc_crit_edge ], [ %ret.032, %for.body.for.inc_crit_edge ]
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup15_crit_edge

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %cleanup, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup15_crit_edge ], [ -12, %if.end.cleanup15_crit_edge ], [ %call10, %cleanup ], [ %ret.1.ph, %for.inc.cleanup15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2fb_pci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pvr2fb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2fb_pci_exit() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @pvr2fb_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2fb_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  store i32 %1, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 1), align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 2), align 4
  %arrayidx20 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx20, align 8
  store i32 %5, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 10), align 4
  %end24 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %6 = ptrtoint ptr %end24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25 = icmp eq i32 %7, 0
  br i1 %cmp25, label %if.end10.cond.end36_crit_edge, label %cond.false27

if.end10.cond.end36_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36

cond.false27:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx20, align 8
  %sub34 = add i32 %7, 1
  %add35 = sub i32 %sub34, %9
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false27, %if.end10.cond.end36_crit_edge
  %cond37 = phi i32 [ %add35, %cond.false27 ], [ 0, %if.end10.cond.end36_crit_edge ]
  store i32 %cond37, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 11), align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %10 = load ptr, ptr @fb_info, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %device, align 4
  %12 = load ptr, ptr @currentpar, align 4
  %call.i = tail call ptr @ioremap(i32 noundef %1, i32 noundef %cond) #10
  %13 = load ptr, ptr @fb_info, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 25
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end36.out_err.sink.split.i_crit_edge, label %if.end.i

cond.end36.out_err.sink.split.i_crit_edge:        ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.sink.split.i

if.end.i:                                         ; preds = %cond.end36
  %16 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 10), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 11), align 4
  %call2.i = tail call ptr @ioremap(i32 noundef %16, i32 noundef %17) #10
  %mmio_base.i = getelementptr inbounds %struct.pvr2fb_par, ptr %12, i32 0, i32 12
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %mmio_base.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.out_err.sink.split.i_crit_edge, label %if.end11.i

if.end.i.out_err.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.sink.split.i

if.end11.i:                                       ; preds = %if.end.i
  %19 = load ptr, ptr @fb_info, align 4
  %20 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 25
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 2), align 4
  tail call void @mmioset(ptr noundef %22, i32 noundef 0, i32 noundef %23) #10
  %.b.i = load i1, ptr @nopan, align 4
  %not..b.i = xor i1 %.b.i, true
  %conv.i = zext i1 %not..b.i to i16
  store i16 %conv.i, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 7), align 2
  store i16 0, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pvr2_fix, i32 0, i32 8), align 4
  %24 = load ptr, ptr @fb_info, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pvr2fb_ops, ptr %fbops.i, align 4
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 7
  %26 = call ptr @memcpy(ptr %fix.i, ptr @pvr2_fix, i32 68)
  %27 = load ptr, ptr @currentpar, align 4
  %par16.i = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 30
  %28 = ptrtoint ptr %par16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %par16.i, align 4
  %palette.i = getelementptr inbounds %struct.pvr2fb_par, ptr %27, i32 0, i32 13
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 27
  %29 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %palette.i, ptr %pseudo_palette.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 2
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8192, ptr %flags.i, align 4
  %31 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  br i1 %cmp.i, label %if.then18.i, label %if.end11.i.if.end19.i_crit_edge

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @defmode, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end11.i.if.end19.i_crit_edge
  %32 = load ptr, ptr @mode_option, align 4
  %tobool20.not.i = icmp eq ptr %32, null
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end19.i.if.end22.i_crit_edge

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @.str.12, ptr @mode_option, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end22.i_crit_edge
  %var.i = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 6
  %33 = load ptr, ptr @mode_option, align 4
  %.b85.i = load i1, ptr @defmode, align 4
  %34 = select i1 %.b85.i, i32 2, i32 0
  %arrayidx.i = getelementptr [3 x %struct.fb_videomode], ptr @pvr2_modedb, i32 0, i32 %34
  %call23.i = tail call i32 @fb_find_mode(ptr noundef %var.i, ptr noundef %24, ptr noundef %33, ptr noundef nonnull @pvr2_modedb, i32 noundef 3, ptr noundef %arrayidx.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end22.i.if.end27.i_crit_edge

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = load ptr, ptr @fb_info, align 4
  %var26.i = getelementptr inbounds %struct.fb_info, ptr %35, i32 0, i32 6
  %36 = call ptr @memcpy(ptr %var26.i, ptr @pvr2_var, i32 160)
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end27.i_crit_edge
  %37 = load ptr, ptr @fb_info, align 4
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 12
  %call28.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 0) #10
  %38 = load ptr, ptr @fb_info, align 4
  %call29.i = tail call i32 @register_framebuffer(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end27.i.out_err.i_crit_edge, label %if.end33.i

if.end27.i.out_err.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i

if.end33.i:                                       ; preds = %if.end27.i
  %39 = load ptr, ptr @fb_info, align 4
  %par1.i.i = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 30
  %40 = ptrtoint ptr %par1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %par1.i.i, align 4
  %bits_per_pixel.i.i = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6, i32 6
  %42 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bits_per_pixel.i.i, align 4
  %vsync_total.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %vsync_total.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vsync_total.i.i, align 4
  %shl.i.i = shl i32 %45, 16
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %41, align 4
  %or.i.i = or i32 %shl.i.i, %47
  %mmio_base.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 12
  %48 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i.i) #10, !srcloc !134
  %50 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.not.i.i = icmp eq i32 %50, 2
  br i1 %cmp.not.i.i, label %if.end33.i.pvr2_init_display.exit.i_crit_edge, label %land.lhs.true.i.i

if.end33.i.pvr2_init_display.exit.i_crit_edge:    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_init_display.exit.i

land.lhs.true.i.i:                                ; preds = %if.end33.i
  %is_interlaced.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 9
  %51 = ptrtoint ptr %is_interlaced.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_interlaced.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.pvr2_init_display.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.pvr2_init_display.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_init_display.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %line_length.i.i = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 7, i32 9
  %53 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %line_length.i.i, align 4
  %55 = shl i32 %54, 18
  %56 = add i32 %55, 1048576
  %phi.bo.i.i = and i32 %56, -1048576
  br label %pvr2_init_display.exit.i

pvr2_init_display.exit.i:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.pvr2_init_display.exit.i_crit_edge, %if.end33.i.pvr2_init_display.exit.i_crit_edge
  %diw_modulo.0.i.i = phi i32 [ %phi.bo.i.i, %if.then.i.i ], [ 1048576, %land.lhs.true.i.i.pvr2_init_display.exit.i_crit_edge ], [ 1048576, %if.end33.i.pvr2_init_display.exit.i_crit_edge ]
  %is_interlaced3.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 9
  %57 = ptrtoint ptr %is_interlaced3.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_interlaced3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool5.not.i.i = icmp ne i8 %58, 0
  %yres7.i.i = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6, i32 1
  %59 = ptrtoint ptr %yres7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %yres7.i.i, align 4
  %div6116.i.i = zext i1 %tobool5.not.i.i to i32
  %cond.i.i = lshr i32 %60, %div6116.i.i
  %var2.i.i = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6
  %61 = ptrtoint ptr %var2.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %var2.i.i, align 4
  %63 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bits_per_pixel.i.i, align 4
  %mul.i.i.i = mul i32 %64, %62
  %add.i.i.i = add i32 %mul.i.i.i, 31
  %and.i.i.i = ashr i32 %add.i.i.i, 3
  %div9115.i.i = lshr i32 %and.i.i.i, 2
  %dec.i.i = shl i32 %cond.i.i, 10
  %shl11.i.i = add i32 %dec.i.i, -1024
  %or12.i.i = or i32 %shl11.i.i, %diw_modulo.0.i.i
  %dec13.i.i = add nsw i32 %div9115.i.i, -1
  %or14.i.i = or i32 %or12.i.i, %dec13.i.i
  %65 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %66, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %or14.i.i) #10, !srcloc !134
  %disp_start.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 8
  %67 = ptrtoint ptr %disp_start.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %disp_start.i.i, align 4
  %69 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %70, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %68) #10, !srcloc !134
  %71 = ptrtoint ptr %disp_start.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %disp_start.i.i, align 4
  %xoffset.i.i = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6, i32 4
  %73 = ptrtoint ptr %xoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %xoffset.i.i, align 4
  %75 = ptrtoint ptr %var2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %var2.i.i, align 4
  %add21.i.i = add i32 %76, %74
  %77 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bits_per_pixel.i.i, align 4
  %mul.i118.i.i = mul i32 %78, %add21.i.i
  %add.i119.i.i = add i32 %mul.i118.i.i, 31
  %and.i120.i.i = ashr i32 %add.i119.i.i, 3
  %shr.i121.i.i = and i32 %and.i120.i.i, -4
  %add24.i.i = add i32 %shr.i121.i.i, %72
  %79 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %80, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %add24.i.i) #10, !srcloc !134
  %borderstart_h.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 2
  %81 = ptrtoint ptr %borderstart_h.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %borderstart_h.i.i, align 4
  %shl27.i.i = shl i32 %82, 16
  %borderstop_h.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 3
  %83 = ptrtoint ptr %borderstop_h.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %borderstop_h.i.i, align 4
  %or28.i.i = or i32 %shl27.i.i, %84
  %85 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %86, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %or28.i.i) #10, !srcloc !134
  %borderstart_v.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 4
  %87 = ptrtoint ptr %borderstart_v.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %borderstart_v.i.i, align 4
  %shl31.i.i = shl i32 %88, 16
  %borderstop_v.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 5
  %89 = ptrtoint ptr %borderstop_v.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %borderstop_v.i.i, align 4
  %or32.i.i = or i32 %shl31.i.i, %90
  %91 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %92, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 %or32.i.i) #10, !srcloc !134
  %93 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %94, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 0) #10, !srcloc !134
  %diwstart_h.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 6
  %95 = ptrtoint ptr %diwstart_h.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %diwstart_h.i.i, align 4
  %97 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %98, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 %96) #10, !srcloc !134
  %diwstart_v.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 7
  %99 = ptrtoint ptr %diwstart_v.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %diwstart_v.i.i, align 4
  %shl39.i.i = shl i32 %100, 16
  %or41.i.i = or i32 %shl39.i.i, %100
  %101 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %102, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %or41.i.i) #10, !srcloc !134
  %is_lowres.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 11
  %103 = ptrtoint ptr %is_lowres.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %is_lowres.i.i, align 2
  %conv44.i.i = zext i8 %104 to i32
  %or45.i.i = or i32 %conv44.i.i, 1441792
  %105 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %106, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i.i, i32 %or45.i.i) #10, !srcloc !134
  %107 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp48.i.i = icmp eq i32 %107, 2
  %shl50.i.i = select i1 %cmp48.i.i, i32 8388608, i32 0
  %is_doublescan.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %41, i32 0, i32 10
  %108 = ptrtoint ptr %is_doublescan.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %is_doublescan.i.i, align 1
  %conv51.i.i = zext i8 %109 to i32
  %shl52.i.i = shl nuw nsw i32 %conv51.i.i, 1
  %or53.i.i = or i32 %shl52.i.i, %shl50.i.i
  %or54.i.i = or i32 %or53.i.i, 1
  %110 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr56.i.i = getelementptr i8, ptr %111, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i.i, i32 %or54.i.i) #10, !srcloc !134
  %112 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr58.i.i = getelementptr i8, ptr %113, i32 68
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i.i) #10, !srcloc !135
  %115 = lshr i32 %43, 1
  %dec60.i.i = and i32 %115, 2147483644
  %shl61.i.i = add nsw i32 %dec60.i.i, -4
  %or62.i.i = or i32 %114, %shl61.i.i
  %116 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr64.i.i = getelementptr i8, ptr %117, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i.i, i32 %or62.i.i) #10, !srcloc !134
  %118 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %119, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i.i, i32 %shl61.i.i) #10, !srcloc !134
  %120 = ptrtoint ptr %is_interlaced3.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_interlaced3.i.i, align 4
  %conv69.i.i = zext i8 %121 to i32
  %shl70.i.i = shl nuw nsw i32 %conv69.i.i, 4
  %or71.i.i = or i32 %shl70.i.i, 256
  %122 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr73.i.i = getelementptr i8, ptr %123, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i.i, i32 %or71.i.i) #10, !srcloc !134
  %124 = load ptr, ptr @fb_info, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %124, i32 0, i32 6, i32 2
  %125 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %xres_virtual.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %124, i32 0, i32 6, i32 6
  %127 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i.i = mul i32 %128, %126
  %add.i.i = add i32 %mul.i.i, 31
  %and.i.i = ashr i32 %add.i.i, 3
  %shr.i.i = and i32 %and.i.i, -4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %124, i32 0, i32 6, i32 3
  %129 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %yres_virtual.i, align 4
  %mul.i = mul i32 %shr.i.i, %130
  %131 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %132, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !135
  %134 = load ptr, ptr @fb_info, align 4
  %node.i = getelementptr inbounds %struct.fb_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %node.i, align 4
  %fix44.i = getelementptr inbounds %struct.fb_info, ptr %134, i32 0, i32 7
  %shr.i = lshr i32 %133, 4
  %and.i = and i32 %shr.i, 15
  %and46.i = and i32 %133, 15
  %shr47.i = lshr i32 %mul.i, 10
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %134, i32 0, i32 7, i32 2
  %137 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %smem_len.i, align 4
  %shr49.i = lshr i32 %138, 10
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %136, ptr noundef %fix44.i, i32 noundef %and.i, i32 noundef %and46.i, i32 noundef %shr47.i, i32 noundef %shr49.i) #14
  %139 = load ptr, ptr @fb_info, align 4
  %node55.i = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %node55.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %node55.i, align 4
  %var56.i = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6
  %142 = ptrtoint ptr %var56.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %var56.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 1
  %144 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %yres.i, align 4
  %bits_per_pixel59.i = getelementptr inbounds %struct.fb_info, ptr %139, i32 0, i32 6, i32 6
  %146 = ptrtoint ptr %bits_per_pixel59.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bits_per_pixel59.i, align 4
  %mul.i86.i = mul i32 %147, %143
  %add.i87.i = add i32 %mul.i86.i, 31
  %and.i88.i = ashr i32 %add.i87.i, 3
  %shr.i89.i = and i32 %and.i88.i, -4
  %148 = load i32, ptr @cable_type, align 4
  %149 = load i32, ptr @cables, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %148)
  %cmp2.i.i = icmp eq i32 %149, %148
  br i1 %cmp2.i.i, label %pvr2_init_display.exit.i.if.then.i90.i_crit_edge, label %for.inc.i.i

pvr2_init_display.exit.i.if.then.i90.i_crit_edge: ; preds = %pvr2_init_display.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i90.i

if.then.i90.i:                                    ; preds = %for.inc.1.i.i.if.then.i90.i_crit_edge, %for.inc.i.i.if.then.i90.i_crit_edge, %pvr2_init_display.exit.i.if.then.i90.i_crit_edge
  %i.02.lcssa.i.i = phi i32 [ 0, %pvr2_init_display.exit.i.if.then.i90.i_crit_edge ], [ 1, %for.inc.i.i.if.then.i90.i_crit_edge ], [ 2, %for.inc.1.i.i.if.then.i90.i_crit_edge ]
  %name.i.i = getelementptr %struct.pvr2_params, ptr @cables, i32 %i.02.lcssa.i.i, i32 1
  %150 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %name.i.i, align 4
  br label %pvr2_get_param_name.exit.i

for.inc.i.i:                                      ; preds = %pvr2_init_display.exit.i
  %152 = load i32, ptr getelementptr inbounds ([3 x %struct.pvr2_params], ptr @cables, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %148)
  %cmp2.1.i.i = icmp eq i32 %152, %148
  br i1 %cmp2.1.i.i, label %for.inc.i.i.if.then.i90.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.then.i90.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i90.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %153 = load i32, ptr getelementptr inbounds ([3 x %struct.pvr2_params], ptr @cables, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %148)
  %cmp2.2.i.i = icmp eq i32 %153, %148
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.if.then.i90.i_crit_edge, label %for.inc.1.i.i.pvr2_get_param_name.exit.i_crit_edge

for.inc.1.i.i.pvr2_get_param_name.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_get_param_name.exit.i

for.inc.1.i.i.if.then.i90.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i90.i

pvr2_get_param_name.exit.i:                       ; preds = %for.inc.1.i.i.pvr2_get_param_name.exit.i_crit_edge, %if.then.i90.i
  %retval.0.i.i = phi ptr [ %151, %if.then.i90.i ], [ null, %for.inc.1.i.i.pvr2_get_param_name.exit.i_crit_edge ]
  %154 = load i32, ptr @video_output, align 4
  %155 = load i32, ptr @outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %154)
  %cmp2.i91.i = icmp eq i32 %155, %154
  br i1 %cmp2.i91.i, label %pvr2_get_param_name.exit.i.if.then.i94.i_crit_edge, label %for.inc.i96.i

pvr2_get_param_name.exit.i.if.then.i94.i_crit_edge: ; preds = %pvr2_get_param_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i94.i

if.then.i94.i:                                    ; preds = %for.inc.1.i98.i.if.then.i94.i_crit_edge, %for.inc.i96.i.if.then.i94.i_crit_edge, %pvr2_get_param_name.exit.i.if.then.i94.i_crit_edge
  %i.02.lcssa.i92.i = phi i32 [ 0, %pvr2_get_param_name.exit.i.if.then.i94.i_crit_edge ], [ 1, %for.inc.i96.i.if.then.i94.i_crit_edge ], [ 2, %for.inc.1.i98.i.if.then.i94.i_crit_edge ]
  %name.i93.i = getelementptr %struct.pvr2_params, ptr @outputs, i32 %i.02.lcssa.i92.i, i32 1
  %156 = ptrtoint ptr %name.i93.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %name.i93.i, align 4
  br label %pvr2_get_param_name.exit100.i

for.inc.i96.i:                                    ; preds = %pvr2_get_param_name.exit.i
  %158 = load i32, ptr getelementptr inbounds ([3 x %struct.pvr2_params], ptr @outputs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %154)
  %cmp2.1.i95.i = icmp eq i32 %158, %154
  br i1 %cmp2.1.i95.i, label %for.inc.i96.i.if.then.i94.i_crit_edge, label %for.inc.1.i98.i

for.inc.i96.i.if.then.i94.i_crit_edge:            ; preds = %for.inc.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i94.i

for.inc.1.i98.i:                                  ; preds = %for.inc.i96.i
  %159 = load i32, ptr getelementptr inbounds ([3 x %struct.pvr2_params], ptr @outputs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %154)
  %cmp2.2.i97.i = icmp eq i32 %159, %154
  br i1 %cmp2.2.i97.i, label %for.inc.1.i98.i.if.then.i94.i_crit_edge, label %for.inc.1.i98.i.pvr2_get_param_name.exit100.i_crit_edge

for.inc.1.i98.i.pvr2_get_param_name.exit100.i_crit_edge: ; preds = %for.inc.1.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_get_param_name.exit100.i

for.inc.1.i98.i.if.then.i94.i_crit_edge:          ; preds = %for.inc.1.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i94.i

pvr2_get_param_name.exit100.i:                    ; preds = %for.inc.1.i98.i.pvr2_get_param_name.exit100.i_crit_edge, %if.then.i94.i
  %retval.0.i99.i = phi ptr [ %157, %if.then.i94.i ], [ null, %for.inc.1.i98.i.pvr2_get_param_name.exit100.i_crit_edge ]
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %shr.i89.i, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i99.i) #14
  br label %cleanup

out_err.sink.split.i:                             ; preds = %if.end.i.out_err.sink.split.i_crit_edge, %cond.end36.out_err.sink.split.i_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.7, %cond.end36.out_err.sink.split.i_crit_edge ], [ @.str.10, %if.end.i.out_err.sink.split.i_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink.i) #14
  br label %out_err.i

out_err.i:                                        ; preds = %out_err.sink.split.i, %if.end27.i.out_err.i_crit_edge
  %160 = load ptr, ptr @fb_info, align 4
  %161 = getelementptr inbounds %struct.fb_info, ptr %160, i32 0, i32 25
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %tobool68.not.i = icmp eq ptr %163, null
  br i1 %tobool68.not.i, label %out_err.i.if.end70.i_crit_edge, label %if.then69.i

out_err.i.if.end70.i_crit_edge:                   ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then69.i:                                      ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %163) #10
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then69.i, %out_err.i.if.end70.i_crit_edge
  %mmio_base71.i = getelementptr inbounds %struct.pvr2fb_par, ptr %12, i32 0, i32 12
  %164 = ptrtoint ptr %mmio_base71.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio_base71.i, align 4
  %tobool72.not.i = icmp eq ptr %165, null
  br i1 %tobool72.not.i, label %if.end70.i.cleanup_crit_edge, label %if.then73.i

if.end70.i.cleanup_crit_edge:                     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %165) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then73.i, %if.end70.i.cleanup_crit_edge, %pvr2_get_param_name.exit100.i, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %pvr2_get_param_name.exit100.i ], [ -6, %if.then73.i ], [ -6, %if.end70.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2fb_pci_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fb_info, align 4
  %1 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 25
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %3) #10
  %4 = load ptr, ptr @fb_info, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 25
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = load ptr, ptr @currentpar, align 4
  %mmio_base = getelementptr inbounds %struct.pvr2fb_par, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %9) #10
  %10 = load ptr, ptr @currentpar, align 4
  %mmio_base4 = getelementptr inbounds %struct.pvr2fb_par, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %mmio_base4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mmio_base4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %2 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixclock, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 74239, label %entry.if.end8_crit_edge
    i32 37119, label %entry.if.end8_crit_edge299
  ]

entry.if.end8_crit_edge299:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2fb_check_var.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2fb_check_var, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !136

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixclock, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2fb_check_var.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.20, i32 noundef %6) #10
  br label %cleanup

if.end8:                                          ; preds = %entry.if.end8_crit_edge, %entry.if.end8_crit_edge299
  %7 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %8)
  %cmp9 = icmp ult i32 %8, 320
  br i1 %cmp9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 320, ptr %var, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %11)
  %cmp13 = icmp ult i32 %11, 240
  br i1 %cmp13, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 240, ptr %yres, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %13 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres_virtual, align 4
  %15 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp18 = icmp ult i32 %14, %16
  br i1 %cmp18, label %if.then19, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %xres_virtual, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %18 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual, align 4
  %20 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp24 = icmp ult i32 %19, %21
  br i1 %cmp24, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %yres_virtual, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %23 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %24)
  %cmp29 = icmp ult i32 %24, 17
  br i1 %cmp29, label %if.end43.thread, label %if.else

if.end43.thread:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %bits_per_pixel, align 4
  br label %sw.bb.i

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %24)
  %cmp33 = icmp ult i32 %24, 25
  br i1 %cmp33, label %if.end43.thread286, label %if.else36

if.end43.thread286:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 24, ptr %bits_per_pixel, align 4
  br label %sw.epilog.sink.split.i

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %24)
  %cmp38 = icmp ult i32 %24, 33
  br i1 %cmp38, label %if.end43.thread287, label %if.end43

if.end43.thread287:                               ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %bits_per_pixel, align 4
  br label %sw.bb28.i

if.end43:                                         ; preds = %if.else36
  %28 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %bits_per_pixel, align 4
  %29 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %.pr, label %if.end43.set_color_bitfields.exit_crit_edge [
    i32 16, label %if.end43.sw.bb.i_crit_edge
    i32 24, label %if.end43.sw.epilog.sink.split.i_crit_edge
    i32 32, label %if.end43.sw.bb28.i_crit_edge
  ]

if.end43.sw.bb28.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28.i

if.end43.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

if.end43.sw.bb.i_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end43.set_color_bitfields.exit_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_color_bitfields.exit

sw.bb.i:                                          ; preds = %if.end43.sw.bb.i_crit_edge, %if.end43.thread
  %30 = load ptr, ptr @fb_info, align 4
  %par1.i.i = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 30
  %31 = ptrtoint ptr %par1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %par1.i.i, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.pvr2fb_par, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #10, !srcloc !134
  br label %sw.epilog.sink.split.i

sw.bb28.i:                                        ; preds = %if.end43.sw.bb28.i_crit_edge, %if.end43.thread287
  %35 = load ptr, ptr @fb_info, align 4
  %par1.i69.i = getelementptr inbounds %struct.fb_info, ptr %35, i32 0, i32 30
  %36 = ptrtoint ptr %par1.i69.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %par1.i69.i, align 4
  %mmio_base.i70.i = getelementptr inbounds %struct.pvr2fb_par, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %mmio_base.i70.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base.i70.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %39, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 3) #10, !srcloc !134
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb28.i, %sw.bb.i, %if.end43.sw.epilog.sink.split.i_crit_edge, %if.end43.thread286
  %.sink77.i = phi i32 [ 16, %sw.bb28.i ], [ 11, %sw.bb.i ], [ 16, %if.end43.sw.epilog.sink.split.i_crit_edge ], [ 16, %if.end43.thread286 ]
  %.sink76.i = phi i32 [ 8, %sw.bb28.i ], [ 5, %sw.bb.i ], [ 8, %if.end43.sw.epilog.sink.split.i_crit_edge ], [ 8, %if.end43.thread286 ]
  %.sink74.i = phi i32 [ 8, %sw.bb28.i ], [ 6, %sw.bb.i ], [ 8, %if.end43.sw.epilog.sink.split.i_crit_edge ], [ 8, %if.end43.thread286 ]
  %.sink72.i = phi i32 [ 24, %sw.bb28.i ], [ 0, %sw.bb.i ], [ 0, %if.end43.sw.epilog.sink.split.i_crit_edge ], [ 0, %if.end43.thread286 ]
  %.sink.i = phi i32 [ 8, %sw.bb28.i ], [ 0, %sw.bb.i ], [ 0, %if.end43.sw.epilog.sink.split.i_crit_edge ], [ 0, %if.end43.thread286 ]
  %red29.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %40 = ptrtoint ptr %red29.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink77.i, ptr %red29.i, align 4
  %length32.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %length32.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink76.i, ptr %length32.i, align 4
  %green33.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %42 = ptrtoint ptr %green33.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink76.i, ptr %green33.i, align 4
  %length36.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %length36.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink74.i, ptr %length36.i, align 4
  %blue37.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %44 = ptrtoint ptr %blue37.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %blue37.i, align 4
  %length40.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %length40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink76.i, ptr %length40.i, align 4
  %transp41.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %46 = ptrtoint ptr %transp41.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink72.i, ptr %transp41.i, align 4
  %length44.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %length44.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink.i, ptr %length44.i, align 4
  br label %set_color_bitfields.exit

set_color_bitfields.exit:                         ; preds = %sw.epilog.sink.split.i, %if.end43.set_color_bitfields.exit_crit_edge
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %48 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vmode, align 4
  %and = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.else68, label %if.then45

if.then45:                                        ; preds = %set_color_bitfields.exit
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %50 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool46.not = icmp eq i32 %51, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %if.then45.if.then49_crit_edge

if.then45.if.then49_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

lor.lhs.false:                                    ; preds = %if.then45
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %52 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %yoffset, align 4
  %54 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp48.not = icmp ult i32 %53, %55
  br i1 %cmp48.not, label %lor.lhs.false57, label %lor.lhs.false.if.then49_crit_edge

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %if.then45.if.then49_crit_edge
  %yoffset50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %56 = ptrtoint ptr %yoffset50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %yoffset50, align 4
  br label %if.end71thread-pre-split

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %57 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %yres, align 4
  %sub61 = sub i32 %55, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub61)
  %cmp62 = icmp ugt i32 %53, %sub61
  br i1 %cmp62, label %if.then63, label %lor.lhs.false57.if.end71_crit_edge

lor.lhs.false57.if.end71_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then63:                                        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %yoffset, align 4
  br label %if.end71thread-pre-split

if.else68:                                        ; preds = %set_color_bitfields.exit
  call void @__sanitizer_cov_trace_pc() #12
  %yoffset69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %60 = ptrtoint ptr %yoffset69 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %yoffset69, align 4
  %xoffset70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  br label %if.end71thread-pre-split

if.end71thread-pre-split:                         ; preds = %if.else68, %if.then63, %if.then49
  %xoffset70.sink = phi ptr [ %xoffset70, %if.else68 ], [ %xoffset, %if.then63 ], [ %xoffset, %if.then49 ]
  %61 = ptrtoint ptr %xoffset70.sink to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %xoffset70.sink, align 4
  %62 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr288 = load i32, ptr %yres, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end71thread-pre-split, %lor.lhs.false57.if.end71_crit_edge
  %63 = phi i32 [ %.pr288, %if.end71thread-pre-split ], [ %58, %lor.lhs.false57.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %63)
  %cmp73 = icmp ult i32 %63, 480
  %64 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp75 = icmp eq i32 %64, 2
  br i1 %cmp73, label %land.lhs.true74, label %if.end78

land.lhs.true74:                                  ; preds = %if.end71
  br i1 %cmp75, label %if.end78.thread, label %land.lhs.true74.if.then80_crit_edge

land.lhs.true74.if.then80_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

if.end78.thread:                                  ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %49, 2
  %65 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %vmode, align 4
  br label %if.else84

if.end78:                                         ; preds = %if.end71
  br i1 %cmp75, label %if.end78.if.else84_crit_edge, label %if.end78.if.then80_crit_edge

if.end78.if.then80_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

if.end78.if.else84_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else84

if.then80:                                        ; preds = %if.end78.if.then80_crit_edge, %land.lhs.true74.if.then80_crit_edge
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %66 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sync, align 4
  %or81 = or i32 %67, 16
  store i32 %or81, ptr %sync, align 4
  %68 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vmode, align 4
  %or83 = or i32 %69, 1
  br label %if.end91

if.else84:                                        ; preds = %if.end78.if.else84_crit_edge, %if.end78.thread
  %sync85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %70 = ptrtoint ptr %sync85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sync85, align 4
  %and86 = and i32 %71, -17
  store i32 %and86, ptr %sync85, align 4
  %72 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vmode, align 4
  %and88 = and i32 %73, -2
  br label %if.end91

if.end91:                                         ; preds = %if.else84, %if.then80
  %storemerge = phi i32 [ %and88, %if.else84 ], [ %or83, %if.then80 ]
  %74 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %storemerge, ptr %vmode, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %75 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %activate, align 4
  %and92 = and i32 %76, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and92)
  %cmp93.not = icmp eq i32 %and92, 2
  br i1 %cmp93.not, label %if.end91.if.end113_crit_edge, label %if.then94

if.end91.if.end113_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %borderstop_h = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 3
  %77 = ptrtoint ptr %borderstop_h to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %borderstop_h, align 4
  %diwstart_h = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %diwstart_h to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %diwstart_h, align 4
  %81 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %var, align 4
  %83 = add i32 %80, %82
  %sub96 = sub i32 %78, %83
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %84 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub96, ptr %right_margin, align 4
  %85 = load i32, ptr %diwstart_h, align 4
  %borderstart_h = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %borderstart_h to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %borderstart_h, align 4
  %sub98 = sub i32 %85, %87
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %88 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub98, ptr %left_margin, align 4
  %89 = load i32, ptr %borderstart_h, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %1, align 4
  %92 = load i32, ptr %borderstop_h, align 4
  %sub102 = add i32 %91, %89
  %add103 = sub i32 %sub102, %92
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %93 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add103, ptr %hsync_len, align 4
  %diwstart_v = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %diwstart_v to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %diwstart_v, align 4
  %borderstart_v = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %borderstart_v to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %borderstart_v, align 4
  %sub104 = sub i32 %95, %97
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %98 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %sub104, ptr %upper_margin, align 4
  %borderstop_v = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %borderstop_v to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %borderstop_v, align 4
  %101 = load i32, ptr %diwstart_v, align 4
  %102 = add i32 %63, %101
  %sub108 = sub i32 %100, %102
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %103 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub108, ptr %lower_margin, align 4
  %vsync_total = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %vsync_total to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vsync_total, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %106 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %vsync_len, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then94, %if.end91.if.end113_crit_edge
  %left_margin114 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %107 = ptrtoint ptr %left_margin114 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %left_margin114, align 4
  %109 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %var, align 4
  %add116 = add i32 %110, %108
  %right_margin117 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %111 = ptrtoint ptr %right_margin117 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %right_margin117, align 4
  %add118 = add i32 %add116, %112
  %hsync_len119 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %113 = ptrtoint ptr %hsync_len119 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %hsync_len119, align 4
  %add120 = add i32 %add118, %114
  %sync128 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %115 = ptrtoint ptr %sync128 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sync128, align 4
  %and129 = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end113.if.end179_crit_edge, label %if.then131

if.end113.if.end179_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.then131:                                       ; preds = %if.end113
  %upper_margin121 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %117 = ptrtoint ptr %upper_margin121 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %upper_margin121, align 4
  %add123 = add i32 %118, %63
  %lower_margin124 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %119 = ptrtoint ptr %lower_margin124 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %lower_margin124, align 4
  %add125 = add i32 %add123, %120
  %vsync_len126 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %121 = ptrtoint ptr %vsync_len126 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vsync_len126, align 4
  %add127 = add i32 %add125, %122
  %and133 = and i32 %storemerge, 1
  %spec.select = lshr i32 %add127, %and133
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %spec.select)
  %cmp137 = icmp ugt i32 %spec.select, 287
  br i1 %cmp137, label %if.then138, label %if.else158

if.then138:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_const_cmp4(i32 863, i32 %add120)
  %cmp139.not = icmp eq i32 %add120, 863
  br i1 %cmp139.not, label %if.then138.if.end179_crit_edge, label %do.body141

if.then138.if.end179_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.body141:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2fb_check_var.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2fb_check_var, %if.then153)) #10
          to label %cleanup [label %if.then153], !srcloc !136

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2fb_check_var.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.else158:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_const_cmp4(i32 857, i32 %add120)
  %cmp159.not = icmp eq i32 %add120, 857
  br i1 %cmp159.not, label %if.else158.if.end179_crit_edge, label %do.body161

if.else158.if.end179_crit_edge:                   ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.body161:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2fb_check_var.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2fb_check_var, %if.then173)) #10
          to label %cleanup [label %if.then173], !srcloc !136

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2fb_check_var.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end179:                                        ; preds = %if.else158.if.end179_crit_edge, %if.then138.if.end179_crit_edge, %if.end113.if.end179_crit_edge
  %123 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %xres_virtual, align 4
  %125 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bits_per_pixel, align 4
  %mul.i = mul i32 %126, %124
  %add.i = add i32 %mul.i, 31
  %and.i = ashr i32 %add.i, 3
  %shr.i = and i32 %and.i, -4
  %127 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %shr.i, %128
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %129 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %130)
  %cmp184 = icmp ugt i32 %mul, %130
  %. = select i1 %cmp184, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %if.then173, %do.body161, %if.then153, %do.body141, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then153 ], [ -22, %if.then173 ], [ %., %if.end179 ], [ -22, %do.body ], [ -22, %do.body141 ], [ -22, %do.body161 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2fb_set_par(ptr nocapture noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = load i32, ptr @cable_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -8388564 to ptr)) #10, !srcloc !135
  %and.i = and i32 %3, -983041
  %or.i = or i32 %and.i, 655360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -8388564 to ptr), i32 %or.i) #10, !srcloc !134
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -8388560 to ptr)) #10, !srcloc !137
  %5 = lshr i16 %4, 8
  %6 = and i16 %5, 3
  %and2.i = zext i16 %6 to i32
  store i32 %and2.i, ptr @cable_type, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %7 = phi i32 [ %and2.i, %if.then.i ], [ %2, %entry.if.end.i_crit_edge ]
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %7, label %if.else9.i [
    i32 3, label %if.then5.i
    i32 2, label %if.then8.i
  ]

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -1603261440 to ptr), i32 768) #10, !srcloc !134
  br label %pvr2_init_cable.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -1603261440 to ptr), i32 512) #10, !srcloc !134
  br label %pvr2_init_cable.exit

if.else9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -1603261440 to ptr), i32 0) #10, !srcloc !134
  br label %pvr2_init_cable.exit

pvr2_init_cable.exit:                             ; preds = %if.else9.i, %if.then8.i, %if.then5.i
  %9 = load i32, ptr @cable_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %pvr2_init_cable.exit.if.end_crit_edge

pvr2_init_cable.exit.if.end_crit_edge:            ; preds = %pvr2_init_cable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %pvr2_init_cable.exit
  %10 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp3.not = icmp eq i32 %10, 2
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  store i32 2, ptr @video_output, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %pvr2_init_cable.exit.if.end_crit_edge
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %11 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vmode, align 4
  %and = and i32 %12, 255
  store i32 %and, ptr %vmode, align 4
  %and5 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %13 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp7.not = icmp eq i32 %13, 2
  br i1 %cmp7.not, label %land.lhs.true6.if.end9_crit_edge, label %if.then8

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %is_interlaced = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %is_interlaced to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_interlaced, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %15 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vmode, align 4
  %and11 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %land.lhs.true13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true13:                                  ; preds = %if.end9
  %17 = load i32, ptr @video_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp14 = icmp eq i32 %17, 2
  br i1 %cmp14, label %if.then15, label %land.lhs.true13.if.end16_crit_edge

land.lhs.true13.if.end16_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  %is_doublescan = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %is_doublescan to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %is_doublescan, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true13.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %19 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %left_margin, align 4
  %21 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %var2, align 4
  %add = add i32 %22, %20
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %23 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %right_margin, align 4
  %add17 = add i32 %add, %24
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %25 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hsync_len, align 4
  %add18 = add i32 %add17, %26
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add18, ptr %1, align 4
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %28 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %upper_margin, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %yres, align 4
  %add19 = add i32 %31, %29
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %32 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lower_margin, align 4
  %add20 = add i32 %add19, %33
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %34 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vsync_len, align 4
  %add21 = add i32 %add20, %35
  %vsync_total = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %vsync_total to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add21, ptr %vsync_total, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %37 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sync, align 4
  %and22 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else35, label %if.then24

if.then24:                                        ; preds = %if.end16
  %is_interlaced26 = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %is_interlaced26 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_interlaced26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool27.not = icmp ne i8 %40, 0
  %div122 = zext i1 %tobool27.not to i32
  %spec.select = lshr i32 %add21, %div122
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %spec.select)
  %cmp30 = icmp ugt i32 %spec.select, 287
  %borderstart_h = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 2
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %borderstart_h to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 116, ptr %borderstart_h, align 4
  br label %if.end38

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %borderstart_h to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 126, ptr %borderstart_h, align 4
  br label %if.end38

if.else35:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %borderstart_h36 = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %borderstart_h36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 126, ptr %borderstart_h36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.else, %if.then31
  %.sink = phi i32 [ 44, %if.then31 ], [ 18, %if.else ], [ 40, %if.else35 ]
  %borderstart_v = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %borderstart_v to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %borderstart_v, align 4
  %borderstart_h39 = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %borderstart_h39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %borderstart_h39, align 4
  %47 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %left_margin, align 4
  %add41 = add i32 %48, %46
  %diwstart_h = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %diwstart_h to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add41, ptr %diwstart_h, align 4
  %borderstart_v42 = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %borderstart_v42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %borderstart_v42, align 4
  %52 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %upper_margin, align 4
  %add44 = add i32 %53, %51
  %diwstart_v = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %diwstart_v to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add44, ptr %diwstart_v, align 4
  %55 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %var2, align 4
  %add47 = add i32 %56, %add41
  %57 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %right_margin, align 4
  %add49 = add i32 %add47, %58
  %borderstop_h = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 3
  %59 = ptrtoint ptr %borderstop_h to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add49, ptr %borderstop_h, align 4
  %60 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %yres, align 4
  %add52 = add i32 %61, %add44
  %62 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lower_margin, align 4
  %add54 = add i32 %add52, %63
  %borderstop_v = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %borderstop_v to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add54, ptr %borderstop_v, align 4
  %is_interlaced55 = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 9
  %65 = ptrtoint ptr %is_interlaced55 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_interlaced55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool56.not = icmp eq i8 %66, 0
  br i1 %tobool56.not, label %if.then57, label %if.end38.if.end60_crit_edge

if.end38.if.end60_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then57:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %div59121 = lshr i32 %add54, 1
  %67 = ptrtoint ptr %borderstop_v to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div59121, ptr %borderstop_v, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end38.if.end60_crit_edge
  %68 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %var2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %69)
  %cmp63 = icmp ult i32 %69, 640
  br i1 %cmp63, label %if.then64, label %if.end60.if.end65_crit_edge

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %is_lowres = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %is_lowres to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %is_lowres, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60.if.end65_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %71 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %73 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bits_per_pixel, align 4
  %mul.i = mul i32 %74, %72
  %add.i = add i32 %mul.i, 31
  %and.i123 = ashr i32 %add.i, 3
  %shr.i = and i32 %and.i123, -4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %smem_start, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %77 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %yoffset, align 4
  %mul = mul i32 %shr.i, %78
  %mul67 = mul i32 %mul, %shr.i
  %add68 = add i32 %mul67, %76
  %disp_start = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %disp_start to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add68, ptr %disp_start, align 4
  %line_length70 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %80 = ptrtoint ptr %line_length70 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shr.i, ptr %line_length70, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %regno)
  %cmp = icmp ult i32 %3, %regno
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %5, label %do.body [
    i32 16, label %sw.bb
    i32 24, label %sw.bb6
    i32 32, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %red, 63488
  %and2 = lshr i32 %green, 5
  %shr = and i32 %and2, 2016
  %or = or i32 %shr, %and
  %and3 = lshr i32 %blue, 11
  %shr4 = and i32 %and3, 31
  %or5 = or i32 %or, %shr4
  %mmio_base.i = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4096
  %mul.i = shl i32 %regno, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %or5) #10, !srcloc !134
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr8 = and i32 %green, -256
  %shr9 = lshr i32 %blue, 8
  %9 = shl i32 %red, 8
  %shl = and i32 %9, -65536
  %or11 = or i32 %shl, %shr8
  %or12 = or i32 %or11, %shr9
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr15 = and i32 %green, -256
  %shr16 = lshr i32 %blue, 8
  %shl17 = shl i32 %transp, 24
  %10 = shl i32 %red, 8
  %shl18 = and i32 %10, -65536
  %or19 = or i32 %shr15, %shl18
  %or21 = or i32 %or19, %shr16
  %or22 = or i32 %or21, %shl17
  %mmio_base.i57 = getelementptr inbounds %struct.pvr2fb_par, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %mmio_base.i57 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %12, i32 4096
  %mul.i59 = shl i32 %regno, 2
  %add.ptr1.i60 = getelementptr i8, ptr %add.ptr.i58, i32 %mul.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60, i32 %or22) #10, !srcloc !134
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2fb_setcolreg.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2fb_setcolreg, %if.then26)) #10
          to label %cleanup [label %if.then26], !srcloc !136

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2fb_setcolreg.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.24, i32 noundef %14) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb6, %sw.bb
  %tmp.0 = phi i32 [ %or22, %sw.bb13 ], [ %or12, %sw.bb6 ], [ %or5, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp30 = icmp ult i32 %regno, 16
  br i1 %cmp30, label %if.then31, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %15 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 %regno
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %tmp.0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %sw.epilog.cleanup_crit_edge, %if.then26, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then26 ], [ 0, %if.then31 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pvr2fb_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2fb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %cable_arg = alloca [80 x i8], align 1
  %output_arg = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cable_arg) #10
  %1 = getelementptr inbounds i8, ptr %cable_arg, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 79)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %output_arg) #10
  %3 = getelementptr inbounds i8, ptr %output_arg, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 79)
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %output_arg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %output_arg, align 1
  %8 = ptrtoint ptr %cable_arg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cable_arg, align 1
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.35) #10
  %tobool3.not2 = icmp eq ptr %call1, null
  br i1 %tobool3.not2, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %if.end.while.body_crit_edge ]
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %while.body.while.cond.backedge_crit_edge, label %if.end6

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end6:                                          ; preds = %while.body
  %call7 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @fb_invert_cmaps() #10
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end6
  %call10 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.37, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call3, i32 6
  %call13 = call ptr @strcpy(ptr noundef nonnull %cable_arg, ptr noundef %add.ptr) #15
  br label %while.cond.backedge

if.else14:                                        ; preds = %if.else
  %call15 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.38, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19 = getelementptr i8, ptr %call3, i32 7
  %call20 = call ptr @strcpy(ptr noundef nonnull %output_arg, ptr noundef %add.ptr19) #15
  br label %while.cond.backedge

if.else21:                                        ; preds = %if.else14
  %call22 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.39, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nopan, align 4
  br label %while.cond.backedge

if.else25:                                        ; preds = %if.else21
  %call26 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.40, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else25.while.cond.backedge_crit_edge, label %if.else29

if.else25.while.cond.backedge_crit_edge:          ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else29, %if.else25.while.cond.backedge_crit_edge, %if.then24, %if.then17, %if.then12, %if.then9, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.35) #10
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end.while.end_crit_edge
  %11 = ptrtoint ptr %cable_arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cable_arg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool36.not = icmp eq i8 %12, 0
  br i1 %tobool36.not, label %while.end.if.end40_crit_edge, label %if.then37

while.end.if.end40_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = call fastcc i32 @pvr2_get_param_val(ptr noundef nonnull @cables, ptr noundef nonnull %cable_arg)
  store i32 %call39, ptr @cable_type, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %while.end.if.end40_crit_edge
  %13 = ptrtoint ptr %output_arg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %output_arg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool42.not = icmp eq i8 %14, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = call fastcc i32 @pvr2_get_param_val(ptr noundef nonnull @outputs, ptr noundef nonnull %output_arg)
  store i32 %call45, ptr @video_output, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %output_arg) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cable_arg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_invert_cmaps() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvr2_get_param_val(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %s) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %s) #15
  %name = getelementptr %struct.pvr2_params, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strncasecmp(ptr noundef %1, ptr noundef %s, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.02.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.pvr2_params, ptr %p, i32 %i.02.lcssa
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %name.1 = getelementptr %struct.pvr2_params, ptr %p, i32 1, i32 1
  %4 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.1, align 4
  %call1.1 = tail call i32 @strncasecmp(ptr noundef %5, ptr noundef %s, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %name.2 = getelementptr %struct.pvr2_params, ptr %p, i32 2, i32 1
  %6 = ptrtoint ptr %name.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.2, align 4
  %call1.2 = tail call i32 @strncasecmp(ptr noundef %7, ptr noundef %s, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool.not.2, label %for.inc.1.if.then_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cleanup:                                          ; preds = %for.inc.1.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -1, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_pvr2fb__309_1130_pvr2fb_init6, !1, !"__initcall__kmod_pvr2fb__309_1130_pvr2fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1130, i32 1}
!2 = !{ptr @__exitcall_pvr2fb_exit, !3, !"__exitcall_pvr2fb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1131, i32 1}
!4 = !{ptr @__UNIQUE_ID_author310, !5, !"__UNIQUE_ID_author310", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1133, i32 1}
!6 = !{ptr @__UNIQUE_ID_description311, !7, !"__UNIQUE_ID_description311", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1134, i32 1}
!8 = !{ptr @__UNIQUE_ID_file312, !9, !"__UNIQUE_ID_file312", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1135, i32 1}
!10 = !{ptr @__UNIQUE_ID_license313, !9, !"__UNIQUE_ID_license313", i1 false, i1 false}
!11 = !{ptr @fb_info, !12, !"fb_info", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 147, i32 24}
!13 = !{ptr @board_driver, !14, !"board_driver", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1064, i32 3}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1002, i32 9}
!17 = !{ptr @pvr2fb_pci_driver, !18, !"pvr2fb_pci_driver", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 993, i32 26}
!19 = !{ptr @pvr2fb_pci_tbl, !20, !"pvr2fb_pci_tbl", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 985, i32 35}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 947, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pvr2fb_pci_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @pvr2fb_pci_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 953, i32 3}
!29 = !{ptr @pvr2fb_pci_probe._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pvr2fb_pci_probe._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @pvr2_fix, !32, !"pvr2_fix", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 149, i32 33}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 789, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pvr2fb_common_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pvr2fb_common_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 796, i32 3}
!40 = !{ptr @pvr2fb_common_init._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvr2fb_common_init._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 815, i32 17}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 834, i32 2}
!46 = !{ptr @pvr2fb_common_init._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pvr2fb_common_init._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 838, i32 2}
!50 = !{ptr @pvr2fb_common_init._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pvr2fb_common_init._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @currentpar, !53, !"currentpar", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 145, i32 4}
!54 = distinct !{null, !55, !"nopan", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 176, i32 12}
!56 = distinct !{null, !57, !"nowrap", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 177, i32 12}
!58 = !{ptr @pvr2fb_ops, !59, !"pvr2fb_ops", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 722, i32 28}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 438, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pvr2fb_check_var.__UNIQUE_ID_ddebug306, !61, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 514, i32 5}
!66 = !{ptr @pvr2fb_check_var.__UNIQUE_ID_ddebug307, !65, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 520, i32 5}
!69 = !{ptr @pvr2fb_check_var.__UNIQUE_ID_ddebug308, !68, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 314, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pvr2fb_setcolreg.__UNIQUE_ID_ddebug305, !71, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!74 = distinct !{null, !75, !"do_blank", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 184, i32 14}
!76 = !{ptr @video_output, !77, !"video_output", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 174, i32 12}
!78 = distinct !{null, !79, !"defmode", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 226, i32 12}
!80 = !{ptr @mode_option, !81, !"mode_option", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 227, i32 14}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 206, i32 2}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 211, i32 2}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 215, i32 2}
!88 = !{ptr @pvr2_modedb, !89, !"pvr2_modedb", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 197, i32 28}
!90 = !{ptr @pvr2_var, !91, !"pvr2_var", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 158, i32 39}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 117, i32 12}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 117, i32 31}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 117, i32 56}
!98 = !{ptr @cables, !99, !"cables", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 116, i32 27}
!100 = !{ptr @cable_type, !101, !"cable_type", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 173, i32 12}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 121, i32 12}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 121, i32 32}
!106 = !{ptr @outputs, !107, !"outputs", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 120, i32 27}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1101, i32 4}
!110 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pvr2fb_init._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @pvr2fb_init._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1033, i32 38}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1036, i32 25}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1038, i32 33}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1040, i32 33}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1042, i32 33}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/pvr2fb.c", i32 1044, i32 33}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 6143059}
!135 = !{i64 6143477}
!136 = !{i64 2148982272, i64 2148982277, i64 2148982290, i64 2148982334, i64 2148982368, i64 2148982389}
!137 = !{i64 6142639}
