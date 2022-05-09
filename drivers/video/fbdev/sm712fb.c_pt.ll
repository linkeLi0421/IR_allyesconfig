; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/sm712fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/sm712fb.c"
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
%struct.atomic_t = type { i32 }
%struct.vesa_mode = type { [6 x i8], i16, i16, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.modeinit = type { i32, i32, i32, i32, i8, [5 x i8], [21 x i8], [70 x i8], [20 x i8], [16 x i8], [9 x i8], [21 x i8], [25 x i8], [30 x i8], [24 x i8] }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.86, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.smtcfb_info = type { ptr, ptr, i16, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [17 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_sm712fb__309_1787_sm712fb_init6 = internal global ptr @sm712fb_init, section ".initcall6.init", align 4
@smtcfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.4, ptr @smtcfb_pci_table, ptr @smtcfb_pci_probe, ptr @smtcfb_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm7xx_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sm712fb_exit = internal global ptr @sm712fb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [30 x i8] c"sm712fb.author=Siliconmotion \00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [61 x i8] c"sm712fb.description=Framebuffer driver for SMI Graphic Cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [41 x i8] c"sm712fb.file=drivers/video/fbdev/sm712fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [20 x i8] c"sm712fb.license=GPL\00", section ".modinfo", align 1
@smtc_regbaseaddress = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm712fb\00", [24 x i8] zeroinitializer }, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@smtc_scr_info.0 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@smtc_scr_info.1 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@smtc_scr_info.2 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@sm7xx_vga_setup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm7xx_vga_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/fbdev/sm712fb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s = %s\0A\00", [23 x i8] zeroinitializer }, align 32
@vesa_mode_table = internal constant { [12 x %struct.vesa_mode], [48 x i8] } { [12 x %struct.vesa_mode] [%struct.vesa_mode { [6 x i8] c"0x301\00", i16 640, i16 480, i16 8 }, %struct.vesa_mode { [6 x i8] c"0x303\00", i16 800, i16 600, i16 8 }, %struct.vesa_mode { [6 x i8] c"0x305\00", i16 1024, i16 768, i16 8 }, %struct.vesa_mode { [6 x i8] c"0x307\00", i16 1280, i16 1024, i16 8 }, %struct.vesa_mode { [6 x i8] c"0x311\00", i16 640, i16 480, i16 16 }, %struct.vesa_mode { [6 x i8] c"0x314\00", i16 800, i16 600, i16 16 }, %struct.vesa_mode { [6 x i8] c"0x317\00", i16 1024, i16 768, i16 16 }, %struct.vesa_mode { [6 x i8] c"0x31A\00", i16 1280, i16 1024, i16 16 }, %struct.vesa_mode { [6 x i8] c"0x312\00", i16 640, i16 480, i16 24 }, %struct.vesa_mode { [6 x i8] c"0x315\00", i16 800, i16 600, i16 24 }, %struct.vesa_mode { [6 x i8] c"0x318\00", i16 1024, i16 768, i16 24 }, %struct.vesa_mode { [6 x i8] c"0x31B\00", i16 1280, i16 1024, i16 24 }], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smtcfb\00", [25 x i8] zeroinitializer }, align 32
@smtcfb_pci_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4719, i32 1808, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4719, i32 1810, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4719, i32 1824, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sm7xx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @smtcfb_pci_suspend, ptr @smtcfb_pci_resume, ptr @smtcfb_pci_suspend, ptr @smtcfb_pci_resume, ptr @smtcfb_pci_suspend, ptr @smtcfb_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Silicon Motion display driver.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smtcfb_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr = internal global ptr @smtcfb_pci_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm7xxfb\00", [24 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1535, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot reserve framebuffer region\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.13 = internal global ptr @smtcfb_pci_probe._entry.10, section ".printk_index", align 4
@smtcfb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"smXXXfb\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 2400, i32 0, i32 0, i32 88, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sm%Xfb\00", [25 x i8] zeroinitializer }, align 32
@smtcfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @smtcfb_read, ptr @smtcfb_write, ptr @smtc_check_var, ptr @smtc_set_par, ptr @smtc_setcolreg, ptr null, ptr @smtc_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smtcfb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 1024, i32 600, i32 1024, i32 600, i32 0, i32 0, i32 16, i32 0, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 1568, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%lu MiB of VRAM detected.\0A\00", [37 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.17 = internal global ptr @smtcfb_pci_probe._entry.15, section ".printk_index", align 4
@smtcfb_pci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.2, i32 1579, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unable to map memory mapped IO!\0A\00", [59 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.20 = internal global ptr @smtcfb_pci_probe._entry.18, section ".printk_index", align 4
@smtcfb_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.2, i32 1590, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sfb->lfb=%p\0A\00", [19 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.23 = internal global ptr @smtcfb_pci_probe._entry.21, section ".printk_index", align 4
@smtcfb_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.2, i32 1610, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.25 = internal global ptr @smtcfb_pci_probe._entry.24, section ".printk_index", align 4
@smtcfb_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.6, ptr @.str.2, i32 1626, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"No valid Silicon Motion display chip was detected!\0A\00", [44 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.28 = internal global ptr @smtcfb_pci_probe._entry.26, section ".printk_index", align 4
@smtcfb_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.6, ptr @.str.2, i32 1657, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Silicon Motion SM%X Rev%X primary display mode %dx%d-%d Init Complete.\0A\00", [56 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.31 = internal global ptr @smtcfb_pci_probe._entry.29, section ".printk_index", align 4
@smtcfb_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.6, ptr @.str.2, i32 1662, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Silicon Motion, Inc. primary display init fail.\0A\00", [47 x i8] zeroinitializer }, align 32
@smtcfb_pci_probe._entry_ptr.34 = internal global ptr @smtcfb_pci_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sm7xx_set_timing.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm7xx_set_timing\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"sfb->width=%d sfb->height=%d sfb->fb->var.bits_per_pixel=%d sfb->hz=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@vgamode = internal constant { [12 x %struct.modeinit], [784 x i8] } { [12 x %struct.modeinit] [%struct.modeinit { i32 640, i32 480, i32 16, i32 60, i8 -29, [5 x i8] c"\03\01\0F\00\0E", [21 x i8] c"\FF\BE\EF\FF\00\0E\17,\99\00\00\00\00\00\00\00\C40\02\01\01", [70 x i8] c"2\03\A0\09\C02222222\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00222\04$cOR\0B\DF\EA\04P\1922\00\002\01\80~\1A\1A\00\00\00P\03t\14\07\82\07\04\00E00@0", [20 x i8] c"\FF\07\00o\7F\7F\FF2\F7\00\00\00\EF\FF22\00\00\00\00", [16 x i8] c"\00\FF\BF\FF\FF\ED\ED\ED{\FF\FF\FF\BF\EF\FF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"_OO\00S\1F\0B>\00@\00\00\00\00\00\00\EA\0C\DFP@\DF\00\E3\FF", [30 x i8] c"\00\00\00\00\00U\03 \00\00\00@\00\E7\FF\FD_O\00T\00\0B\DF\00\EA\0C.\00O\DF", [24 x i8] c"V\DD^\EA\87D\8FU\0A\8FU\0A\00\00\18\00\11\10\0B\0A\0A\0A\0A\00" }, %struct.modeinit { i32 640, i32 480, i32 24, i32 60, i8 -29, [5 x i8] c"\03\01\0F\00\0E", [21 x i8] c"\FF\BE\EF\FF\00\0E\17,\99\00\00\00\00\00\00\00\C40\02\01\01", [70 x i8] c"2\03\A0\09\C02222222\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00222\04$cOR\0B\DF\EA\04P\1922\00\002\01\80~\1A\1A\00\00\00P\03t\14\07\82\07\04\00E00@0", [20 x i8] c"\FF\07\00o\7F\7F\FF2\F7\00\00\00\EF\FF22\00\00\00\00", [16 x i8] c"\00\FF\BF\FF\FF\ED\ED\ED{\FF\FF\FF\BF\EF\FF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"_OO\00S\1F\0B>\00@\00\00\00\00\00\00\EA\0C\DFP@\DF\00\E3\FF", [30 x i8] c"\00\00\00\00\00U\03 \00\00\00@\00\E7\FF\FD_O\00T\00\0B\DF\00\EA\0C.\00O\DF", [24 x i8] c"V\DD^\EA\87D\8FU\0A\8FU\0A\00\00\18\00\11\10\0B\0A\0A\0A\0A\00" }, %struct.modeinit { i32 640, i32 480, i32 32, i32 60, i8 -29, [5 x i8] c"\03\01\0F\00\0E", [21 x i8] c"\FF\BE\EF\FF\00\0E\17,\99\00\00\00\00\00\00\00\C40\02\01\01", [70 x i8] c"2\03\A0\09\C02222222\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00222\04$cOR\0B\DF\EA\04P\1922\00\002\01\80~\1A\1A\00\00\00P\03t\14\07\82\07\04\00E00@0", [20 x i8] c"\FF\07\00o\7F\7F\FF2\F7\00\00\00\EF\FF22\00\00\00\00", [16 x i8] c"\00\FF\BF\FF\FF\ED\ED\ED{\FF\FF\FF\BF\EF\FF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"_OO\00S\1F\0B>\00@\00\00\00\00\00\00\EA\0C\DFP@\DF\00\E3\FF", [30 x i8] c"\00\00\00\00\00U\03 \00\00\00@\00\E7\FF\FD_O\00T\00\0B\DF\00\EA\0C.\00O\DF", [24 x i8] c"V\DD^\EA\87D\8FU\0A\8FU\0A\00\00\18\00\11\10\0B\0A\0A\0A\0A\00" }, %struct.modeinit { i32 800, i32 600, i32 16, i32 60, i8 43, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\FF\BE\EE\FF\00\0E\17,\99\00\01\00\00\00\00\00\C40\02\01\01", [70 x i8] c"4\03 \09\C0$$$$$$$\00\00\03\FF\00\FC\00\00 8\00\FC \0CD \00$$$\04H\83chrWX\04UY$$\00\00$\01\80z\1A\1A\00\00\00P\03t\14\1C\855\13\02E05@ ", [20 x i8] c"\00\00\00o\7F\7F\FF$\00\00\00\00\FF\FF$$\00\00\00\00", [16 x i8] c"\00\FF\BF\FF\FF\ED\ED\ED{\FF\FF\FF\BF\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\7Fcc\00h\18r\F0\00`\00\00\00\00\00\00X\0CWd@W\00\E3\FF", [30 x i8] c"\00\00\00\00\003\03 \00\00\00@\00\E7\BF\FD\7Fc\00i\18rW\00X\0C\E0 cW", [24 x i8] c"VK^U\86\9D\8E\AA\DB*\DF3\00\00\18\00 \1F\1A\19\0F\0F\0F\00" }, %struct.modeinit { i32 800, i32 600, i32 24, i32 60, i8 43, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\FF\BE\EE\FF\00\0E\17,\99\00\00\00\00\00\00\00\C40\02\01\01", [70 x i8] c"6\03 \09\C06666666\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00666\04H\83chrWX\04UY66\00\006\01\80~\1A\1A\00\00\00P\03t\14\1C\855\13\02E00@ ", [20 x i8] c"\FF\07\00o\7F\7F\FF6\F7\00\00\00\EF\FF66\00\00\00\00", [16 x i8] c"\00\FF\BF\FF\FF\ED\ED\ED{\FF\FF\FF\BF\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\7Fcc\00h\18r\F0\00`\00\00\00\00\00\00X\0CWd@W\00\E3\FF", [30 x i8] c"\00\00\00\00\003\03 \00\00\00@\00\E7\BF\FD\7Fc\00i\18rW\00X\0C\E0 cW", [24 x i8] c"VK^U\86\9D\8E\AA\DB*\DF3\00\00\18\00 \1F\1A\19\0F\0F\0F\00" }, %struct.modeinit { i32 800, i32 600, i32 32, i32 60, i8 43, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\FF\BE\EE\FF\00\0E\17,\99\00\01\00\00\00\00\00\C40\02\01\01", [70 x i8] c"4\03 \09\C0$$$$$$$\00\00\03\FF\00\FC\00\00 8\00\FC \0CD \00$$$\04H\83chrWX\04UY$$\00\00$\01\80z\1A\1A\00\00\00P\03t\14\1C\855\13\02E05@ ", [20 x i8] c"\00\00\00o\7F\7F\FF$\00\00\00\00\FF\FF$$\00\00\00\00", [16 x i8] c"\00\FF\BF\FF\FF\ED\ED\ED{\FF\FF\FF\BF\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\7Fcc\00h\18r\F0\00`\00\00\00\00\00\00X\0CWd@W\00\E3\FF", [30 x i8] c"\00\00\00\00\003\03 \00\00\00@\00\E7\BF\FD\7Fc\00i\18rW\00X\0C\E0 cW", [24 x i8] c"VK^U\86\9D\8E\AA\DB*\DF3\00\00\18\00 \1F\1A\19\0F\0F\0F\00" }, %struct.modeinit { i32 1024, i32 600, i32 16, i32 60, i8 -21, [5 x i8] c"\03\01\0F\00\0E", [21 x i8] c"\C8@\14`\00\0A\17 Q\00\01\00\00\00\00\00\C40\02\00\01", [70 x i8] c"\22\03$\09\C0\22\22\22\22\22\22\22\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00\22\22\22\06h\A7\7F\83$\FF\03\00`Y\22\22\00\00\22\01\80z\1A\1A\00\00\00P\03\16\02\0D\82\09\02\04E?0@ ", [20 x i8] c"\FF\07\00\FF\FF\FF\FF:\F7\00\00\00\FF\FF::\00\00\00\00", [16 x i8] c"\00\FB\9F\01\00\ED\ED\ED{\FB\FF\FF\97\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\A3\7F\7F\00\85\16$\F5\00`\00\00\00\00\00\00\03\09\FF\80@\FF\00\E3\FF", [30 x i8] c"\00\00\00\00\00\80\02 \00\00\00@\00\FF\BF\FF\A3\7F\00\82\0BoW\00\\\0F\E0\E0\7FW", [24 x i8] c"U\D9]\E1\86\1B\8E&\DA\8D\DE\94\00\00\18\00\03\03\03\03\03\03\15\03" }, %struct.modeinit { i32 1024, i32 768, i32 16, i32 60, i8 -21, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\F3\B6\C0\DD\00\0E\17,\99\02\01\00\00\00\00\00\C40\02\01\01", [70 x i8] c"8\03 \09\C0:::::::\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00\00\00:\06h\A7\7F\83$\FF\03\0F`Y::\00\00:\01\80~\1A\1A\00\00\00P\03t\14;\0D\09\02\04E00@ ", [20 x i8] c"\FF\07\00\FF\FF\FF\FF:\F7\00\00\00\FF\FF::\00\00\00\00", [16 x i8] c"\00\FB\9F\01\00\ED\ED\ED{\FB\FF\FF\97\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\A3\7F\7F\00\85\16$\F5\00`\00\00\00\00\00\00\03\09\FF\80@\FF\00\E3\FF", [30 x i8] c"\00\00\00\00\00\80\02 \00\00\00@\00\FF\BF\FF\A3\7F\00\86\15$\FF\00\01\07\E5 \7F\FF", [24 x i8] c"U\D9]\E1\86\1B\8E&\DA\8D\DE\94\00\00\18\00\03\03\03\03\03\03\15\03" }, %struct.modeinit { i32 1024, i32 768, i32 24, i32 60, i8 -21, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\F3\B6\C0\DD\00\0E\17,\99\02\01\00\00\00\00\00\C40\02\01\01", [70 x i8] c"8\03 \09\C0:::::::\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00\00\00:\06h\A7\7F\83$\FF\03\00`Y::\00\00:\01\80~\1A\1A\00\00\00P\03t\14;\0D\09\02\04E00@ ", [20 x i8] c"\FF\07\00\FF\FF\FF\FF:\F7\00\00\00\FF\FF::\00\00\00\00", [16 x i8] c"\00\FB\9F\01\00\ED\ED\ED{\FB\FF\FF\97\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\A3\7F\7F\00\85\16$\F5\00`\00\00\00\00\00\00\03\09\FF\80@\FF\00\E3\FF", [30 x i8] c"\00\00\00\00\00\80\02 \00\00\00@\00\FF\BF\FF\A3\7F\00\86\15$\FF\00\01\07\E5 \7F\FF", [24 x i8] c"U\D9]\E1\86\1B\8E&\DA\8D\DE\94\00\00\18\00\03\03\03\03\03\03\15\03" }, %struct.modeinit { i32 1024, i32 768, i32 32, i32 60, i8 -21, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\F3\B6\C0\DD\00\0E\17,\99\02\01\00\00\00\00\00\C42\02\01\01", [70 x i8] c"8\03 \09\C0:::::::\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00\00\00:\06h\A7\7F\83$\FF\03\00`Y::\00\00:\01\80~\1A\1A\00\00\00P\03t\14;\0D\09\02\04E00@ ", [20 x i8] c"\FF\07\00\FF\FF\FF\FF:\F7\00\00\00\FF\FF::\00\00\00\00", [16 x i8] c"\00\FB\9F\01\00\ED\ED\ED{\FB\FF\FF\97\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\A3\7F\7F\00\85\16$\F5\00`\00\00\00\00\00\00\03\09\FF\80@\FF\00\E3\FF", [30 x i8] c"\00\00\00\00\00\80\02 \00\00\00@\00\FF\BF\FF\A3\7F\00\86\15$\FF\00\01\07\E5 \7F\FF", [24 x i8] c"U\D9]\E1\86\1B\8E&\DA\8D\DE\94\00\00\18\00\03\03\03\03\03\03\15\03" }, %struct.modeinit { i32 320, i32 240, i32 16, i32 60, i8 -21, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\F3\B6\C0\DD\00\0E\17,\99\02\01\00\00\00\00\00\C42\02\01\01", [70 x i8] c"8\03 \09\C0:::::::\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00\00\00:\06h\A7\7F\83$\FF\03\00`Y::\00\00:\01\80~\1A\1A\00\00\00P\03t\14\08C\08C\04E00@ ", [20 x i8] c"\FF\07\00\FF\FF\FF\FF:\F7\00\00\00\FF\FF::\00\00\00\00", [16 x i8] c"\00\FB\9F\01\00\ED\ED\ED{\FB\FF\FF\97\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\A3\7F\7F\00\85\16$\F5\00`\00\00\00\00\00\00\03\09\FF\80@\FF\00\E3\FF", [30 x i8] c"\00\00\00\00\00\80\02 \00\000@\00\FF\BF\FF.'\00+\0C\0F\EF\00\FE\0F\01\C0'\EF", [24 x i8] c"U\D9]\E1\86\1B\8E&\DA\8D\DE\94\00\00\18\00\03\03\03\03\03\03\15\03" }, %struct.modeinit { i32 320, i32 240, i32 32, i32 60, i8 -21, [5 x i8] c"\03\01\0F\03\0E", [21 x i8] c"\F3\B6\C0\DD\00\0E\17,\99\02\01\00\00\00\00\00\C42\02\01\01", [70 x i8] c"8\03 \09\C0:::::::\00\00\03\FF\00\FC\00\00 \18\00\FC \0CD \00\00\00:\06h\A7\7F\83$\FF\03\00`Y::\00\00:\01\80~\1A\1A\00\00\00P\03t\14\08C\08C\04E00@ ", [20 x i8] c"\FF\07\00\FF\FF\FF\FF:\F7\00\00\00\FF\FF::\00\00\00\00", [16 x i8] c"\00\FB\9F\01\00\ED\ED\ED{\FB\FF\FF\97\EF\BF\DF", [9 x i8] c"\00\00\00\00\00@\05\0F\FF", [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0FA\00\0F\00\00", [25 x i8] c"\A3\7F\7F\00\85\16$\F5\00`\00\00\00\00\00\00\03\09\FF\80@\FF\00\E3\FF", [30 x i8] c"\00\00\00\00\00\80\02 \00\000@\00\FF\BF\FF.'\00+\0C\0F\EF\00\FE\0F\01\C0'\EF", [24 x i8] c"U\D9]\E1\86\1B\8E&\DA\8D\DE\94\00\00\18\00\03\03\03\03\03\03\15\03" }], [784 x i8] zeroinitializer }, align 32
@sm7xx_set_timing.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"vgamode[j].mmsizex=%d vgamode[j].mmSizeY=%d vgamode[j].bpp=%d vgamode[j].hz=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@sm7xx_set_timing.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vgamode index=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@smtc_map_smem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1418, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: unable to map screen memory\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smtc_map_smem\00", [18 x i8] zeroinitializer }, align 32
@smtc_map_smem._entry_ptr = internal global ptr @smtc_map_smem._entry, section ".printk_index", align 4
@switch.table.smtcfb_pci_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4194304, i32 4194304, i32 0, i32 16777216], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1808, i64 1810, i64 1824]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 16, i64 1808, i64 1810, i64 1824]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 1808, i64 1810, i64 1824]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 16, i64 1808, i64 1810, i64 1824]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 16, i64 1808, i64 1810, i64 1824]
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"smtcfb_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1766, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"smtc_regbaseaddress\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 57, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1778, i32 21 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 833, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"smtc_scr_info.0\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"smtc_scr_info.1\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"smtc_scr_info.2\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 847, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"vesa_mode_table\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 95, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1767, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"smtcfb_pci_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1683, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"sm7xx_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1764, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1527, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1533, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1535, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"smtcfb_fix\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 76, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1539, i32 25 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"smtcfb_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1372, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"smtcfb_var\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 59, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1567, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1577, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1590, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1608, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1625, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1654, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1662, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 214, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 174, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1186, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"vgamode\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 115, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1197, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1202, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [33 x i8] c"../drivers/video/fbdev/sm712fb.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1417, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [30 x i8] c"switch.table.smtcfb_pci_probe\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_sm712fb_exit, ptr @__initcall__kmod_sm712fb__309_1787_sm712fb_init6, ptr @sm712fb_exit, ptr @smtc_map_smem._entry, ptr @smtc_map_smem._entry_ptr, ptr @smtcfb_pci_probe._entry, ptr @smtcfb_pci_probe._entry.10, ptr @smtcfb_pci_probe._entry.15, ptr @smtcfb_pci_probe._entry.18, ptr @smtcfb_pci_probe._entry.21, ptr @smtcfb_pci_probe._entry.24, ptr @smtcfb_pci_probe._entry.26, ptr @smtcfb_pci_probe._entry.29, ptr @smtcfb_pci_probe._entry.32, ptr @smtcfb_pci_probe._entry_ptr, ptr @smtcfb_pci_probe._entry_ptr.13, ptr @smtcfb_pci_probe._entry_ptr.17, ptr @smtcfb_pci_probe._entry_ptr.20, ptr @smtcfb_pci_probe._entry_ptr.23, ptr @smtcfb_pci_probe._entry_ptr.25, ptr @smtcfb_pci_probe._entry_ptr.28, ptr @smtcfb_pci_probe._entry_ptr.31, ptr @smtcfb_pci_probe._entry_ptr.34, ptr @smtcfb_driver, ptr @smtc_regbaseaddress, ptr @.str, ptr @mode_option, ptr @smtc_scr_info.0, ptr @smtc_scr_info.1, ptr @smtc_scr_info.2, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vesa_mode_table, ptr @.str.4, ptr @smtcfb_pci_table, ptr @sm7xx_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @smtcfb_fix, ptr @.str.14, ptr @smtcfb_ops, ptr @smtcfb_var, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @vgamode, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.smtcfb_pci_probe], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtc_regbaseaddress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtc_scr_info.0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtc_scr_info.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtc_scr_info.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vesa_mode_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm7xx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtcfb_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgamode to i32), i32 3120, i32 3904, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smtc_map_smem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smtcfb_pci_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm712fb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #13
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %2, ptr @mode_option, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %5 = load ptr, ptr @mode_option, align 4
  call fastcc void @sm7xx_vga_setup(ptr noundef %5) #16
  %call5 = call i32 @__pci_register_driver(ptr noundef nonnull @smtcfb_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #13
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm712fb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @smtcfb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm7xx_vga_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i16 0, ptr @smtc_scr_info.0, align 2
  store i16 0, ptr @smtc_scr_info.1, align 2
  store i16 0, ptr @smtc_scr_info.2, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm7xx_vga_setup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm7xx_vga_setup, %if.then5)) #13
          to label %for.body [label %if.then5], !srcloc !117

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sm7xx_vga_setup.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull %options) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then5, %if.end
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end ], [ 0, %if.then5 ]
  %arrayidx = getelementptr [12 x %struct.vesa_mode], ptr @vesa_mode_table, i32 0, i32 %i.024
  %call7 = tail call ptr @strstr(ptr noundef nonnull %options, ptr noundef %arrayidx)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %for.inc, label %if.then9

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %lfb_width = getelementptr [12 x %struct.vesa_mode], ptr @vesa_mode_table, i32 0, i32 %i.024, i32 1
  %2 = ptrtoint ptr %lfb_width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lfb_width, align 2
  store i16 %3, ptr @smtc_scr_info.0, align 2
  %lfb_height = getelementptr [12 x %struct.vesa_mode], ptr @vesa_mode_table, i32 0, i32 %i.024, i32 2
  %4 = ptrtoint ptr %lfb_height to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lfb_height, align 2
  store i16 %5, ptr @smtc_scr_info.1, align 2
  %lfb_depth = getelementptr [12 x %struct.vesa_mode], ptr @vesa_mode_table, i32 0, i32 %i.024, i32 3
  %6 = ptrtoint ptr %lfb_depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lfb_depth, align 2
  store i16 %7, ptr @smtc_scr_info.2, align 2
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtcfb_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #17
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @.str.9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #17
  br label %failed_regions

if.end7:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smtcfb_fix, ptr noundef nonnull @.str.14, i32 noundef %1)
  %call10 = tail call ptr @framebuffer_alloc(i32 noundef 112, ptr noundef %dev) #13
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end7.failed_free_crit_edge, label %if.end13

if.end7.failed_free_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed_free

if.end13:                                         ; preds = %if.end7
  %par = getelementptr inbounds %struct.fb_info, ptr %call10, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %fb, align 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device, align 4
  %conv = trunc i32 %6 to i16
  %chip_id = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %chip_id, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %3, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call10, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call10, i32 0, i32 20
  %10 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smtcfb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call10, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %fix, ptr @smtcfb_fix, i32 68)
  %var = getelementptr inbounds %struct.fb_info, ptr %call10, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %var, ptr @smtcfb_var, i32 160)
  %colreg = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 12
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call10, i32 0, i32 27
  %13 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %colreg, ptr %pseudo_palette, align 4
  store ptr %3, ptr %par, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 17) #13, !srcloc !119
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %chip_rev_id = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 3
  %call17 = tail call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef %chip_rev_id) #13
  %17 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chip_id, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %sw.epilog.i [
    i16 1808, label %if.end13.sm7xx_vram_probe.exit_crit_edge
    i16 1810, label %if.end13.sm7xx_vram_probe.exit_crit_edge247
    i16 1824, label %sw.bb1.i
  ]

if.end13.sm7xx_vram_probe.exit_crit_edge247:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm7xx_vram_probe.exit

if.end13.sm7xx_vram_probe.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm7xx_vram_probe.exit

sw.bb1.i:                                         ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 118) #13, !srcloc !119
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %20)
  %cmp.i = icmp ult i8 %20, 64
  br i1 %cmp.i, label %sw.bb1.i.sm7xx_vram_probe.exit_crit_edge, label %if.else.i

sw.bb1.i.sm7xx_vram_probe.exit_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm7xx_vram_probe.exit

if.else.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = lshr i8 %20, 6
  %22 = xor i8 %21, 2
  %switch.tableidx = zext i8 %22 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.smtcfb_pci_probe, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sm7xx_vram_probe.exit

sw.epilog.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %sm7xx_vram_probe.exit

sm7xx_vram_probe.exit:                            ; preds = %sw.epilog.i, %if.else.i, %sw.bb1.i.sm7xx_vram_probe.exit_crit_edge, %if.end13.sm7xx_vram_probe.exit_crit_edge, %if.end13.sm7xx_vram_probe.exit_crit_edge247
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 4194304, %if.end13.sm7xx_vram_probe.exit_crit_edge ], [ 4194304, %if.end13.sm7xx_vram_probe.exit_crit_edge247 ], [ 8388608, %sw.bb1.i.sm7xx_vram_probe.exit_crit_edge ], [ %switch.load, %if.else.i ]
  %div246 = lshr exact i32 %retval.0.i, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %div246) #17
  %24 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chip_id, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %25, label %do.end99 [
    i16 1808, label %sm7xx_vram_probe.exit.sw.bb_crit_edge
    i16 1810, label %sm7xx_vram_probe.exit.sw.bb_crit_edge248
    i16 1824, label %sw.bb66
  ]

sm7xx_vram_probe.exit.sw.bb_crit_edge248:         ; preds = %sm7xx_vram_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sm7xx_vram_probe.exit.sw.bb_crit_edge:            ; preds = %sm7xx_vram_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %sm7xx_vram_probe.exit.sw.bb_crit_edge, %sm7xx_vram_probe.exit.sw.bb_crit_edge248
  %add = add i32 %16, 4194304
  %27 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fb, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %28, i32 0, i32 7, i32 10
  %29 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %mmio_start, align 4
  %30 = load ptr, ptr %fb, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 7, i32 11
  %31 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4194304, ptr %mmio_len, align 4
  %call29 = tail call ptr @ioremap(i32 noundef %16, i32 noundef 8388608) #13
  %lfb = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %lfb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29, ptr %lfb, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end40

do.end35:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fb, align 4
  %fix38 = getelementptr inbounds %struct.fb_info, ptr %34, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %fix38) #17
  br label %failed_fb

if.end40:                                         ; preds = %sw.bb
  %add.ptr = getelementptr i8, ptr %call29, i32 7340032
  store ptr %add.ptr, ptr @smtc_regbaseaddress, align 4
  %mmio = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 8
  %35 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %mmio, align 4
  %add.ptr43 = getelementptr i8, ptr %call29, i32 4227072
  %dp_regs = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %dp_regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr43, ptr %dp_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %call29, i32 4243456
  %vp_regs = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %vp_regs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr45, ptr %vp_regs, align 4
  %38 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fb, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6, i32 6
  %40 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %41)
  %cmp48 = icmp eq i32 %41, 32
  br i1 %cmp48, label %if.then50, label %if.end40.if.end58_crit_edge

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr52 = getelementptr i8, ptr %call29, i32 8388608
  %42 = ptrtoint ptr %lfb to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr52, ptr %lfb, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %add.ptr52) #17
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %if.end40.if.end58_crit_edge
  tail call fastcc void @smtc_seqw(i32 noundef 106, i32 noundef 22)
  tail call fastcc void @smtc_seqw(i32 noundef 107, i32 noundef 2)
  tail call fastcc void @smtc_seqw(i32 noundef 98, i32 noundef 62)
  tail call fastcc void @smtc_seqw(i32 noundef 23, i32 noundef 32)
  %43 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fb, align 4
  %bits_per_pixel61 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 6, i32 6
  %45 = ptrtoint ptr %bits_per_pixel61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bits_per_pixel61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %46)
  %cmp62 = icmp eq i32 %46, 32
  br i1 %cmp62, label %if.then64, label %if.end58.sw.epilog_crit_edge

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @smtc_seqw(i32 noundef 23, i32 noundef 48)
  br label %sw.epilog

sw.bb66:                                          ; preds = %sm7xx_vram_probe.exit
  %47 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fb, align 4
  %mmio_start69 = getelementptr inbounds %struct.fb_info, ptr %48, i32 0, i32 7, i32 10
  %49 = ptrtoint ptr %mmio_start69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %16, ptr %mmio_start69, align 4
  %50 = load ptr, ptr %fb, align 4
  %mmio_len72 = getelementptr inbounds %struct.fb_info, ptr %50, i32 0, i32 7, i32 11
  %51 = ptrtoint ptr %mmio_len72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2097152, ptr %mmio_len72, align 4
  %add73 = or i32 %retval.0.i, 2097152
  %call74 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add73) #13
  %dp_regs75 = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %dp_regs75 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call74, ptr %dp_regs75, align 4
  %tobool77.not = icmp eq ptr %call74, null
  br i1 %tobool77.not, label %do.end81, label %if.end87

do.end81:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fb, align 4
  %fix84 = getelementptr inbounds %struct.fb_info, ptr %54, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %fix84) #17
  br label %failed_fb

if.end87:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr89 = getelementptr i8, ptr %call74, i32 2097152
  %lfb90 = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %lfb90 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr89, ptr %lfb90, align 4
  %add.ptr92 = getelementptr i8, ptr %call74, i32 786432
  store ptr %add.ptr92, ptr @smtc_regbaseaddress, align 4
  %mmio93 = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 8
  %56 = ptrtoint ptr %mmio93 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr92, ptr %mmio93, align 4
  %add.ptr95 = getelementptr i8, ptr %call74, i32 2048
  %vp_regs96 = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 6
  %57 = ptrtoint ptr %vp_regs96 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr95, ptr %vp_regs96, align 4
  tail call fastcc void @smtc_seqw(i32 noundef 98, i32 noundef 255)
  tail call fastcc void @smtc_seqw(i32 noundef 106, i32 noundef 13)
  tail call fastcc void @smtc_seqw(i32 noundef 107, i32 noundef 2)
  br label %sw.epilog

do.end99:                                         ; preds = %sm7xx_vram_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #17
  br label %failed_fb

sw.epilog:                                        ; preds = %if.end87, %if.then64, %if.end58.sw.epilog_crit_edge
  tail call fastcc void @sm7xx_resolution_probe(ptr noundef %3)
  %58 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fb, align 4
  %bits_per_pixel103 = getelementptr inbounds %struct.fb_info, ptr %59, i32 0, i32 6, i32 6
  %60 = ptrtoint ptr %bits_per_pixel103 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bits_per_pixel103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %61)
  %cmp104 = icmp eq i32 %61, 15
  br i1 %cmp104, label %if.then106, label %sw.epilog.if.end110_crit_edge

sw.epilog.if.end110_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then106:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %bits_per_pixel103 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %bits_per_pixel103, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %sw.epilog.if.end110_crit_edge
  %63 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fb, align 4
  %var112 = getelementptr inbounds %struct.fb_info, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %var112 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %var112, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %64, i32 0, i32 6, i32 2
  %67 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %xres_virtual, align 4
  %68 = load ptr, ptr %fb, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %68, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %68, i32 0, i32 6, i32 3
  %71 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %yres_virtual, align 4
  %call119 = tail call fastcc i32 @smtc_map_smem(ptr noundef %3, ptr noundef %pdev, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end110.do.end150_crit_edge

if.end110.do.end150_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end150

if.end122:                                        ; preds = %if.end110
  %lfb123 = getelementptr inbounds %struct.smtcfb_info, ptr %3, i32 0, i32 4
  %72 = ptrtoint ptr %lfb123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lfb123, align 4
  %74 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fb, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %75, i32 0, i32 7, i32 2
  %76 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %smem_len, align 4
  tail call void @mmioset(ptr noundef %73, i32 noundef 0, i32 noundef %77) #13
  %call126 = tail call i32 @register_framebuffer(ptr noundef nonnull %call10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.end122.do.end150_crit_edge, label %do.end133

if.end122.do.end150_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end150

do.end133:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %chip_id, align 4
  %conv136 = zext i16 %79 to i32
  %80 = ptrtoint ptr %chip_rev_id to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %chip_rev_id, align 2
  %conv138 = zext i8 %81 to i32
  %82 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fb, align 4
  %var140 = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %var140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %var140, align 4
  %yres144 = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6, i32 1
  %86 = ptrtoint ptr %yres144 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %yres144, align 4
  %bits_per_pixel147 = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6, i32 6
  %88 = ptrtoint ptr %bits_per_pixel147 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bits_per_pixel147, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv136, i32 noundef %conv138, i32 noundef %85, i32 noundef %87, i32 noundef %89) #17
  br label %cleanup

do.end150:                                        ; preds = %if.end122.do.end150_crit_edge, %if.end110.do.end150_crit_edge
  %err.0 = phi i32 [ %call119, %if.end110.do.end150_crit_edge ], [ %call126, %if.end122.do.end150_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #17
  tail call fastcc void @smtc_unmap_smem(ptr noundef %3)
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end150.failed_fb_crit_edge, label %land.lhs.true.i

do.end150.failed_fb_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed_fb

land.lhs.true.i:                                  ; preds = %do.end150
  %90 = load ptr, ptr @smtc_regbaseaddress, align 4
  %tobool1.not.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.failed_fb_crit_edge, label %if.then.i

land.lhs.true.i.failed_fb_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed_fb

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @smtc_regbaseaddress, align 4
  br label %failed_fb

failed_fb:                                        ; preds = %if.then.i, %land.lhs.true.i.failed_fb_crit_edge, %do.end150.failed_fb_crit_edge, %do.end99, %do.end81, %do.end35
  %err.1 = phi i32 [ -19, %do.end99 ], [ -12, %do.end81 ], [ -12, %do.end35 ], [ %err.0, %do.end150.failed_fb_crit_edge ], [ %err.0, %land.lhs.true.i.failed_fb_crit_edge ], [ %err.0, %if.then.i ]
  tail call void @framebuffer_release(ptr noundef nonnull %call10) #13
  br label %failed_free

failed_free:                                      ; preds = %failed_fb, %if.end7.failed_free_crit_edge
  %err.2 = phi i32 [ %err.1, %failed_fb ], [ -12, %if.end7.failed_free_crit_edge ]
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #13
  br label %failed_regions

failed_regions:                                   ; preds = %failed_free, %do.end5
  %err.3 = phi i32 [ %call1, %do.end5 ], [ %err.2, %failed_free ]
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %failed_regions, %do.end133, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %failed_regions ], [ 0, %do.end133 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smtcfb_pci_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.smtc_unmap_mmio.exit_crit_edge, label %land.lhs.true.i

entry.smtc_unmap_mmio.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smtc_unmap_mmio.exit

land.lhs.true.i:                                  ; preds = %entry
  %fb.i = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb.i, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true.i9_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i9_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i9

if.then.i:                                        ; preds = %land.lhs.true.i
  %chip_id.i = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1824, i16 %8)
  %cmp.i = icmp eq i16 %8, 1824
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %6, i32 -2097152
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %4, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %10 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb.i, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @iounmap(ptr noundef %14) #13
  %15 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb.i, align 4
  %17 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 25
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  br label %land.lhs.true.i9

land.lhs.true.i9:                                 ; preds = %if.end.i, %land.lhs.true.i.land.lhs.true.i9_crit_edge
  %19 = load ptr, ptr @smtc_regbaseaddress, align 4
  %tobool1.not.i8 = icmp eq ptr %19, null
  br i1 %tobool1.not.i8, label %land.lhs.true.i9.smtc_unmap_mmio.exit_crit_edge, label %if.then.i10

land.lhs.true.i9.smtc_unmap_mmio.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %smtc_unmap_mmio.exit

if.then.i10:                                      ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @smtc_regbaseaddress, align 4
  br label %smtc_unmap_mmio.exit

smtc_unmap_mmio.exit:                             ; preds = %if.then.i10, %land.lhs.true.i9.smtc_unmap_mmio.exit_crit_edge, %entry.smtc_unmap_mmio.exit_crit_edge
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb, align 4
  tail call void @unregister_framebuffer(ptr noundef %21) #13
  %22 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb, align 4
  tail call void @framebuffer_release(ptr noundef %23) #13
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smtc_seqw(i32 noundef %reg, i32 noundef %val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %conv = trunc i32 %reg to i8
  %0 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %conv3 = trunc i32 %val to i8
  %1 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %conv3) #13, !srcloc !119
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @sm7xx_resolution_probe(ptr nocapture noundef readonly %sfb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @smtc_scr_info.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.not = icmp eq i16 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %0 to i32
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %1 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fb, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %var, align 4
  %4 = load i16, ptr @smtc_scr_info.1, align 2
  %conv3 = zext i16 %4 to i32
  %5 = load ptr, ptr %fb, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3, ptr %yres, align 4
  %7 = load i16, ptr @smtc_scr_info.2, align 2
  %conv6 = zext i16 %7 to i32
  br label %final

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fb9 = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %8 = ptrtoint ptr %fb9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb9, align 4
  %var10 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %var10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024, ptr %var10, align 4
  %11 = load ptr, ptr %fb9, align 4
  %yres14 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 768, ptr %yres14, align 4
  br label %final

final:                                            ; preds = %if.end, %if.then
  %fb9.sink = phi ptr [ %fb9, %if.end ], [ %fb, %if.then ]
  %.sink = phi i32 [ 16, %if.end ], [ %conv6, %if.then ]
  %13 = ptrtoint ptr %fb9.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb9.sink, align 4
  %bits_per_pixel17 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %bits_per_pixel17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %bits_per_pixel17, align 4
  %fb18 = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %16 = ptrtoint ptr %fb18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb18, align 4
  %bits_per_pixel20 = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %bits_per_pixel20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %19)
  %cmp21 = icmp eq i32 %19, 24
  br i1 %cmp21, label %if.then23, label %final.if.end27_crit_edge

final.if.end27_crit_edge:                         ; preds = %final
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then23:                                        ; preds = %final
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %bits_per_pixel20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %bits_per_pixel20, align 4
  store i16 32, ptr @smtc_scr_info.2, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %final.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smtc_map_smem(ptr nocapture noundef readonly %sfb, ptr noundef %pdev, i32 noundef %smem_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %smem_start, align 4
  %chip_id = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1824, i16 %6)
  %cmp = icmp eq i16 %6, 1824
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  %smem_start4 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %smem_start4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_start4, align 4
  %add = add i32 %10, 2097152
  store i32 %add, ptr %smem_start4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp6 = icmp eq i32 %14, 32
  br i1 %cmp6, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %smem_start11 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %smem_start11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smem_start11, align 4
  %add12 = add i32 %16, 8388608
  store i32 %add12, ptr %smem_start11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %17 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb, align 4
  %smem_len16 = getelementptr inbounds %struct.fb_info, ptr %18, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %smem_len16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %smem_len, ptr %smem_len16, align 4
  %lfb = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 4
  %20 = ptrtoint ptr %lfb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lfb, align 4
  %22 = load ptr, ptr %fb, align 4
  %23 = getelementptr inbounds %struct.fb_info, ptr %22, i32 0, i32 25
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %23, align 4
  %25 = load ptr, ptr %fb, align 4
  %26 = getelementptr inbounds %struct.fb_info, ptr %25, i32 0, i32 25
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %do.end, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %fix21 = getelementptr inbounds %struct.fb_info, ptr %25, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %fix21) #17
  br label %return

return:                                           ; preds = %do.end, %if.end13.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end13.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smtc_unmap_smem(ptr noundef readonly %sfb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sfb, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %chip_id = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1824, i16 %6)
  %cmp = icmp eq i16 %6, 1824
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %4, i32 -2097152
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @iounmap(ptr noundef %12) #13
  %13 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 25
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtcfb_read(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %7 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_len, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %total_size.0 = phi i32 [ %10, %if.then7 ], [ %8, %if.end4.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %conv)
  %cmp9.not = icmp ugt i32 %total_size.0, %conv
  br i1 %cmp9.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %11 = tail call i32 @llvm.umin.i32(i32 %total_size.0, i32 %count)
  %add = add i32 %11, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_size.0)
  %cmp17 = icmp ugt i32 %add, %total_size.0
  %sub = sub i32 %total_size.0, %conv
  %count.addr.1 = select i1 %cmp17, i32 %sub, i32 %11
  %12 = tail call i32 @llvm.umin.i32(i32 %count.addr.1, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #18
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end12.cleanup_crit_edge, label %if.end25

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_sync, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %if.end25.if.end31_crit_edge, label %if.then27

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 %18(ptr noundef nonnull %info) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool32.not160 = icmp eq i32 %count.addr.1, 0
  br i1 %tobool32.not160, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %if.end31.while.body_crit_edge
  %cnt.0165 = phi i32 [ %add71, %if.end67.while.body_crit_edge ], [ 0, %if.end31.while.body_crit_edge ]
  %src.0164 = phi ptr [ %src.2, %if.end67.while.body_crit_edge ], [ %add.ptr, %if.end31.while.body_crit_edge ]
  %count.addr.2163 = phi i32 [ %sub72, %if.end67.while.body_crit_edge ], [ %count.addr.1, %if.end31.while.body_crit_edge ]
  %buf.addr.0161 = phi ptr [ %add.ptr70, %if.end67.while.body_crit_edge ], [ %buf, %if.end31.while.body_crit_edge ]
  %19 = tail call i32 @llvm.umin.i32(i32 %count.addr.2163, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %tobool39.not149 = icmp ult i32 %19, 4
  br i1 %tobool39.not149, label %while.body.for.end_crit_edge, label %for.body.preheader

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %while.body
  %shr146 = lshr i32 %19, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0152 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %shr146, %for.body.preheader ]
  %src.1151 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %src.0164, %for.body.preheader ]
  %dst.0150 = phi ptr [ %incdec.ptr42, %for.body.for.body_crit_edge ], [ %call9.i, %for.body.preheader ]
  %dec = add i32 %i.0152, -1
  %incdec.ptr = getelementptr i32, ptr %src.1151, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.1151) #13, !srcloc !124
  %21 = ptrtoint ptr %dst.0150 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dst.0150, align 4
  %incdec.ptr42 = getelementptr i32, ptr %dst.0150, i32 1
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %dst.0.lcssa = phi ptr [ %call9.i, %while.body.for.end_crit_edge ], [ %incdec.ptr42, %for.body.for.end_crit_edge ]
  %src.1.lcssa = phi ptr [ %src.0164, %while.body.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %and43 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %for.end.if.then.i.i.i_crit_edge, label %for.body50

for.end.if.then.i.i.i_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

for.body50:                                       ; preds = %for.end
  %dec48158 = add nsw i32 %and43, -1
  %and51 = and i32 %dec48158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr54 = getelementptr i8, ptr %src.1.lcssa, i32 1
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr54) #13, !srcloc !120
  %23 = ptrtoint ptr %dst.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %dst.0.lcssa, align 1
  br label %if.end61

if.else:                                          ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr57 = getelementptr i8, ptr %src.1.lcssa, i32 -1
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr57) #13, !srcloc !120
  %25 = ptrtoint ptr %dst.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %dst.0.lcssa, align 1
  %add.ptr60 = getelementptr i8, ptr %src.1.lcssa, i32 1
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then53
  %src8.1 = phi ptr [ %incdec.ptr54, %if.then53 ], [ %add.ptr60, %if.else ]
  %dst8.1 = getelementptr i8, ptr %dst.0.lcssa, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec48158)
  %tobool49.not = icmp eq i32 %dec48158, 0
  br i1 %tobool49.not, label %if.end61.if.then.i.i.i_crit_edge, label %for.body50.1

if.end61.if.then.i.i.i_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

for.body50.1:                                     ; preds = %if.end61
  %and51.1 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.1)
  %tobool52.not.1 = icmp eq i32 %and51.1, 0
  br i1 %tobool52.not.1, label %if.else.1, label %if.then53.1

if.then53.1:                                      ; preds = %for.body50.1
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr54.1 = getelementptr i8, ptr %src.1.lcssa, i32 2
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr54.1) #13, !srcloc !120
  %27 = ptrtoint ptr %dst8.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %dst8.1, align 1
  br label %if.end61.1

if.else.1:                                        ; preds = %for.body50.1
  call void @__sanitizer_cov_trace_pc() #15
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %src.1.lcssa) #13, !srcloc !120
  %29 = ptrtoint ptr %dst8.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %dst8.1, align 1
  %add.ptr60.1 = getelementptr i8, ptr %src.1.lcssa, i32 2
  br label %if.end61.1

if.end61.1:                                       ; preds = %if.else.1, %if.then53.1
  %src8.1.1 = phi ptr [ %incdec.ptr54.1, %if.then53.1 ], [ %add.ptr60.1, %if.else.1 ]
  %dst8.1.1 = getelementptr i8, ptr %dst.0.lcssa, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and43)
  %tobool49.not.1 = icmp eq i32 %and43, 2
  br i1 %tobool49.not.1, label %if.end61.1.if.then.i.i.i_crit_edge, label %for.body50.2

if.end61.1.if.then.i.i.i_crit_edge:               ; preds = %if.end61.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

for.body50.2:                                     ; preds = %if.end61.1
  %30 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool52.not.2.not = icmp eq i32 %30, 0
  br i1 %tobool52.not.2.not, label %if.then53.2, label %if.else.2

if.then53.2:                                      ; preds = %for.body50.2
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr54.2 = getelementptr i8, ptr %src.1.lcssa, i32 3
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr54.2) #13, !srcloc !120
  %32 = ptrtoint ptr %dst8.1.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %dst8.1.1, align 1
  br label %if.then.i.i.i

if.else.2:                                        ; preds = %for.body50.2
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr57.2 = getelementptr i8, ptr %src.1.lcssa, i32 1
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr57.2) #13, !srcloc !120
  %34 = ptrtoint ptr %dst8.1.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %dst8.1.1, align 1
  %add.ptr60.2 = getelementptr i8, ptr %src.1.lcssa, i32 3
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.2, %if.then53.2, %if.end61.1.if.then.i.i.i_crit_edge, %if.end61.if.then.i.i.i_crit_edge, %for.end.if.then.i.i.i_crit_edge
  %src.2 = phi ptr [ %src.1.lcssa, %for.end.if.then.i.i.i_crit_edge ], [ %src8.1, %if.end61.if.then.i.i.i_crit_edge ], [ %src8.1.1, %if.end61.1.if.then.i.i.i_crit_edge ], [ %incdec.ptr54.2, %if.then53.2 ], [ %add.ptr60.2, %if.else.2 ]
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %19, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i139

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i139:                                    ; preds = %if.then.i.i.i
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0161, i32 %19, i32 -1226833920) #19, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i139.copy_to_user.exit_crit_edge

if.end.i.i139.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %19) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0161, ptr noundef nonnull %call9.i, i32 noundef %19) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i139.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %19, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %19, %if.end.i.i139.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool65.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool65.not, label %if.end67, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end67:                                         ; preds = %copy_to_user.exit
  %conv68 = zext i32 %19 to i64
  %36 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ppos, align 8
  %add69 = add i64 %37, %conv68
  store i64 %add69, ptr %ppos, align 8
  %add.ptr70 = getelementptr i8, ptr %buf.addr.0161, i32 %19
  %add71 = add i32 %cnt.0165, %19
  %sub72 = sub i32 %count.addr.2163, %19
  %tobool32.not = icmp eq i32 %sub72, 0
  br i1 %tobool32.not, label %if.end67.while.end_crit_edge, label %if.end67.while.body_crit_edge

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end67.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end31.while.end_crit_edge
  %cnt.0.err.0 = phi i32 [ 0, %if.end31.while.end_crit_edge ], [ %add71, %if.end67.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt.0.err.0, %while.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtcfb_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %7 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_len, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %total_size.0 = phi i32 [ %10, %if.then7 ], [ %8, %if.end4.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %conv)
  %cmp9 = icmp ult i32 %total_size.0, %conv
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %count)
  %cmp13 = icmp ult i32 %total_size.0, %count
  %spec.store.select = select i1 %cmp13, i32 -27, i32 -28
  %11 = tail call i32 @llvm.umin.i32(i32 %total_size.0, i32 %count)
  %err.0 = select i1 %cmp13, i32 -27, i32 0
  %add = add i32 %11, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_size.0)
  %cmp17 = icmp ugt i32 %add, %total_size.0
  %sub = sub i32 %total_size.0, %conv
  %count.addr.1 = select i1 %cmp17, i32 %sub, i32 %11
  %err.1 = select i1 %cmp17, i32 %spec.store.select, i32 %err.0
  %12 = tail call i32 @llvm.umin.i32(i32 %count.addr.1, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #18
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end12.cleanup_crit_edge, label %if.end28

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_sync, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = tail call i32 %18(ptr noundef nonnull %info) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool35.not167 = icmp eq i32 %count.addr.1, 0
  br i1 %tobool35.not167, label %while.end.thread, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  br label %while.body

while.end.thread:                                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %36

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %if.end34.while.body_crit_edge
  %cnt.0171 = phi i32 [ %add71, %if.end67.while.body_crit_edge ], [ 0, %if.end34.while.body_crit_edge ]
  %dst.0170 = phi ptr [ %dst.2, %if.end67.while.body_crit_edge ], [ %add.ptr, %if.end34.while.body_crit_edge ]
  %count.addr.2169 = phi i32 [ %sub72, %if.end67.while.body_crit_edge ], [ %count.addr.1, %if.end34.while.body_crit_edge ]
  %buf.addr.0168 = phi ptr [ %add.ptr70, %if.end67.while.body_crit_edge ], [ %buf, %if.end34.while.body_crit_edge ]
  %19 = tail call i32 @llvm.umin.i32(i32 %count.addr.2169, i32 4096)
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %19, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0168, i32 %19, i32 -1226833920) #19, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i137, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i137:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %19) #13
  %21 = tail call i32 @llvm.read_register.i32(metadata !107) #13
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !128
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !130
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %buf.addr.0168, i32 noundef %19) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #13, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end45, label %if.end.i.i137.if.then11.i.i_crit_edge, !prof !127

if.end.i.i137.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i137.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i144 = phi i32 [ %call1.i.i.i, %if.end.i.i137.if.then11.i.i_crit_edge ], [ %19, %while.body.if.then11.i.i_crit_edge ], [ %19, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %19, %res.0.i.i144
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i144)
  br label %while.end

if.end45:                                         ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %tobool46.not156 = icmp ult i32 %19, 4
  br i1 %tobool46.not156, label %if.end45.for.end_crit_edge, label %for.body.preheader

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %if.end45
  %shr147 = lshr i32 %19, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0159 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %shr147, %for.body.preheader ]
  %dst.1158 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %dst.0170, %for.body.preheader ]
  %src.0157 = phi ptr [ %incdec.ptr48, %for.body.for.body_crit_edge ], [ %call9.i, %for.body.preheader ]
  %dec = add i32 %i.0159, -1
  %25 = ptrtoint ptr %src.0157 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src.0157, align 4
  %incdec.ptr = getelementptr i32, ptr %dst.1158, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.1158, i32 %26) #13, !srcloc !131
  %incdec.ptr48 = getelementptr i32, ptr %src.0157, i32 1
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end45.for.end_crit_edge
  %src.0.lcssa = phi ptr [ %call9.i, %if.end45.for.end_crit_edge ], [ %incdec.ptr48, %for.body.for.end_crit_edge ]
  %dst.1.lcssa = phi ptr [ %dst.0170, %if.end45.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %and49 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.end.if.end67_crit_edge, label %for.body56

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

for.body56:                                       ; preds = %for.end
  %dec54165 = add nsw i32 %and49, -1
  %and57 = and i32 %dec54165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %27 = ptrtoint ptr %src.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %src.0.lcssa, align 1
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr61 = getelementptr i8, ptr %dst.1.lcssa, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr61, i8 %28) #13, !srcloc !119
  br label %if.end65

if.else:                                          ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr63 = getelementptr i8, ptr %dst.1.lcssa, i32 -1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr63, i8 %28) #13, !srcloc !119
  %add.ptr64 = getelementptr i8, ptr %dst.1.lcssa, i32 1
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then59
  %dst8.1 = phi ptr [ %incdec.ptr61, %if.then59 ], [ %add.ptr64, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec54165)
  %tobool55.not = icmp eq i32 %dec54165, 0
  br i1 %tobool55.not, label %if.end65.if.end67_crit_edge, label %for.body56.1

if.end65.if.end67_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

for.body56.1:                                     ; preds = %if.end65
  %src8.1 = getelementptr i8, ptr %src.0.lcssa, i32 1
  %and57.1 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.1)
  %tobool58.not.1 = icmp eq i32 %and57.1, 0
  %29 = ptrtoint ptr %src8.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %src8.1, align 1
  br i1 %tobool58.not.1, label %if.else.1, label %if.then59.1

if.then59.1:                                      ; preds = %for.body56.1
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr61.1 = getelementptr i8, ptr %dst.1.lcssa, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr61.1, i8 %30) #13, !srcloc !119
  br label %if.end65.1

if.else.1:                                        ; preds = %for.body56.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %dst.1.lcssa, i8 %30) #13, !srcloc !119
  %add.ptr64.1 = getelementptr i8, ptr %dst.1.lcssa, i32 2
  br label %if.end65.1

if.end65.1:                                       ; preds = %if.else.1, %if.then59.1
  %dst8.1.1 = phi ptr [ %incdec.ptr61.1, %if.then59.1 ], [ %add.ptr64.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and49)
  %tobool55.not.1 = icmp eq i32 %and49, 2
  br i1 %tobool55.not.1, label %if.end65.1.if.end67_crit_edge, label %for.body56.2

if.end65.1.if.end67_crit_edge:                    ; preds = %if.end65.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

for.body56.2:                                     ; preds = %if.end65.1
  %src8.1.1 = getelementptr i8, ptr %src.0.lcssa, i32 2
  %31 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool58.not.2.not = icmp eq i32 %31, 0
  %32 = ptrtoint ptr %src8.1.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %src8.1.1, align 1
  br i1 %tobool58.not.2.not, label %if.then59.2, label %if.else.2

if.then59.2:                                      ; preds = %for.body56.2
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr61.2 = getelementptr i8, ptr %dst.1.lcssa, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr61.2, i8 %33) #13, !srcloc !119
  br label %if.end67

if.else.2:                                        ; preds = %for.body56.2
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr63.2 = getelementptr i8, ptr %dst.1.lcssa, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr63.2, i8 %33) #13, !srcloc !119
  %add.ptr64.2 = getelementptr i8, ptr %dst.1.lcssa, i32 3
  br label %if.end67

if.end67:                                         ; preds = %if.else.2, %if.then59.2, %if.end65.1.if.end67_crit_edge, %if.end65.if.end67_crit_edge, %for.end.if.end67_crit_edge
  %dst.2 = phi ptr [ %dst.1.lcssa, %for.end.if.end67_crit_edge ], [ %dst8.1, %if.end65.if.end67_crit_edge ], [ %dst8.1.1, %if.end65.1.if.end67_crit_edge ], [ %incdec.ptr61.2, %if.then59.2 ], [ %add.ptr64.2, %if.else.2 ]
  %conv68 = zext i32 %19 to i64
  %34 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ppos, align 8
  %add69 = add i64 %35, %conv68
  store i64 %add69, ptr %ppos, align 8
  %add.ptr70 = getelementptr i8, ptr %buf.addr.0168, i32 %19
  %add71 = add i32 %cnt.0171, %19
  %sub72 = sub i32 %count.addr.2169, %19
  %tobool35.not = icmp eq i32 %sub72, 0
  br i1 %tobool35.not, label %if.end67.while.end_crit_edge, label %if.end67.while.body_crit_edge

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end67.while.end_crit_edge, %if.then11.i.i
  %cnt.0150 = phi i32 [ %cnt.0171, %if.then11.i.i ], [ %add71, %if.end67.while.end_crit_edge ]
  %err.2 = phi i32 [ -14, %if.then11.i.i ], [ %err.1, %if.end67.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0150)
  %tobool73.not = icmp eq i32 %cnt.0150, 0
  br i1 %tobool73.not, label %while.end._crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %36

36:                                               ; preds = %while.end._crit_edge, %while.end.thread
  %err.2183 = phi i32 [ %err.1, %while.end.thread ], [ %err.2, %while.end._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %36, %while.end.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -27, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %err.2183, %36 ], [ %cnt.0150, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smtc_check_var(ptr nocapture noundef %var, ptr nocapture noundef readnone %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %0 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres_virtual, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %xres_virtual, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %5 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %7 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3 = icmp ult i32 %6, %8
  br i1 %cmp3, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %yres_virtual, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %12 = add i32 %11, -8
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %switch = icmp ult i32 %13, 4
  br i1 %switch, label %if.end7.if.end19_crit_edge, label %if.then17

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %bits_per_pixel, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end7.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtc_set_par(ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call fastcc void @smtcfb_setmode(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtc_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %trans, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge107
    i32 3, label %sw.bb50
  ]

if.end.sw.bb_crit_edge107:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge107
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp1 = icmp ugt i32 %regno, 15
  br i1 %cmp1, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp5 = icmp eq i32 %8, 16
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 27
  %9 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pseudo_palette, align 4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %and = lshr i32 %red, 8
  %shr = and i32 %and, 248
  %and20 = lshr i32 %green, 13
  %shr21 = and i32 %and20, 7
  %or22 = or i32 %shr21, %shr
  %and23 = shl i32 %green, 3
  %shl = and i32 %and23, 57344
  %or24 = or i32 %or22, %shl
  %and25 = lshr i32 %blue, 3
  %shr26 = and i32 %and25, 7936
  %or27 = or i32 %or24, %shr26
  %arrayidx = getelementptr i32, ptr %10, i32 %regno
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or27, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %red33 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 8
  %and.i91 = and i32 %red, 65535
  %length.i92 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 8, i32 1
  %12 = ptrtoint ptr %length.i92 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i92, align 4
  %sub.i93 = sub i32 16, %13
  %shr.i94 = lshr i32 %and.i91, %sub.i93
  %14 = ptrtoint ptr %red33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %red33, align 4
  %shl.i95 = shl i32 %shr.i94, %15
  %green37 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 9
  %and.i96 = and i32 %green, 65535
  %length.i97 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 9, i32 1
  %16 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i97, align 4
  %sub.i98 = sub i32 16, %17
  %shr.i99 = lshr i32 %and.i96, %sub.i98
  %18 = ptrtoint ptr %green37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %green37, align 4
  %shl.i100 = shl i32 %shr.i99, %19
  %or39 = or i32 %shl.i100, %shl.i95
  %blue42 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 10
  %and.i101 = and i32 %blue, 65535
  %length.i102 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 10, i32 1
  %20 = ptrtoint ptr %length.i102 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i102, align 4
  %sub.i103 = sub i32 16, %21
  %shr.i104 = lshr i32 %and.i101, %sub.i103
  %22 = ptrtoint ptr %blue42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blue42, align 4
  %shl.i105 = shl i32 %shr.i104, %23
  %or44 = or i32 %or39, %shl.i105
  %arrayidx48 = getelementptr i32, ptr %10, i32 %regno
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or44, ptr %arrayidx48, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %25 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 102) #13, !srcloc !119
  %26 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %26, i32 965
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.i) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %28 = and i8 %27, -61
  %29 = or i8 %28, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %30 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %30, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i1.i, i8 102) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %31 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %31, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %29) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  tail call void @arm_heavy_mb() #13
  %conv.i = trunc i32 %regno to i8
  %32 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %shr.i106 = lshr i32 %red, 10
  %conv3.i = trunc i32 %shr.i106 to i8
  %33 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv3.i) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @arm_heavy_mb() #13
  %shr7.i = lshr i32 %green, 10
  %conv8.i = trunc i32 %shr7.i to i8
  %34 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr9.i = getelementptr i8, ptr %34, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 %conv8.i) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @arm_heavy_mb() #13
  %shr12.i = lshr i32 %blue, 10
  %conv13.i = trunc i32 %shr12.i to i8
  %35 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr14.i = getelementptr i8, ptr %35, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 %conv13.i) #13, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %sw.bb50, %if.else, %if.then6, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.else ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtc_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %blank_mode, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb24
    i32 3, label %sw.bb44
    i32 4, label %sw.bb64
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 4
  %chip_id = getelementptr inbounds %struct.smtcfb_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chip_id, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %4, label %sw.bb.sw.epilog_crit_edge [
    i16 1808, label %sw.bb.sw.bb1_crit_edge
    i16 1810, label %sw.bb.sw.bb1_crit_edge315
    i16 1824, label %sw.bb2
  ]

sw.bb.sw.bb1_crit_edge315:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %6 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %7 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 22) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %8 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i85 = getelementptr i8, ptr %8, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i85, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %9 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i86 = getelementptr i8, ptr %9, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i86, i8 2) #13, !srcloc !119
  br label %sw.epilog

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %10 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i87 = getelementptr i8, ptr %10, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i87, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %11 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i88 = getelementptr i8, ptr %11, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i88, i8 13) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %12 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i89 = getelementptr i8, ptr %12, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i89, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %13 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i90 = getelementptr i8, ptr %13, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i90, i8 2) #13, !srcloc !119
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %14 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i91 = getelementptr i8, ptr %14, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i91, i8 35) #13, !srcloc !119
  %15 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i = getelementptr i8, ptr %15, i32 965
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %17 = and i8 %16, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %18 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i92 = getelementptr i8, ptr %18, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i92, i8 35) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %19 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i94 = getelementptr i8, ptr %19, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i94, i8 %17) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %20 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i95 = getelementptr i8, ptr %20, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i95, i8 1) #13, !srcloc !119
  %21 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i96 = getelementptr i8, ptr %21, i32 965
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i96) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %23 = and i8 %22, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %24 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i98 = getelementptr i8, ptr %24, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i98, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %25 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i100 = getelementptr i8, ptr %25, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i100, i8 %23) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %26 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i101 = getelementptr i8, ptr %26, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i101, i8 33) #13, !srcloc !119
  %27 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i102 = getelementptr i8, ptr %27, i32 965
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i102) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %29 = and i8 %28, 119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %30 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i104 = getelementptr i8, ptr %30, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i104, i8 33) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %31 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i106 = getelementptr i8, ptr %31, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i106, i8 %29) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %32 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i107 = getelementptr i8, ptr %32, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i107, i8 34) #13, !srcloc !119
  %33 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i108 = getelementptr i8, ptr %33, i32 965
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i108) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %35 = and i8 %34, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %36 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i110 = getelementptr i8, ptr %36, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i110, i8 34) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %37 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i112 = getelementptr i8, ptr %37, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i112, i8 %35) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %38 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i113 = getelementptr i8, ptr %38, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113, i8 49) #13, !srcloc !119
  %39 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i114 = getelementptr i8, ptr %39, i32 965
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i114) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %41 = or i8 %40, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %42 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i116 = getelementptr i8, ptr %42, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i116, i8 49) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %43 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i118 = getelementptr i8, ptr %43, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i118, i8 %41) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %44 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i119 = getelementptr i8, ptr %44, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i119, i8 36) #13, !srcloc !119
  %45 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i120 = getelementptr i8, ptr %45, i32 965
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i120) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %47 = or i8 %46, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %48 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i122 = getelementptr i8, ptr %48, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i122, i8 36) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %49 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i124 = getelementptr i8, ptr %49, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i124, i8 %47) #13, !srcloc !119
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %50 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i125 = getelementptr i8, ptr %50, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i125, i8 36) #13, !srcloc !119
  %51 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i126 = getelementptr i8, ptr %51, i32 965
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i126) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %53 = or i8 %52, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %54 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i128 = getelementptr i8, ptr %54, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i128, i8 36) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %55 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i130 = getelementptr i8, ptr %55, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i130, i8 %53) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %56 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i131 = getelementptr i8, ptr %56, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i131, i8 49) #13, !srcloc !119
  %57 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i132 = getelementptr i8, ptr %57, i32 965
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i132) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %59 = and i8 %58, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %60 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i134 = getelementptr i8, ptr %60, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i134, i8 49) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %61 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i136 = getelementptr i8, ptr %61, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i136, i8 %59) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %62 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i137 = getelementptr i8, ptr %62, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i137, i8 35) #13, !srcloc !119
  %63 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i138 = getelementptr i8, ptr %63, i32 965
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i138) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %65 = and i8 %64, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %66 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i140 = getelementptr i8, ptr %66, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i140, i8 35) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %67 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i142 = getelementptr i8, ptr %67, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i142, i8 %65) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %68 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i143 = getelementptr i8, ptr %68, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i143, i8 1) #13, !srcloc !119
  %69 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i144 = getelementptr i8, ptr %69, i32 965
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i144) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %71 = and i8 %70, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %72 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i146 = getelementptr i8, ptr %72, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i146, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %73 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i148 = getelementptr i8, ptr %73, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i148, i8 %71) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %74 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i149 = getelementptr i8, ptr %74, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i149, i8 34) #13, !srcloc !119
  %75 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i150 = getelementptr i8, ptr %75, i32 965
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i150) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %77 = and i8 %76, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %78 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i152 = getelementptr i8, ptr %78, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i152, i8 34) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %79 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i154 = getelementptr i8, ptr %79, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i154, i8 %77) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %80 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i155 = getelementptr i8, ptr %80, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i155, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %81 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i156 = getelementptr i8, ptr %81, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i156, i8 22) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %82 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i157 = getelementptr i8, ptr %82, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i157, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %83 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i158 = getelementptr i8, ptr %83, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i158, i8 2) #13, !srcloc !119
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %84 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i159 = getelementptr i8, ptr %84, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i159, i8 36) #13, !srcloc !119
  %85 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i160 = getelementptr i8, ptr %85, i32 965
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i160) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %87 = and i8 %86, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %88 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i162 = getelementptr i8, ptr %88, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i162, i8 36) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %89 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i164 = getelementptr i8, ptr %89, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i164, i8 %87) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %90 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i165 = getelementptr i8, ptr %90, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i165, i8 49) #13, !srcloc !119
  %91 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i166 = getelementptr i8, ptr %91, i32 965
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i166) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %93 = and i8 %92, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %94 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i168 = getelementptr i8, ptr %94, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168, i8 49) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %95 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i170 = getelementptr i8, ptr %95, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i170, i8 %93) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %96 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i171 = getelementptr i8, ptr %96, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i171, i8 35) #13, !srcloc !119
  %97 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i172 = getelementptr i8, ptr %97, i32 965
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i172) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %99 = and i8 %98, 31
  %100 = or i8 %99, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %101 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i174 = getelementptr i8, ptr %101, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i174, i8 35) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %102 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i176 = getelementptr i8, ptr %102, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i176, i8 %100) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %103 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i177 = getelementptr i8, ptr %103, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i177, i8 1) #13, !srcloc !119
  %104 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i178 = getelementptr i8, ptr %104, i32 965
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i178) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %106 = or i8 %105, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %107 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i180 = getelementptr i8, ptr %107, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i180, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %108 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i182 = getelementptr i8, ptr %108, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i182, i8 %106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %109 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i183 = getelementptr i8, ptr %109, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i183, i8 33) #13, !srcloc !119
  %110 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i184 = getelementptr i8, ptr %110, i32 965
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i184) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %112 = or i8 %111, -120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %113 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i186 = getelementptr i8, ptr %113, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i186, i8 33) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %114 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i188 = getelementptr i8, ptr %114, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i188, i8 %112) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %115 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i189 = getelementptr i8, ptr %115, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i189, i8 32) #13, !srcloc !119
  %116 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i190 = getelementptr i8, ptr %116, i32 965
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i190) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %118 = and i8 %117, 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %119 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i192 = getelementptr i8, ptr %119, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i192, i8 32) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %120 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i194 = getelementptr i8, ptr %120, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i194, i8 %118) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %121 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i195 = getelementptr i8, ptr %121, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i195, i8 34) #13, !srcloc !119
  %122 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i196 = getelementptr i8, ptr %122, i32 965
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i196) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %124 = and i8 %123, -49
  %125 = or i8 %124, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %126 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i198 = getelementptr i8, ptr %126, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 34) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %127 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i200 = getelementptr i8, ptr %127, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i200, i8 %125) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %128 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i201 = getelementptr i8, ptr %128, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i201, i8 52) #13, !srcloc !119
  %129 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i202 = getelementptr i8, ptr %129, i32 965
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i202) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %131 = or i8 %130, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %132 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i204 = getelementptr i8, ptr %132, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i204, i8 52) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %133 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i206 = getelementptr i8, ptr %133, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i206, i8 %131) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %134 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i207 = getelementptr i8, ptr %134, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i207, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %135 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i208 = getelementptr i8, ptr %135, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i208, i8 12) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %136 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i209 = getelementptr i8, ptr %136, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i209, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %137 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i210 = getelementptr i8, ptr %137, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i210, i8 2) #13, !srcloc !119
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %138 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i211 = getelementptr i8, ptr %138, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i211, i8 36) #13, !srcloc !119
  %139 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i212 = getelementptr i8, ptr %139, i32 965
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i212) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %141 = and i8 %140, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %142 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i214 = getelementptr i8, ptr %142, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i214, i8 36) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %143 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i216 = getelementptr i8, ptr %143, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i216, i8 %141) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %144 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i217 = getelementptr i8, ptr %144, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i217, i8 49) #13, !srcloc !119
  %145 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i218 = getelementptr i8, ptr %145, i32 965
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i218) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %147 = and i8 %146, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %148 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i220 = getelementptr i8, ptr %148, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i220, i8 49) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %149 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i222 = getelementptr i8, ptr %149, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i222, i8 %147) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %150 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i223 = getelementptr i8, ptr %150, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i223, i8 35) #13, !srcloc !119
  %151 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i224 = getelementptr i8, ptr %151, i32 965
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i224) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %153 = or i8 %152, -40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %154 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i226 = getelementptr i8, ptr %154, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i226, i8 35) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %155 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i228 = getelementptr i8, ptr %155, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i228, i8 %153) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %156 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i229 = getelementptr i8, ptr %156, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i229, i8 1) #13, !srcloc !119
  %157 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i230 = getelementptr i8, ptr %157, i32 965
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i230) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %159 = or i8 %158, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %160 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i232 = getelementptr i8, ptr %160, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i232, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %161 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i234 = getelementptr i8, ptr %161, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i234, i8 %159) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %162 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i235 = getelementptr i8, ptr %162, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i235, i8 33) #13, !srcloc !119
  %163 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i236 = getelementptr i8, ptr %163, i32 965
  %164 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i236) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %165 = or i8 %164, -120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %166 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i238 = getelementptr i8, ptr %166, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i238, i8 33) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %167 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i240 = getelementptr i8, ptr %167, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i240, i8 %165) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %168 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i241 = getelementptr i8, ptr %168, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i241, i8 32) #13, !srcloc !119
  %169 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i242 = getelementptr i8, ptr %169, i32 965
  %170 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i242) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %171 = and i8 %170, 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %172 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i244 = getelementptr i8, ptr %172, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i244, i8 32) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %173 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i246 = getelementptr i8, ptr %173, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i246, i8 %171) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %174 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i247 = getelementptr i8, ptr %174, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i247, i8 34) #13, !srcloc !119
  %175 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i248 = getelementptr i8, ptr %175, i32 965
  %176 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i248) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %177 = and i8 %176, -49
  %178 = or i8 %177, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %179 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i250 = getelementptr i8, ptr %179, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i250, i8 34) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %180 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i252 = getelementptr i8, ptr %180, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i252, i8 %178) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %181 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i253 = getelementptr i8, ptr %181, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i253, i8 52) #13, !srcloc !119
  %182 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i254 = getelementptr i8, ptr %182, i32 965
  %183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i254) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %184 = or i8 %183, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %185 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i256 = getelementptr i8, ptr %185, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i256, i8 52) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %186 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i258 = getelementptr i8, ptr %186, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i258, i8 %184) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %187 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i259 = getelementptr i8, ptr %187, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i259, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %188 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i260 = getelementptr i8, ptr %188, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i260, i8 12) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %189 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i261 = getelementptr i8, ptr %189, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i261, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %190 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i262 = getelementptr i8, ptr %190, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i262, i8 2) #13, !srcloc !119
  br label %cleanup

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %191 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i263 = getelementptr i8, ptr %191, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i263, i8 36) #13, !srcloc !119
  %192 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i264 = getelementptr i8, ptr %192, i32 965
  %193 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i264) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %194 = and i8 %193, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %195 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i266 = getelementptr i8, ptr %195, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i266, i8 36) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %196 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i268 = getelementptr i8, ptr %196, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i268, i8 %194) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %197 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i269 = getelementptr i8, ptr %197, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i269, i8 49) #13, !srcloc !119
  %198 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i270 = getelementptr i8, ptr %198, i32 965
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i270) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %200 = and i8 %199, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %201 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i272 = getelementptr i8, ptr %201, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i272, i8 49) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %202 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i274 = getelementptr i8, ptr %202, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i274, i8 %200) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %203 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i275 = getelementptr i8, ptr %203, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i275, i8 35) #13, !srcloc !119
  %204 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i276 = getelementptr i8, ptr %204, i32 965
  %205 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i276) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %206 = or i8 %205, -40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %207 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i278 = getelementptr i8, ptr %207, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i278, i8 35) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %208 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i280 = getelementptr i8, ptr %208, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i280, i8 %206) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %209 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i281 = getelementptr i8, ptr %209, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i281, i8 1) #13, !srcloc !119
  %210 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i282 = getelementptr i8, ptr %210, i32 965
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i282) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %212 = or i8 %211, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %213 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i284 = getelementptr i8, ptr %213, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i284, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %214 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i286 = getelementptr i8, ptr %214, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i286, i8 %212) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %215 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i287 = getelementptr i8, ptr %215, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i287, i8 33) #13, !srcloc !119
  %216 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i288 = getelementptr i8, ptr %216, i32 965
  %217 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i288) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %218 = or i8 %217, -120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %219 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i290 = getelementptr i8, ptr %219, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i290, i8 33) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %220 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i292 = getelementptr i8, ptr %220, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i292, i8 %218) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %221 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i293 = getelementptr i8, ptr %221, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i293, i8 32) #13, !srcloc !119
  %222 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i294 = getelementptr i8, ptr %222, i32 965
  %223 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i294) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %224 = and i8 %223, 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %225 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i296 = getelementptr i8, ptr %225, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i296, i8 32) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %226 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i298 = getelementptr i8, ptr %226, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i298, i8 %224) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %227 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i299 = getelementptr i8, ptr %227, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i299, i8 34) #13, !srcloc !119
  %228 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i300 = getelementptr i8, ptr %228, i32 965
  %229 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i300) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %230 = or i8 %229, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %231 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i302 = getelementptr i8, ptr %231, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i302, i8 34) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %232 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i304 = getelementptr i8, ptr %232, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i304, i8 %230) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %233 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i305 = getelementptr i8, ptr %233, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i305, i8 52) #13, !srcloc !119
  %234 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i306 = getelementptr i8, ptr %234, i32 965
  %235 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i306) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %236 = or i8 %235, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %237 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i308 = getelementptr i8, ptr %237, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i308, i8 52) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %238 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i310 = getelementptr i8, ptr %238, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i310, i8 %236) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %239 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i311 = getelementptr i8, ptr %239, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i311, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %240 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i312 = getelementptr i8, ptr %240, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i312, i8 12) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %241 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i313 = getelementptr i8, ptr %241, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i313, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %242 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i314 = getelementptr i8, ptr %242, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i314, i8 2) #13, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %sw.bb64, %sw.bb44, %sw.bb24, %sw.bb12, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb64 ], [ 0, %sw.bb44 ], [ 0, %sw.bb24 ], [ 0, %sw.bb12 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smtcfb_setmode(ptr noundef %sfb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = add i32 %3, -8
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 29)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb25
    i32 0, label %sw.bb60
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %visual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %visual, align 4
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %var3 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %var3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var3, align 4
  %mul = shl i32 %11, 2
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %visual28 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %visual28, align 4
  %13 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb, align 4
  %var30 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %var30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var30, align 4
  %mul32 = mul i32 %16, 3
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %visual63 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %visual63 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %visual63, align 4
  %18 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb, align 4
  %var65 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %var65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var65, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %visual97 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %visual97 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %visual97, align 4
  %23 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fb, align 4
  %var99 = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %var99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %var99, align 4
  %mul101 = shl i32 %26, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb60, %sw.bb25, %sw.bb
  %.sink185 = phi ptr [ %24, %sw.default ], [ %19, %sw.bb60 ], [ %14, %sw.bb25 ], [ %9, %sw.bb ]
  %mul101.sink = phi i32 [ %mul101, %sw.default ], [ %21, %sw.bb60 ], [ %mul32, %sw.bb25 ], [ %mul, %sw.bb ]
  %.sink183 = phi i32 [ 5, %sw.default ], [ 3, %sw.bb60 ], [ 8, %sw.bb25 ], [ 8, %sw.bb ]
  %.sink181 = phi i32 [ 6, %sw.default ], [ 3, %sw.bb60 ], [ 8, %sw.bb25 ], [ 8, %sw.bb ]
  %.sink179 = phi i32 [ 5, %sw.default ], [ 2, %sw.bb60 ], [ 8, %sw.bb25 ], [ 8, %sw.bb ]
  %.sink177 = phi i32 [ 11, %sw.default ], [ 5, %sw.bb60 ], [ 16, %sw.bb25 ], [ 16, %sw.bb ]
  %line_length104 = getelementptr inbounds %struct.fb_info, ptr %.sink185, i32 0, i32 7, i32 9
  %27 = ptrtoint ptr %line_length104 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul101.sink, ptr %line_length104, align 4
  %28 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fb, align 4
  %length108 = getelementptr inbounds %struct.fb_info, ptr %29, i32 0, i32 6, i32 8, i32 1
  %30 = ptrtoint ptr %length108 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink183, ptr %length108, align 4
  %31 = load ptr, ptr %fb, align 4
  %length112 = getelementptr inbounds %struct.fb_info, ptr %31, i32 0, i32 6, i32 9, i32 1
  %32 = ptrtoint ptr %length112 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink181, ptr %length112, align 4
  %33 = load ptr, ptr %fb, align 4
  %length116 = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 6, i32 10, i32 1
  %34 = ptrtoint ptr %length116 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink179, ptr %length116, align 4
  %35 = load ptr, ptr %fb, align 4
  %red119 = getelementptr inbounds %struct.fb_info, ptr %35, i32 0, i32 6, i32 8
  %36 = ptrtoint ptr %red119 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink177, ptr %red119, align 4
  %37 = load ptr, ptr %fb, align 4
  %green123 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 6, i32 9
  %38 = ptrtoint ptr %green123 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink179, ptr %green123, align 4
  %39 = load ptr, ptr %fb, align 4
  %blue127 = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 6, i32 10
  %40 = ptrtoint ptr %blue127 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %blue127, align 4
  %41 = load ptr, ptr %fb, align 4
  %var130 = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %var130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %var130, align 4
  %width = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 9
  %44 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %width, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres, align 4
  %height = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 10
  %47 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %height, align 4
  %hz = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 11
  %48 = ptrtoint ptr %hz to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 60, ptr %hz, align 4
  %chip_id.i = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 2
  %49 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %chip_id.i, align 4
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %50, label %sw.epilog.smtc_set_timing.exit_crit_edge [
    i16 1808, label %sw.epilog.sw.bb.i_crit_edge
    i16 1810, label %sw.epilog.sw.bb.i_crit_edge186
    i16 1824, label %sw.epilog.sw.bb.i_crit_edge187
  ]

sw.epilog.sw.bb.i_crit_edge187:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge186:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.epilog.smtc_set_timing.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %smtc_set_timing.exit

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge186, %sw.epilog.sw.bb.i_crit_edge187
  tail call fastcc void @sm7xx_set_timing(ptr noundef %sfb) #13
  br label %smtc_set_timing.exit

smtc_set_timing.exit:                             ; preds = %sw.bb.i, %sw.epilog.smtc_set_timing.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm7xx_set_timing(ptr nocapture noundef readonly %sfb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm7xx_set_timing.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm7xx_set_timing, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %sfb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfb, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %width = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 10
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %hz = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 11
  %10 = ptrtoint ptr %hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm7xx_set_timing.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %5, i32 noundef %9, i32 noundef %11) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %width3 = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 9
  %height6 = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 10
  %fb10 = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 1
  %hz17 = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc214.for.body_crit_edge, %do.end
  %j.0414 = phi i32 [ 0, %do.end ], [ %inc215, %for.inc214.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.not = icmp eq i32 %13, %15
  br i1 %cmp4.not, label %lor.lhs.false, label %for.body.for.inc214_crit_edge

for.body.for.inc214_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc214

lor.lhs.false:                                    ; preds = %for.body
  %mmsizey = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 1
  %16 = ptrtoint ptr %mmsizey to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mmsizey, align 4
  %18 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp7.not = icmp eq i32 %17, %19
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false.for.inc214_crit_edge

lor.lhs.false.for.inc214_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc214

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %bpp = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 2
  %20 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp, align 4
  %22 = ptrtoint ptr %fb10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb10, align 4
  %bits_per_pixel12 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %bits_per_pixel12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_pixel12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp13.not = icmp eq i32 %21, %25
  br i1 %cmp13.not, label %lor.lhs.false14, label %lor.lhs.false8.for.inc214_crit_edge

lor.lhs.false8.for.inc214_crit_edge:              ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc214

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %hz16 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 3
  %26 = ptrtoint ptr %hz16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hz16, align 4
  %28 = ptrtoint ptr %hz17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hz17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp18.not = icmp eq i32 %27, %29
  br i1 %cmp18.not, label %do.body21, label %lor.lhs.false14.for.inc214_crit_edge

lor.lhs.false14.for.inc214_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc214

do.body21:                                        ; preds = %lor.lhs.false14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm7xx_set_timing.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm7xx_set_timing, %if.then33)) #13
          to label %do.body47 [label %if.then33], !srcloc !117

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %sfb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sfb, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm7xx_set_timing.__UNIQUE_ID_ddebug307, ptr noundef %dev35, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef %17, i32 noundef %21, i32 noundef %27) #13
  br label %do.body47

do.body47:                                        ; preds = %if.then33, %do.body21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm7xx_set_timing.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm7xx_set_timing, %if.then59)) #13
          to label %do.body65 [label %if.then59], !srcloc !117

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %sfb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sfb, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm7xx_set_timing.__UNIQUE_ID_ddebug308, ptr noundef %dev61, ptr noundef nonnull @.str.41, i32 noundef %j.0414) #13
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !138
  tail call void @arm_heavy_mb() #13
  %34 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %35 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %36 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call void @arm_heavy_mb() #13
  %init_misc = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 4
  %37 = ptrtoint ptr %init_misc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %init_misc, align 4
  %39 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr72 = getelementptr i8, ptr %39, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr72, i8 %38) #13, !srcloc !119
  %arrayidx77 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 5, i32 0
  %40 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx77, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %42 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i371 = getelementptr i8, ptr %42, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i371, i8 0) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %43 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i372 = getelementptr i8, ptr %43, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i372, i8 %41) #13, !srcloc !119
  %arrayidx77.1 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 5, i32 1
  %44 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx77.1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %46 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i371.1 = getelementptr i8, ptr %46, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i371.1, i8 1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %47 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i372.1 = getelementptr i8, ptr %47, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i372.1, i8 %45) #13, !srcloc !119
  %arrayidx77.2 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 5, i32 2
  %48 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx77.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %50 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i371.2 = getelementptr i8, ptr %50, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i371.2, i8 2) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %51 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i372.2 = getelementptr i8, ptr %51, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i372.2, i8 %49) #13, !srcloc !119
  %arrayidx77.3 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 5, i32 3
  %52 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx77.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %54 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i371.3 = getelementptr i8, ptr %54, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i371.3, i8 3) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %55 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i372.3 = getelementptr i8, ptr %55, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i372.3, i8 %53) #13, !srcloc !119
  %arrayidx77.4 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 5, i32 4
  %56 = ptrtoint ptr %arrayidx77.4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx77.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %58 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i371.4 = getelementptr i8, ptr %58, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i371.4, i8 4) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %59 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i372.4 = getelementptr i8, ptr %59, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i372.4, i8 %57) #13, !srcloc !119
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %do.body65
  %i.1403 = phi i32 [ %inc86, %for.body81.for.body81_crit_edge ], [ 0, %do.body65 ]
  %arrayidx83 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 6, i32 %i.1403
  %60 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx83, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %62 = trunc i32 %i.1403 to i8
  %conv.i373 = add i8 %62, 16
  %63 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i374 = getelementptr i8, ptr %63, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i374, i8 %conv.i373) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %64 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i375 = getelementptr i8, ptr %64, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i375, i8 %61) #13, !srcloc !119
  %inc86 = add nuw nsw i32 %i.1403, 1
  %exitcond.not = icmp eq i32 %inc86, 21
  br i1 %exitcond.not, label %for.body81.for.body91_crit_edge, label %for.body81.for.body81_crit_edge

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body81

for.body81.for.body91_crit_edge:                  ; preds = %for.body81
  br label %for.body91

for.body91:                                       ; preds = %for.inc128.for.body91_crit_edge, %for.body81.for.body91_crit_edge
  %i.2404 = phi i32 [ %inc129, %for.inc128.for.body91_crit_edge ], [ 0, %for.body81.for.body91_crit_edge ]
  %add92 = add nuw nsw i32 %i.2404, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2404)
  %cmp93.not = icmp eq i32 %i.2404, 0
  %65 = and i32 %add92, 2147483639
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %65)
  %66 = icmp eq i32 %65, 98
  %67 = or i1 %cmp93.not, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %add92)
  %cmp104.not = icmp eq i32 %add92, 107
  %or.cond359 = or i1 %cmp104.not, %67
  %68 = and i32 %i.2404, 2147483642
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %68)
  %69 = icmp eq i32 %68, 64
  %70 = or i1 %69, %or.cond359
  br i1 %70, label %for.body91.for.inc128_crit_edge, label %if.then122

for.body91.for.inc128_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc128

if.then122:                                       ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx125 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 7, i32 %i.2404
  %71 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx125, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %conv.i376 = trunc i32 %add92 to i8
  %73 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i377 = getelementptr i8, ptr %73, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i377, i8 %conv.i376) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %74 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i378 = getelementptr i8, ptr %74, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i378, i8 %72) #13, !srcloc !119
  br label %for.inc128

for.inc128:                                       ; preds = %if.then122, %for.body91.for.inc128_crit_edge
  %inc129 = add nuw nsw i32 %i.2404, 1
  %exitcond416.not = icmp eq i32 %inc129, 70
  br i1 %exitcond416.not, label %for.inc128.for.body134_crit_edge, label %for.inc128.for.body91_crit_edge

for.inc128.for.body91_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91

for.inc128.for.body134_crit_edge:                 ; preds = %for.inc128
  br label %for.body134

for.body134:                                      ; preds = %for.body134.for.body134_crit_edge, %for.inc128.for.body134_crit_edge
  %i.3406 = phi i32 [ %inc140, %for.body134.for.body134_crit_edge ], [ 0, %for.inc128.for.body134_crit_edge ]
  %arrayidx137 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 8, i32 %i.3406
  %75 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx137, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %77 = trunc i32 %i.3406 to i8
  %conv.i379 = xor i8 %77, -128
  %78 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i380 = getelementptr i8, ptr %78, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i380, i8 %conv.i379) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %79 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i381 = getelementptr i8, ptr %79, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i381, i8 %76) #13, !srcloc !119
  %inc140 = add nuw nsw i32 %i.3406, 1
  %exitcond417.not = icmp eq i32 %inc140, 20
  br i1 %exitcond417.not, label %for.body134.for.body145_crit_edge, label %for.body134.for.body134_crit_edge

for.body134.for.body134_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body134

for.body134.for.body145_crit_edge:                ; preds = %for.body134
  br label %for.body145

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.body134.for.body145_crit_edge
  %i.4407 = phi i32 [ %inc151, %for.body145.for.body145_crit_edge ], [ 0, %for.body134.for.body145_crit_edge ]
  %arrayidx148 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 9, i32 %i.4407
  %80 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx148, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %82 = trunc i32 %i.4407 to i8
  %conv.i382 = add i8 %82, -96
  %83 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i383 = getelementptr i8, ptr %83, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i383, i8 %conv.i382) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %84 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i384 = getelementptr i8, ptr %84, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i384, i8 %81) #13, !srcloc !119
  %inc151 = add nuw nsw i32 %i.4407, 1
  %exitcond418.not = icmp eq i32 %inc151, 16
  br i1 %exitcond418.not, label %for.body145.for.body156_crit_edge, label %for.body145.for.body145_crit_edge

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body145

for.body145.for.body156_crit_edge:                ; preds = %for.body145
  br label %for.body156

for.body156:                                      ; preds = %for.body156.for.body156_crit_edge, %for.body145.for.body156_crit_edge
  %i.5408 = phi i32 [ %inc161, %for.body156.for.body156_crit_edge ], [ 0, %for.body145.for.body156_crit_edge ]
  %arrayidx158 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 10, i32 %i.5408
  %85 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx158, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !140
  tail call void @arm_heavy_mb() #13
  %conv.i385 = trunc i32 %i.5408 to i8
  %87 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i386 = getelementptr i8, ptr %87, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i386, i8 %conv.i385) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !141
  tail call void @arm_heavy_mb() #13
  %88 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i387 = getelementptr i8, ptr %88, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i387, i8 %86) #13, !srcloc !119
  %inc161 = add nuw nsw i32 %i.5408, 1
  %exitcond419.not = icmp eq i32 %inc161, 9
  br i1 %exitcond419.not, label %for.body156.for.body166_crit_edge, label %for.body156.for.body156_crit_edge

for.body156.for.body156_crit_edge:                ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body156

for.body156.for.body166_crit_edge:                ; preds = %for.body156
  br label %for.body166

for.body166:                                      ; preds = %for.body166.for.body166_crit_edge, %for.body156.for.body166_crit_edge
  %i.6409 = phi i32 [ %inc171, %for.body166.for.body166_crit_edge ], [ 0, %for.body156.for.body166_crit_edge ]
  %arrayidx168 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 11, i32 %i.6409
  %89 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx168, align 1
  %91 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i388 = getelementptr i8, ptr %91, i32 986
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i388) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  tail call void @arm_heavy_mb() #13
  %conv.i389 = trunc i32 %i.6409 to i8
  %93 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr2.i = getelementptr i8, ptr %93, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 %conv.i389) #13, !srcloc !119
  %94 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr5.i = getelementptr i8, ptr %94, i32 961
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  tail call void @arm_heavy_mb() #13
  %96 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr12.i = getelementptr i8, ptr %96, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %90) #13, !srcloc !119
  %inc171 = add nuw nsw i32 %i.6409, 1
  %exitcond420.not = icmp eq i32 %inc171, 21
  br i1 %exitcond420.not, label %for.body166.for.body176_crit_edge, label %for.body166.for.body166_crit_edge

for.body166.for.body166_crit_edge:                ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body166

for.body166.for.body176_crit_edge:                ; preds = %for.body166
  br label %for.body176

for.body176:                                      ; preds = %for.body176.for.body176_crit_edge, %for.body166.for.body176_crit_edge
  %i.7410 = phi i32 [ %inc181, %for.body176.for.body176_crit_edge ], [ 0, %for.body166.for.body176_crit_edge ]
  %arrayidx178 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 12, i32 %i.7410
  %97 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx178, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %conv.i390 = trunc i32 %i.7410 to i8
  %99 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i391 = getelementptr i8, ptr %99, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i391, i8 %conv.i390) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !147
  tail call void @arm_heavy_mb() #13
  %100 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i392 = getelementptr i8, ptr %100, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i392, i8 %98) #13, !srcloc !119
  %inc181 = add nuw nsw i32 %i.7410, 1
  %exitcond421.not = icmp eq i32 %inc181, 25
  br i1 %exitcond421.not, label %for.body176.for.body186_crit_edge, label %for.body176.for.body176_crit_edge

for.body176.for.body176_crit_edge:                ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body176

for.body176.for.body186_crit_edge:                ; preds = %for.body176
  br label %for.body186

for.body186:                                      ; preds = %for.inc200.for.body186_crit_edge, %for.body176.for.body186_crit_edge
  %i.8411 = phi i32 [ %inc201, %for.inc200.for.body186_crit_edge ], [ 0, %for.body176.for.body186_crit_edge ]
  %101 = add nsw i32 %i.8411, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %101)
  %102 = icmp ult i32 %101, 5
  br i1 %102, label %for.body186.for.inc200_crit_edge, label %if.end195

for.body186.for.inc200_crit_edge:                 ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc200

if.end195:                                        ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx198 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 13, i32 %i.8411
  %103 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx198, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %105 = trunc i32 %i.8411 to i8
  %conv.i393 = add i8 %105, 48
  %106 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i394 = getelementptr i8, ptr %106, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i394, i8 %conv.i393) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !147
  tail call void @arm_heavy_mb() #13
  %107 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i395 = getelementptr i8, ptr %107, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i395, i8 %104) #13, !srcloc !119
  br label %for.inc200

for.inc200:                                       ; preds = %if.end195, %for.body186.for.inc200_crit_edge
  %inc201 = add nuw nsw i32 %i.8411, 1
  %exitcond422.not = icmp eq i32 %inc201, 30
  br i1 %exitcond422.not, label %for.inc200.for.body206_crit_edge, label %for.inc200.for.body186_crit_edge

for.inc200.for.body186_crit_edge:                 ; preds = %for.inc200
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body186

for.inc200.for.body206_crit_edge:                 ; preds = %for.inc200
  br label %for.body206

for.body206:                                      ; preds = %for.body206.for.body206_crit_edge, %for.inc200.for.body206_crit_edge
  %i.9413 = phi i32 [ %inc212, %for.body206.for.body206_crit_edge ], [ 0, %for.inc200.for.body206_crit_edge ]
  %arrayidx209 = getelementptr [12 x %struct.modeinit], ptr @vgamode, i32 0, i32 %j.0414, i32 14, i32 %i.9413
  %108 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx209, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %110 = trunc i32 %i.9413 to i8
  %conv.i396 = add i8 %110, -112
  %111 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i397 = getelementptr i8, ptr %111, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i397, i8 %conv.i396) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !147
  tail call void @arm_heavy_mb() #13
  %112 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i398 = getelementptr i8, ptr %112, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i398, i8 %109) #13, !srcloc !119
  %inc212 = add nuw nsw i32 %i.9413, 1
  %exitcond423.not = icmp eq i32 %inc212, 24
  br i1 %exitcond423.not, label %for.body206.for.inc214_crit_edge, label %for.body206.for.body206_crit_edge

for.body206.for.body206_crit_edge:                ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body206

for.body206.for.inc214_crit_edge:                 ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc214

for.inc214:                                       ; preds = %for.body206.for.inc214_crit_edge, %lor.lhs.false14.for.inc214_crit_edge, %lor.lhs.false8.for.inc214_crit_edge, %lor.lhs.false.for.inc214_crit_edge, %for.body.for.inc214_crit_edge
  %inc215 = add nuw nsw i32 %j.0414, 1
  %exitcond424.not = icmp eq i32 %inc215, 12
  br i1 %exitcond424.not, label %do.body217, label %for.inc214.for.body_crit_edge

for.inc214.for.body_crit_edge:                    ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body217:                                       ; preds = %for.inc214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  tail call void @arm_heavy_mb() #13
  %113 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr220 = getelementptr i8, ptr %113, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr220, i8 103) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !149
  tail call void @arm_heavy_mb() #13
  %vp_regs = getelementptr inbounds %struct.smtcfb_info, ptr %sfb, i32 0, i32 6
  %114 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vp_regs, align 4
  %add.ptr224 = getelementptr i8, ptr %115, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 0) #13, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !150
  tail call void @arm_heavy_mb() #13
  %116 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vp_regs, align 4
  %add.ptr229 = getelementptr i8, ptr %117, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 0) #13, !srcloc !131
  %118 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %width3, align 4
  %120 = ptrtoint ptr %fb10 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fb10, align 4
  %bits_per_pixel233 = getelementptr inbounds %struct.fb_info, ptr %121, i32 0, i32 6, i32 6
  %122 = ptrtoint ptr %bits_per_pixel233 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bits_per_pixel233, align 4
  %124 = add i32 %123, -8
  %125 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 29)
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %125, label %do.body217.do.body260_crit_edge [
    i32 0, label %do.body237
    i32 1, label %do.body243
    i32 2, label %do.body249
    i32 3, label %do.body255
  ]

do.body217.do.body260_crit_edge:                  ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body260

do.body237:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  tail call void @arm_heavy_mb() #13
  %127 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vp_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 0) #13, !srcloc !131
  br label %do.body260

do.body243:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %129 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %vp_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 512) #13, !srcloc !131
  br label %do.body260

do.body249:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  tail call void @arm_heavy_mb() #13
  %131 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vp_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 1024) #13, !srcloc !131
  br label %do.body260

do.body255:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @arm_heavy_mb() #13
  %133 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vp_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 768) #13, !srcloc !131
  br label %do.body260

do.body260:                                       ; preds = %do.body255, %do.body249, %do.body243, %do.body237, %do.body217.do.body260_crit_edge
  %mul = mul i32 %123, %119
  %div357 = lshr i32 %mul, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @arm_heavy_mb() #13
  %add263 = shl i32 %div357, 16
  %shl = add i32 %add263, 131072
  %or = or i32 %shl, %div357
  %135 = tail call i32 @llvm.bswap.i32(i32 %or)
  %136 = ptrtoint ptr %vp_regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %vp_regs, align 4
  %add.ptr265 = getelementptr i8, ptr %137, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr265, i32 %135) #13, !srcloc !131
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtcfb_pci_suspend(ptr nocapture noundef readonly %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %2 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 32) #13, !srcloc !119
  %3 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 965
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %5 = or i8 %4, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %6 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3, i8 32) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %7 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %5) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %8 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5, i8 105) #13, !srcloc !119
  %9 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i6 = getelementptr i8, ptr %9, i32 965
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i6) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %11 = and i8 %10, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %12 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i8 = getelementptr i8, ptr %12, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 105) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %13 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i10 = getelementptr i8, ptr %13, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i10, i8 %11) #13, !srcloc !119
  tail call void @console_lock() #13
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb, align 4
  tail call void @fb_set_suspend(ptr noundef %15, i32 noundef 1) #13
  tail call void @console_unlock() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %16 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i11 = getelementptr i8, ptr %16, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 33) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %17 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i12 = getelementptr i8, ptr %17, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i12, i8 -1) #13, !srcloc !119
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smtcfb_pci_resume(ptr nocapture noundef readonly %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 17) #13, !srcloc !119
  %chip_id = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chip_id, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %3, label %entry.sw.epilog_crit_edge [
    i16 1808, label %entry.sw.bb_crit_edge
    i16 1810, label %entry.sw.bb_crit_edge34
    i16 1824, label %sw.bb2
  ]

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %5 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %6 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 22) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %7 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i10 = getelementptr i8, ptr %7, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %8 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i11 = getelementptr i8, ptr %8, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i11, i8 2) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %9 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 98) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %10 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i13 = getelementptr i8, ptr %10, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i13, i8 62) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %11 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 23) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %12 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i15 = getelementptr i8, ptr %12, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i15, i8 32) #13, !srcloc !119
  %fb = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp = icmp eq i32 %16, 32
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %17 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i16 = getelementptr i8, ptr %17, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 23) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %18 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i17 = getelementptr i8, ptr %18, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i17, i8 48) #13, !srcloc !119
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %19 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i18 = getelementptr i8, ptr %19, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 98) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %20 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i19 = getelementptr i8, ptr %20, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i19, i8 -1) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %21 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i20 = getelementptr i8, ptr %21, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20, i8 106) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %22 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i21 = getelementptr i8, ptr %22, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i21, i8 13) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %23 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i22 = getelementptr i8, ptr %23, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22, i8 107) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %24 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i23 = getelementptr i8, ptr %24, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i23, i8 2) #13, !srcloc !119
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %25 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i24 = getelementptr i8, ptr %25, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24, i8 52) #13, !srcloc !119
  %26 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i = getelementptr i8, ptr %26, i32 965
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %28 = or i8 %27, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %29 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i25 = getelementptr i8, ptr %29, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i25, i8 52) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %30 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i27 = getelementptr i8, ptr %30, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i27, i8 %28) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %31 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i28 = getelementptr i8, ptr %31, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 51) #13, !srcloc !119
  %32 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr1.i29 = getelementptr i8, ptr %32, i32 965
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i29) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %34 = and i8 %33, -13
  %35 = or i8 %34, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %36 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr.i31 = getelementptr i8, ptr %36, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 51) #13, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %37 = load ptr, ptr @smtc_regbaseaddress, align 4
  %add.ptr4.i33 = getelementptr i8, ptr %37, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i33, i8 %35) #13, !srcloc !119
  tail call fastcc void @smtcfb_setmode(ptr noundef %1)
  tail call void @console_lock() #13
  %fb6 = getelementptr inbounds %struct.smtcfb_info, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %fb6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fb6, align 4
  tail call void @fb_set_suspend(ptr noundef %39, i32 noundef 0) #13
  tail call void @console_unlock() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !84, !86, !88, !89, !90, !92, !93, !95, !96, !98, !100, !102, !103, !104, !105}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_sm712fb__309_1787_sm712fb_init6, !1, !"__initcall__kmod_sm712fb__309_1787_sm712fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1787, i32 1}
!2 = !{ptr @__exitcall_sm712fb_exit, !3, !"__exitcall_sm712fb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1794, i32 1}
!4 = !{ptr @__UNIQUE_ID_author310, !5, !"__UNIQUE_ID_author310", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1796, i32 1}
!6 = !{ptr @__UNIQUE_ID_description311, !7, !"__UNIQUE_ID_description311", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1797, i32 1}
!8 = !{ptr @__UNIQUE_ID_file312, !9, !"__UNIQUE_ID_file312", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1798, i32 1}
!10 = !{ptr @__UNIQUE_ID_license313, !9, !"__UNIQUE_ID_license313", i1 false, i1 false}
!11 = !{ptr @smtc_regbaseaddress, !12, !"smtc_regbaseaddress", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/sm712fb.c", i32 57, i32 15}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1778, i32 21}
!15 = !{ptr @mode_option, !16, !"mode_option", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/sm712fb.c", i32 833, i32 14}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/sm712fb.c", i32 847, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sm7xx_vga_setup.__UNIQUE_ID_ddebug305, !18, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!22 = distinct !{null, !23, !"smtc_scr_info", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/sm712fb.c", i32 831, i32 27}
!24 = !{ptr @vesa_mode_table, !25, !"vesa_mode_table", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/sm712fb.c", i32 95, i32 31}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1767, i32 10}
!28 = !{ptr @smtcfb_driver, !29, !"smtcfb_driver", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1766, i32 26}
!30 = !{ptr @smtcfb_pci_table, !31, !"smtcfb_pci_table", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1683, i32 35}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1527, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @smtcfb_pci_probe._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @smtcfb_pci_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1533, i32 36}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1535, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @smtcfb_pci_probe._entry.10, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @smtcfb_pci_probe._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1539, i32 25}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1567, i32 2}
!50 = !{ptr @smtcfb_pci_probe._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @smtcfb_pci_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1577, i32 4}
!54 = !{ptr @smtcfb_pci_probe._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smtcfb_pci_probe._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1590, i32 4}
!58 = !{ptr @smtcfb_pci_probe._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @smtcfb_pci_probe._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @smtcfb_pci_probe._entry.24, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1608, i32 4}
!62 = !{ptr @smtcfb_pci_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1625, i32 3}
!65 = !{ptr @smtcfb_pci_probe._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @smtcfb_pci_probe._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1654, i32 2}
!69 = !{ptr @smtcfb_pci_probe._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @smtcfb_pci_probe._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1662, i32 2}
!73 = !{ptr @smtcfb_pci_probe._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @smtcfb_pci_probe._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @smtcfb_fix, !76, !"smtcfb_fix", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/sm712fb.c", i32 76, i32 33}
!77 = !{ptr @smtcfb_ops, !78, !"smtcfb_ops", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1372, i32 28}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1186, i32 2}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sm7xx_set_timing.__UNIQUE_ID_ddebug306, !87, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1197, i32 3}
!92 = !{ptr @sm7xx_set_timing.__UNIQUE_ID_ddebug307, !91, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1202, i32 3}
!95 = !{ptr @sm7xx_set_timing.__UNIQUE_ID_ddebug308, !94, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!96 = !{ptr @vgamode, !97, !"vgamode", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/sm712fb.c", i32 115, i32 30}
!98 = !{ptr @smtcfb_var, !99, !"smtcfb_var", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/sm712fb.c", i32 59, i32 39}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1417, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @smtc_map_smem._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @smtc_map_smem._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @sm7xx_pm_ops, !106, !"sm7xx_pm_ops", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/sm712fb.c", i32 1764, i32 8}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148199969, i64 2148199974, i64 2148199987, i64 2148200031, i64 2148200065, i64 2148200086}
!118 = !{i64 2148913495}
!119 = !{i64 732615}
!120 = !{i64 733010}
!121 = !{i64 2148911510}
!122 = !{i64 2156250228}
!123 = !{i64 2156250564}
!124 = !{i64 733230}
!125 = !{i64 2153320983, i64 2153321008}
!126 = !{i64 2153320302, i64 2153320327}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 5815857}
!129 = !{i64 5816054}
!130 = !{i64 2153301287}
!131 = !{i64 732812}
!132 = !{i64 2156251069}
!133 = !{i64 2156251423}
!134 = !{i64 2156254670}
!135 = !{i64 2156255034}
!136 = !{i64 2156255406}
!137 = !{i64 2156255778}
!138 = !{i64 2156266242}
!139 = !{i64 2156266612}
!140 = !{i64 2156247964}
!141 = !{i64 2156248300}
!142 = !{i64 2156248823}
!143 = !{i64 2156249096}
!144 = !{i64 2156249450}
!145 = !{i64 2156249723}
!146 = !{i64 2156247123}
!147 = !{i64 2156247459}
!148 = !{i64 2156267147}
!149 = !{i64 2156267427}
!150 = !{i64 2156267820}
!151 = !{i64 2156268212}
!152 = !{i64 2156268610}
!153 = !{i64 2156269029}
!154 = !{i64 2156269448}
!155 = !{i64 2156269912}
