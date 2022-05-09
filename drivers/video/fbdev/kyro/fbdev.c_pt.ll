; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/kyro/fbdev.c_pt.bc'
source_filename = "../drivers/video/fbdev/kyro/fbdev.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.device_info_t = type { ptr, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
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
%struct.kyrofb_info = type { ptr, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._OVERLAY_CREATE = type { i32, i32, i32 }
%struct._OVERLAY_VIEWPORT_SET = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@kyrofb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @kyrofb_pci_tbl, ptr @kyrofb_probe, ptr @kyrofb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_kyrofb__305_798_kyrofb_init6 = internal global ptr @kyrofb_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author306 = internal constant [67 x i8] c"kyrofb.author=STMicroelectronics; Paul Mundt <lethal@linux-sh.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [44 x i8] c"kyrofb.file=drivers/video/fbdev/kyro/kyrofb\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [19 x i8] c"kyrofb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kyrofb\00", [25 x i8] zeroinitializer }, align 32
@kyrofb_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4170, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kyrofb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014kyrofb: Can't enable pdev: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kyrofb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/kyro/fbdev.c\00", [63 x i8] zeroinitializer }, align 32
@kyrofb_probe._entry_ptr = internal global ptr @kyrofb_probe._entry, section ".printk_index", align 4
@kyro_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"ST Kyro\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@deviceInfo = internal global { %struct.device_info_t, [44 x i8] } zeroinitializer, align 32
@nomtrr = internal global { i1, [31 x i8] } zeroinitializer, align 32
@nopan = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kyrofb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kyrofb_check_var, ptr @kyrofb_set_par, ptr @kyrofb_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @kyrofb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kyro_modedb = internal global { [33 x %struct.fb_videomode], [456 x i8] } { [33 x %struct.fb_videomode] [%struct.fb_videomode { ptr null, i32 85, i32 640, i32 350, i32 31746, i32 96, i32 32, i32 60, i32 32, i32 64, i32 3, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 400, i32 31746, i32 96, i32 32, i32 41, i32 1, i32 64, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 720, i32 400, i32 28169, i32 108, i32 36, i32 42, i32 1, i32 72, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39721, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 640, i32 480, i32 31746, i32 128, i32 24, i32 28, i32 9, i32 40, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 640, i32 480, i32 31746, i32 120, i32 16, i32 16, i32 1, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 480, i32 27777, i32 80, i32 56, i32 25, i32 1, i32 56, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 56, i32 800, i32 600, i32 27777, i32 128, i32 24, i32 22, i32 1, i32 72, i32 2, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 800, i32 600, i32 25000, i32 88, i32 40, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 800, i32 600, i32 20000, i32 64, i32 56, i32 23, i32 37, i32 120, i32 6, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 800, i32 600, i32 20202, i32 160, i32 16, i32 21, i32 1, i32 80, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 800, i32 600, i32 17777, i32 152, i32 32, i32 27, i32 1, i32 64, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 768, i32 15384, i32 160, i32 24, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1024, i32 768, i32 13333, i32 144, i32 24, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1024, i32 768, i32 12698, i32 176, i32 16, i32 28, i32 1, i32 96, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1024, i32 768, i32 10582, i32 208, i32 48, i32 36, i32 1, i32 96, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1152, i32 864, i32 9259, i32 256, i32 64, i32 32, i32 1, i32 128, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 960, i32 9259, i32 312, i32 96, i32 36, i32 1, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1280, i32 960, i32 6734, i32 224, i32 64, i32 47, i32 1, i32 160, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 1024, i32 9259, i32 248, i32 48, i32 38, i32 1, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1280, i32 1024, i32 7407, i32 248, i32 16, i32 38, i32 1, i32 144, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1280, i32 1024, i32 6349, i32 224, i32 64, i32 44, i32 1, i32 160, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 1200, i32 6172, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 65, i32 1600, i32 1200, i32 5698, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1600, i32 1200, i32 5291, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1600, i32 1200, i32 4938, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1600, i32 1200, i32 4357, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1792, i32 1344, i32 4884, i32 328, i32 128, i32 46, i32 1, i32 200, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1792, i32 1344, i32 3831, i32 352, i32 96, i32 69, i32 1, i32 216, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1856, i32 1392, i32 4581, i32 352, i32 96, i32 43, i32 1, i32 224, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1856, i32 1392, i32 3472, i32 352, i32 128, i32 104, i32 1, i32 224, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1440, i32 4273, i32 344, i32 128, i32 56, i32 1, i32 208, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1920, i32 1440, i32 3367, i32 352, i32 144, i32 56, i32 1, i32 224, i32 3, i32 2, i32 0, i32 0 }], [456 x i8] zeroinitializer }, align 32
@kyro_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 16, i32 0, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39721, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@kyrofb_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016fb%d: %s frame buffer device, at %dx%d@%d using %ldk/%ldk of VRAM\0A\00", [59 x i8] zeroinitializer }, align 32
@kyrofb_probe._entry_ptr.6 = internal global ptr @kyrofb_probe._entry.4, section ".printk_index", align 4
@kyrofb_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Kyro FB: failed to create overlay surface.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kyrofb_ioctl\00", [19 x i8] zeroinitializer }, align 32
@kyrofb_ioctl._entry_ptr = internal global ptr @kyrofb_ioctl._entry, section ".printk_index", align 4
@kyrofb_ioctl._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Kyro FB: failed to create overlay viewport.\0A\00", [49 x i8] zeroinitializer }, align 32
@kyrofb_ioctl._entry_ptr.11 = internal global ptr @kyrofb_ioctl._entry.9, section ".printk_index", align 4
@kyrofb_ioctl._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013Kyro FB: KYRO_IOCTL_SET_VIDEO_MODE isobsolete, use the appropriate fb_ioctl()command instead.\0A\00", [63 x i8] zeroinitializer }, align 32
@kyrofb_ioctl._entry_ptr.14 = internal global ptr @kyrofb_ioctl._entry.12, section ".printk_index", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kyrofb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014kyrofb: depth not supported: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kyrofb_check_var\00", [47 x i8] zeroinitializer }, align 32
@kyrofb_check_var._entry_ptr = internal global ptr @kyrofb_check_var._entry, section ".printk_index", align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nopan\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nowrap\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 27392, i64 27393, i64 27394, i64 27395, i64 27396, i64 27397]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"kyrofb_pci_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 652, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 653, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"kyrofb_pci_tbl\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 644, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 678, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"kyro_fix\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 40, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"deviceInfo\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 79, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"nopan\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"kyrofb_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 659, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 81, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"kyro_modedb\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 90, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"kyro_var\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 47, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 738, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 601, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 616, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 622, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 156, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 406, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 569, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 572, i32 24 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 574, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [36 x i8] c"../drivers/video/fbdev/kyro/fbdev.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 576, i32 31 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__initcall__kmod_kyrofb__305_798_kyrofb_init6, ptr @kyrofb_check_var._entry, ptr @kyrofb_check_var._entry_ptr, ptr @kyrofb_exit, ptr @kyrofb_ioctl._entry, ptr @kyrofb_ioctl._entry.12, ptr @kyrofb_ioctl._entry.9, ptr @kyrofb_ioctl._entry_ptr, ptr @kyrofb_ioctl._entry_ptr.11, ptr @kyrofb_ioctl._entry_ptr.14, ptr @kyrofb_probe._entry, ptr @kyrofb_probe._entry.4, ptr @kyrofb_probe._entry_ptr, ptr @kyrofb_probe._entry_ptr.6, ptr @kyrofb_pci_driver, ptr @.str, ptr @kyrofb_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @kyro_fix, ptr @deviceInfo, ptr @nomtrr, ptr @nopan, ptr @kyrofb_ops, ptr @mode_option, ptr @kyro_modedb, ptr @kyro_var, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyro_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deviceInfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nopan to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyro_modedb to i32), i32 1848, i32 2304, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyro_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_ioctl._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_ioctl._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyrofb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kyrofb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @kyrofb_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kyrofb_init() #0 section ".init.text" align 64 {
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
  call fastcc void @kyrofb_setup(ptr noundef %2) #11
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @kyrofb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyrofb_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 136, ptr noundef %dev) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  store i32 %3, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @kyro_fix, i32 0, i32 1), align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp, i32 0, i32 %add
  store i32 %cond, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @kyro_fix, i32 0, i32 2), align 4
  %arrayidx15 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx15, align 8
  store i32 %7, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @kyro_fix, i32 0, i32 10), align 4
  %end19 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20 = icmp eq i32 %9, 0
  br i1 %cmp20, label %if.end5.cond.end31_crit_edge, label %cond.false22

if.end5.cond.end31_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end31

cond.false22:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15, align 8
  %sub29 = add i32 %9, 1
  %add30 = sub i32 %sub29, %11
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false22, %if.end5.cond.end31_crit_edge
  %cond32 = phi i32 [ %add30, %cond.false22 ], [ 0, %if.end5.cond.end31_crit_edge ]
  store i32 %cond32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @kyro_fix, i32 0, i32 11), align 4
  %call33 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %cond32) #8
  store ptr %call33, ptr @deviceInfo, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call33, ptr %1, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %cond.end31.out_free_fb_crit_edge, label %if.end37

cond.end31.out_free_fb_crit_edge:                 ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_fb

if.end37:                                         ; preds = %cond.end31
  %call38 = tail call ptr @pci_ioremap_wc_bar(ptr noundef %pdev, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 25
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38, ptr %13, align 4
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.out_unmap_regs_crit_edge, label %if.end41

if.end37.out_unmap_regs_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unmap_regs

if.end41:                                         ; preds = %if.end37
  %.b = load i1, ptr @nomtrr, align 4
  br i1 %.b, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %wc_cookie = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wc_cookie, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %.b135 = load i1, ptr @nopan, align 4
  %not..b135 = xor i1 %.b135, true
  %conv = zext i1 %not..b135 to i16
  store i16 %conv, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @kyro_fix, i32 0, i32 7), align 2
  store i16 0, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @kyro_fix, i32 0, i32 8), align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 20
  %16 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kyrofb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %fix, ptr @kyro_fix, i32 68)
  %palette = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 1
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 27
  %18 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %palette, ptr %pseudo_palette, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags, align 4
  %20 = load ptr, ptr @deviceInfo, align 4
  %call51 = tail call i32 @SetCoreClockPLL(ptr noundef %20, ptr noundef %pdev) #8
  store i32 0, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6
  %21 = load ptr, ptr @mode_option, align 4
  %call52 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call2, ptr noundef %21, ptr noundef nonnull @kyro_modedb, i32 noundef 33, ptr noundef getelementptr inbounds ([33 x %struct.fb_videomode], ptr @kyro_modedb, i32 0, i32 14), i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end45.if.end56_crit_edge

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %22 = call ptr @memcpy(ptr %var, ptr @kyro_var, i32 160)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end45.if.end56_crit_edge
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 12
  %call57 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #8
  %call58 = tail call i32 @kyrofb_set_par(ptr noundef nonnull %call2)
  %call60 = tail call i32 @kyrofb_check_var(ptr noundef %var, ptr noundef nonnull %call2)
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel, align 4
  %mul.i = mul i32 %26, %24
  %add.i = add i32 %mul.i, 31
  %and.i = ashr i32 %add.i, 3
  %shr.i = and i32 %and.i, -4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %shr.i, %28
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %13, align 4
  tail call void @mmioset(ptr noundef %30, i32 noundef 0, i32 noundef %mul) #8
  %call65 = tail call i32 @register_framebuffer(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %out_unmap, label %do.end72

do.end72:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 1
  %31 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %node, align 4
  %33 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres, align 4
  %37 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %mul, 10
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smem_len, align 4
  %shr81 = lshr i32 %40, 10
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %32, ptr noundef %fix, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %shr, i32 noundef %shr81) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call2, ptr %driver_data.i.i, align 4
  br label %cleanup

out_unmap:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %13, align 4
  tail call void @iounmap(ptr noundef %43) #8
  br label %out_unmap_regs

out_unmap_regs:                                   ; preds = %out_unmap, %if.end37.out_unmap_regs_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %45) #8
  br label %out_free_fb

out_free_fb:                                      ; preds = %out_unmap_regs, %cond.end31.out_free_fb_crit_edge
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_fb, %do.end72, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %out_free_fb ], [ 0, %do.end72 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyrofb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %4 = load ptr, ptr @deviceInfo, align 4
  tail call void @StopVTG(ptr noundef %4) #8
  %5 = load ptr, ptr @deviceInfo, align 4
  tail call void @DisableRamdacOutput(ptr noundef %5) #8
  %6 = load ptr, ptr @deviceInfo, align 4
  %call2 = tail call i32 @SetCoreClockPLL(ptr noundef %6, ptr noundef %pdev) #8
  store i32 0, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @iounmap(ptr noundef %9) #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %11) #8
  tail call void @unregister_framebuffer(ptr noundef %1) #8
  tail call void @framebuffer_release(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_wc_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SetCoreClockPLL(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyrofb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %XRES = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %XRES to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %XRES, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres, align 4
  %YRES = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %YRES to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %YRES, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %conv = trunc i32 %9 to i8
  %PIXDEPTH = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %PIXDEPTH to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %PIXDEPTH, align 4
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %11 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixclock, align 4
  %13 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %14 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %right_margin, align 4
  %add = add i32 %15, %13
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %16 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hsync_len, align 4
  %add9 = add i32 %add, %17
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %18 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %left_margin, align 4
  %add11 = add i32 %add9, %19
  %mul = mul i32 %add11, %12
  %div = udiv i32 %mul, 1000
  %20 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %21 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lower_margin, align 4
  %add15 = add i32 %22, %20
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %23 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vsync_len, align 4
  %add17 = add i32 %add15, %24
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %25 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %upper_margin, align 4
  %add19 = add i32 %add17, %26
  %mul20 = mul i32 %add19, %div
  %div21125 = lshr i32 %mul20, 1
  %add22 = add nuw i32 %div21125, 1000000000
  %div23 = udiv i32 %add22, %mul20
  %VFREQ = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %VFREQ to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div23, ptr %VFREQ, align 4
  %div24 = udiv i32 %mul, 2000
  %add25 = add nuw nsw i32 %div24, 1000000000
  %div26 = udiv i32 %add25, %div
  %HCLK = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %HCLK to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div26, ptr %HCLK, align 4
  %29 = load i32, ptr %pixclock, align 4
  %div29126 = lshr i32 %29, 1
  %add30 = add nuw i32 %div29126, 1000000000
  %div33 = udiv i32 %add30, %29
  %mul34 = mul i32 %div33, 10
  %PIXCLK = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %PIXCLK to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul34, ptr %PIXCLK, align 4
  %31 = load i32, ptr %right_margin, align 4
  %HFP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %HFP to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %HFP, align 4
  %33 = load i32, ptr %hsync_len, align 4
  %HST = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %HST to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %HST, align 4
  %35 = load i32, ptr %left_margin, align 4
  %HBP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %HBP to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %HBP, align 4
  %add43 = add i32 %31, %3
  %add45 = add i32 %add43, %33
  %add47 = add i32 %add45, %35
  %HTot = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %HTot to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add47, ptr %HTot, align 4
  %38 = load i32, ptr %lower_margin, align 4
  %VFP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %VFP to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %VFP, align 4
  %40 = load i32, ptr %vsync_len, align 4
  %VST = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %VST to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %VST, align 4
  %42 = load i32, ptr %upper_margin, align 4
  %VBP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %VBP to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %VBP, align 4
  %add56 = add i32 %38, %6
  %add58 = add i32 %add56, %40
  %add60 = add i32 %add58, %42
  %VTot = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %VTot to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add60, ptr %VTot, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %45 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sync, align 4
  %and = and i32 %46, 1
  %HSP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %HSP to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and, ptr %HSP, align 4
  %48 = load i32, ptr %sync, align 4
  %and64 = lshr i32 %48, 1
  %and64.lobit = and i32 %and64, 1
  %VSP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 11
  %49 = ptrtoint ptr %VSP to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and64.lobit, ptr %VSP, align 4
  %50 = load ptr, ptr %par1, align 4
  %51 = load ptr, ptr @deviceInfo, align 4
  tail call void @StopVTG(ptr noundef %51) #8
  %52 = load ptr, ptr @deviceInfo, align 4
  tail call void @DisableRamdacOutput(ptr noundef %52) #8
  %53 = load ptr, ptr @deviceInfo, align 4
  tail call void @DisableVGA(ptr noundef %53) #8
  %54 = load ptr, ptr @deviceInfo, align 4
  %55 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bits_per_pixel, align 4
  %57 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %var, align 4
  %59 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %yres, align 4
  %HSP.i = getelementptr inbounds %struct.kyrofb_info, ptr %50, i32 0, i32 6
  %61 = ptrtoint ptr %HSP.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %HSP.i, align 4
  %VSP.i = getelementptr inbounds %struct.kyrofb_info, ptr %50, i32 0, i32 11
  %63 = ptrtoint ptr %VSP.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %VSP.i, align 4
  %PIXCLK.i = getelementptr inbounds %struct.kyrofb_info, ptr %50, i32 0, i32 15
  %call.i = tail call i32 @InitialiseRamdac(ptr noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, ptr noundef %PIXCLK.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.kyro_dev_video_mode_set.exit_crit_edge, label %if.end.i

entry.kyro_dev_video_mode_set.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kyro_dev_video_mode_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %65 = load ptr, ptr @deviceInfo, align 4
  tail call void @SetupVTG(ptr noundef %65, ptr noundef %50) #8
  %66 = load ptr, ptr @deviceInfo, align 4
  tail call void @ResetOverlayRegisters(ptr noundef %66) #8
  %67 = load ptr, ptr @deviceInfo, align 4
  tail call void @EnableRamdacOutput(ptr noundef %67) #8
  %68 = load ptr, ptr @deviceInfo, align 4
  tail call void @StartVTG(ptr noundef %68) #8
  %69 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %var, align 4
  %71 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %yres, align 4
  %mul.i = mul i32 %72, %70
  %73 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bits_per_pixel, align 4
  %mul10.i = mul i32 %mul.i, %74
  store i32 %mul10.i, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), align 4
  br label %kyro_dev_video_mode_set.exit

kyro_dev_video_mode_set.exit:                     ; preds = %if.end.i, %entry.kyro_dev_video_mode_set.exit_crit_edge
  %75 = ptrtoint ptr %XRES to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %XRES, align 4
  %77 = ptrtoint ptr %PIXDEPTH to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %PIXDEPTH, align 4
  %conv69 = zext i8 %78 to i32
  %mul.i127 = mul i32 %76, %conv69
  %add.i = add i32 %mul.i127, 31
  %and.i = ashr i32 %add.i, 3
  %shr.i = and i32 %and.i, -4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %79 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shr.i, ptr %line_length, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %80 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %visual, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyrofb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %2 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 16, label %sw.bb
    i32 32, label %sw.bb13
  ]

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %5) #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %7 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %9 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %green, align 4
  %length11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %length11, align 4
  %length12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %length12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %12 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 24, ptr %transp, align 4
  %red15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %13 = ptrtoint ptr %red15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %red15, align 4
  %green17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %14 = ptrtoint ptr %green17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %green17, align 4
  %blue19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %15 = ptrtoint ptr %blue19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %blue19, align 4
  %length22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %length22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %length22, align 4
  %length24 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %length24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %length24, align 4
  %length26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %length26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %length26, align 4
  %length28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %length28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %20 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %21 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %height, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %22 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %activate, align 4
  %and = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp29 = icmp eq i32 %and, 2
  br i1 %cmp29, label %sw.epilog.cleanup_crit_edge, label %if.end31

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog
  %HBP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %HBP to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %HBP, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %26 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %left_margin, align 4
  %HST = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %HST to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %HST, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %29 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hsync_len, align 4
  %HFP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %HFP to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %HFP, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %32 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %right_margin, align 4
  %VBP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %VBP to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %VBP, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %35 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %upper_margin, align 4
  %VST = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %VST to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %VST, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %38 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vsync_len, align 4
  %VFP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %VFP to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %VFP, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %41 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %lower_margin, align 4
  %HSP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %HSP to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %HSP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp32 = icmp eq i32 %43, 1
  br i1 %cmp32, label %if.then33, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %44 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sync, align 4
  %or = or i32 %45, 1
  store i32 %or, ptr %sync, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %VSP = getelementptr inbounds %struct.kyrofb_info, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %VSP to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %VSP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp35 = icmp eq i32 %47, 1
  br i1 %cmp35, label %if.then36, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %sync37 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %48 = ptrtoint ptr %sync37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sync37, align 4
  %or38 = or i32 %49, 2
  store i32 %or38, ptr %sync37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end34.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kyrofb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp2 = icmp ult i32 %regno, 16
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %if.then3.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 32, label %sw.bb8
  ]

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %red, 63488
  %and4 = lshr i32 %green, 5
  %shr = and i32 %and4, 2016
  %or = or i32 %shr, %and
  %and5 = lshr i32 %blue, 11
  %shr6 = and i32 %and5, 31
  %or7 = or i32 %or, %shr6
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %shr10 = and i32 %green, -256
  %shr11 = lshr i32 %blue, 8
  %5 = shl i32 %transp, 16
  %shl = and i32 %5, -16777216
  %6 = shl i32 %red, 8
  %shl13 = and i32 %6, -65536
  %or14 = or i32 %shr10, %shl13
  %or16 = or i32 %or14, %shr11
  %or17 = or i32 %or16, %shl
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %sw.bb
  %or17.sink = phi i32 [ %or17, %sw.bb8 ], [ %or7, %sw.bb ]
  %arrayidx19 = getelementptr %struct.kyrofb_info, ptr %1, i32 0, i32 1, i32 %regno
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or17.sink, ptr %arrayidx19, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyrofb_ioctl(ptr nocapture noundef readnone %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %stride.i = alloca i32, align 4
  %uvStride.i = alloca i32, align 4
  %ol_create = alloca %struct._OVERLAY_CREATE, align 4
  %ol_viewport_set = alloca %struct._OVERLAY_VIEWPORT_SET, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ol_create) #8
  %0 = ptrtoint ptr %ol_create to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ol_create, align 4, !annotation !84
  %1 = getelementptr inbounds %struct._OVERLAY_CREATE, ptr %ol_create, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !84
  %3 = getelementptr inbounds %struct._OVERLAY_CREATE, ptr %ol_create, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ol_viewport_set) #8
  %5 = getelementptr inbounds %struct._OVERLAY_VIEWPORT_SET, ptr %ol_viewport_set, i32 0, i32 1
  %6 = getelementptr inbounds %struct._OVERLAY_VIEWPORT_SET, ptr %ol_viewport_set, i32 0, i32 2
  %7 = getelementptr inbounds %struct._OVERLAY_VIEWPORT_SET, ptr %ol_viewport_set, i32 0, i32 3
  %8 = inttoptr i32 %arg to ptr
  %9 = call ptr @memset(ptr %ol_viewport_set, i32 255, i32 16)
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 27392, label %if.end59.i.i
    i32 27393, label %if.end59.i.i49
    i32 27394, label %do.end22
    i32 27395, label %if.then.i
    i32 27397, label %if.then.i78
    i32 27396, label %if.then.i90
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #13, !srcloc !85
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !86

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ol_create, i32 noundef 12) #8
  %12 = call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !87
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ol_create, ptr noundef %8, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !86

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i104 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i104
  %add.ptr.i.i = getelementptr i8, ptr %ol_create, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i104)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %16 = ptrtoint ptr %ol_create to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ol_create, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride.i) #8
  %20 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %stride.i, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uvStride.i) #8
  %21 = ptrtoint ptr %uvStride.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %uvStride.i, align 4, !annotation !84
  %22 = load i32, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %23 = load ptr, ptr @deviceInfo, align 4
  call void @ResetOverlayRegisters(ptr noundef %23) #8
  %24 = load i32, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 1), align 4
  %.biased.i = add i32 %24, 31
  %offset.0.i = and i32 %.biased.i, -32
  %25 = load ptr, ptr @deviceInfo, align 4
  %call.i = call i32 @CreateOverlaySurface(ptr noundef %25, i32 noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef %offset.0.i, ptr noundef nonnull %stride.i, ptr noundef nonnull %uvStride.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end.i.do.end_crit_edge, label %kyro_dev_overlay_create.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

kyro_dev_overlay_create.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %offset.0.i, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), align 4
  %26 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stride.i, align 4
  store i32 %27, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 3), align 4
  %28 = ptrtoint ptr %uvStride.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uvStride.i, align 4
  store i32 %29, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 4), align 4
  %mul10.i = shl i32 %29, 1
  %reass.add.i = add i32 %mul10.i, %27
  %reass.mul.i = mul i32 %reass.add.i, %19
  %add11.i = add i32 %reass.mul.i, %offset.0.i
  store i32 %add11.i, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 1), align 4
  %30 = load ptr, ptr @deviceInfo, align 4
  %call12.i = call i32 @SetOverlayBlendMode(ptr noundef %30, i32 noundef 3, i32 noundef 15, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uvStride.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride.i) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uvStride.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride.i) #8
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end59.i.i49:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #8
  %call.i.i50 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i50, label %if.end59.i.i49.if.then11.i.i66_crit_edge, label %land.lhs.true.i.i53

if.end59.i.i49.if.then11.i.i66_crit_edge:         ; preds = %if.end59.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i66

land.lhs.true.i.i53:                              ; preds = %if.end59.i.i49
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 16, i32 -1226833920) #13, !srcloc !85
  %asmresult.i.i51 = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i51)
  %cmp.i6.i52 = icmp eq i32 %asmresult.i.i51, 0
  br i1 %cmp.i6.i52, label %if.end.i.i63, label %land.lhs.true.i.i53.if.then11.i.i66_crit_edge, !prof !86

land.lhs.true.i.i53.if.then11.i.i66_crit_edge:    ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i66

if.end.i.i63:                                     ; preds = %land.lhs.true.i.i53
  %call.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ol_viewport_set, i32 noundef 16) #8
  %32 = call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i.i.i.i55 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i55 to ptr
  %cpu_domain.i.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i56) #6, !srcloc !87
  %and.i.i.i.i57 = and i32 %34, -13
  %or.i.i.i.i58 = or i32 %and.i.i.i.i57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i58) #8, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %call1.i.i.i59 = call i32 @arm_copy_from_user(ptr noundef nonnull %ol_viewport_set, ptr noundef %8, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #8, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i59)
  %tobool4.not.i.i62 = icmp eq i32 %call1.i.i.i59, 0
  br i1 %tobool4.not.i.i62, label %if.end9, label %if.end.i.i63.if.then11.i.i66_crit_edge, !prof !86

if.end.i.i63.if.then11.i.i66_crit_edge:           ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i66

if.then11.i.i66:                                  ; preds = %if.end.i.i63.if.then11.i.i66_crit_edge, %land.lhs.true.i.i53.if.then11.i.i66_crit_edge, %if.end59.i.i49.if.then11.i.i66_crit_edge
  %res.0.i.i61111 = phi i32 [ %call1.i.i.i59, %if.end.i.i63.if.then11.i.i66_crit_edge ], [ 16, %if.end59.i.i49.if.then11.i.i66_crit_edge ], [ 16, %land.lhs.true.i.i53.if.then11.i.i66_crit_edge ]
  %sub.i.i64 = sub i32 16, %res.0.i.i61111
  %add.ptr.i.i65 = getelementptr i8, ptr %ol_viewport_set, i32 %sub.i.i64
  %35 = call ptr @memset(ptr %add.ptr.i.i65, i32 0, i32 %res.0.i.i61111)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i63
  %36 = ptrtoint ptr %ol_viewport_set to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ol_viewport_set, align 4
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %5, align 4
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %6, align 4
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %44 = load i32, ptr getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  br i1 %cmp.i, label %if.end9.do.end15_crit_edge, label %if.end.i99

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.end.i99:                                       ; preds = %if.end9
  %45 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %41, label %lor.lhs.false3.i [
    i32 0, label %if.end.i99.do.end15_crit_edge
    i32 -1, label %if.end.i99.do.end15_crit_edge122
  ]

if.end.i99.do.end15_crit_edge122:                 ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.end.i99.do.end15_crit_edge:                    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

lor.lhs.false3.i:                                 ; preds = %if.end.i99
  %46 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %43, label %lor.lhs.false7.i [
    i32 0, label %lor.lhs.false3.i.do.end15_crit_edge
    i32 -1, label %lor.lhs.false3.i.do.end15_crit_edge123
  ]

lor.lhs.false3.i.do.end15_crit_edge123:           ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

lor.lhs.false3.i.do.end15_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp8.i = icmp ult i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %41)
  %cmp9.i = icmp eq i32 %41, -2
  %or.cond.i = and i1 %cmp8.i, %cmp9.i
  br i1 %or.cond.i, label %lor.lhs.false7.i.do.end15_crit_edge, label %kyro_dev_overlay_viewport_set.exit

lor.lhs.false7.i.do.end15_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

kyro_dev_overlay_viewport_set.exit:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = load ptr, ptr @deviceInfo, align 4
  call void @DisableRamdacOutput(ptr noundef %47) #8
  %48 = load ptr, ptr @deviceInfo, align 4
  %add12.i = add i32 %37, -1
  %sub.i = add i32 %add12.i, %41
  %add13.i = add i32 %39, -1
  %sub14.i = add i32 %add13.i, %43
  %call.i100 = call i32 @SetOverlayViewPort(ptr noundef %48, i32 noundef %37, i32 noundef %39, i32 noundef %sub.i, i32 noundef %sub14.i) #8
  %49 = load ptr, ptr @deviceInfo, align 4
  call void @EnableOverlayPlane(ptr noundef %49) #8
  %50 = load ptr, ptr @deviceInfo, align 4
  call void @EnableRamdacOutput(ptr noundef %50) #8
  br label %sw.epilog

do.end15:                                         ; preds = %lor.lhs.false7.i.do.end15_crit_edge, %lor.lhs.false3.i.do.end15_crit_edge, %lor.lhs.false3.i.do.end15_crit_edge123, %if.end.i99.do.end15_crit_edge, %if.end.i99.do.end15_crit_edge122, %if.end9.do.end15_crit_edge
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %cleanup

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i70 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i70, label %if.then.i.cleanup_crit_edge, label %if.end.i.i72

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i72:                                     ; preds = %if.then.i
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #13, !srcloc !90
  %asmresult.i.i71 = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i72.cleanup_crit_edge

if.end.i.i72.cleanup_crit_edge:                   ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i72
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 4), i32 noundef 4) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 4), i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool27.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool27.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i78:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i77 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i77, label %if.then.i78.cleanup_crit_edge, label %if.end.i.i81

if.then.i78.cleanup_crit_edge:                    ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i81:                                     ; preds = %if.then.i78
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #13, !srcloc !90
  %asmresult.i.i79 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i79)
  %cmp.i1.i80 = icmp eq i32 %asmresult.i.i79, 0
  br i1 %cmp.i1.i80, label %copy_to_user.exit86, label %if.end.i.i81.cleanup_crit_edge

if.end.i.i81.cleanup_crit_edge:                   ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit86:                              ; preds = %if.end.i.i81
  %call.i.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 3), i32 noundef 4) #8
  %call.i1.i.i83 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 3), i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i83)
  %tobool32.not = icmp eq i32 %call.i1.i.i83, 0
  br i1 %tobool32.not, label %copy_to_user.exit86.sw.epilog_crit_edge, label %copy_to_user.exit86.cleanup_crit_edge

copy_to_user.exit86.cleanup_crit_edge:            ; preds = %copy_to_user.exit86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit86.sw.epilog_crit_edge:          ; preds = %copy_to_user.exit86
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i90:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i89 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i89, label %if.then.i90.cleanup_crit_edge, label %if.end.i.i93

if.then.i90.cleanup_crit_edge:                    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i93:                                     ; preds = %if.then.i90
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #13, !srcloc !90
  %asmresult.i.i91 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i91)
  %cmp.i1.i92 = icmp eq i32 %asmresult.i.i91, 0
  br i1 %cmp.i1.i92, label %copy_to_user.exit98, label %if.end.i.i93.cleanup_crit_edge

if.end.i.i93.cleanup_crit_edge:                   ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit98:                              ; preds = %if.end.i.i93
  %call.i.i.i94 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), i32 noundef 4) #8
  %call.i1.i.i95 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef getelementptr inbounds (%struct.device_info_t, ptr @deviceInfo, i32 0, i32 2), i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i95)
  %tobool37.not = icmp eq i32 %call.i1.i.i95, 0
  br i1 %tobool37.not, label %copy_to_user.exit98.sw.epilog_crit_edge, label %copy_to_user.exit98.cleanup_crit_edge

copy_to_user.exit98.cleanup_crit_edge:            ; preds = %copy_to_user.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit98.sw.epilog_crit_edge:          ; preds = %copy_to_user.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %copy_to_user.exit98.sw.epilog_crit_edge, %copy_to_user.exit86.sw.epilog_crit_edge, %copy_to_user.exit.sw.epilog_crit_edge, %kyro_dev_overlay_viewport_set.exit, %kyro_dev_overlay_create.exit, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %copy_to_user.exit98.cleanup_crit_edge, %if.end.i.i93.cleanup_crit_edge, %if.then.i90.cleanup_crit_edge, %copy_to_user.exit86.cleanup_crit_edge, %if.end.i.i81.cleanup_crit_edge, %if.then.i78.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i72.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end22, %do.end15, %if.then11.i.i66, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end22 ], [ -22, %do.end15 ], [ -22, %do.end ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit86.cleanup_crit_edge ], [ -14, %copy_to_user.exit98.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i66 ], [ -14, %if.then.i.cleanup_crit_edge ], [ -14, %if.end.i.i72.cleanup_crit_edge ], [ -14, %if.then.i78.cleanup_crit_edge ], [ -14, %if.end.i.i81.cleanup_crit_edge ], [ -14, %if.then.i90.cleanup_crit_edge ], [ -14, %if.end.i.i93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ol_viewport_set) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ol_create) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ResetOverlayRegisters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CreateOverlaySurface(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SetOverlayBlendMode(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @DisableRamdacOutput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SetOverlayViewPort(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @EnableOverlayPlane(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @EnableRamdacOutput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @StopVTG(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @DisableVGA(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @InitialiseRamdac(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetupVTG(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @StartVTG(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kyrofb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
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
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.20) #8
  %tobool2.not2 = icmp eq ptr %call1, null
  br i1 %tobool2.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

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
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %while.body.while.cond.backedge_crit_edge, label %if.end5

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nopan, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end5
  %call8 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else.while.cond.backedge_crit_edge, label %if.else11

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nomtrr, align 4
  br label %while.cond.backedge

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else15, %if.then14, %if.else.while.cond.backedge_crit_edge, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.20) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

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
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_kyrofb__305_798_kyrofb_init6, !1, !"__initcall__kmod_kyrofb__305_798_kyrofb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 798, i32 1}
!2 = !{ptr @__UNIQUE_ID_author306, !3, !"__UNIQUE_ID_author306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 804, i32 1}
!4 = !{ptr @__UNIQUE_ID_file307, !5, !"__UNIQUE_ID_file307", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 805, i32 1}
!6 = !{ptr @__UNIQUE_ID_license308, !5, !"__UNIQUE_ID_license308", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 653, i32 11}
!9 = !{ptr @kyrofb_pci_driver, !10, !"kyrofb_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 652, i32 26}
!11 = !{ptr @kyrofb_pci_tbl, !12, !"kyrofb_pci_tbl", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 644, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 678, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @kyrofb_probe._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @kyrofb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 738, i32 2}
!21 = !{ptr @kyrofb_probe._entry.4, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @kyrofb_probe._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @kyro_fix, !24, !"kyro_fix", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 40, i32 33}
!25 = !{ptr @deviceInfo, !26, !"deviceInfo", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 79, i32 22}
!27 = distinct !{null, !28, !"nomtrr", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 84, i32 12}
!29 = distinct !{null, !30, !"nopan", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 82, i32 12}
!31 = distinct !{null, !32, !"nowrap", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 83, i32 12}
!33 = !{ptr @kyrofb_ops, !34, !"kyrofb_ops", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 659, i32 28}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 601, i32 4}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @kyrofb_ioctl._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @kyrofb_ioctl._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 616, i32 4}
!42 = !{ptr @kyrofb_ioctl._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kyrofb_ioctl._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 622, i32 4}
!46 = !{ptr @kyrofb_ioctl._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @kyrofb_ioctl._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!50 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!55 = !{ptr @mode_option, !56, !"mode_option", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 81, i32 14}
!57 = !{ptr @kyro_modedb, !58, !"kyro_modedb", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 90, i32 28}
!59 = !{ptr @kyro_var, !60, !"kyro_var", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 47, i32 39}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 406, i32 3}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @kyrofb_check_var._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @kyrofb_check_var._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 569, i32 38}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 572, i32 24}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 574, i32 31}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/kyro/fbdev.c", i32 576, i32 31}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 2152981983, i64 2152982008}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 5477538}
!88 = !{i64 5477735}
!89 = !{i64 2152962968}
!90 = !{i64 2152982664, i64 2152982689}
