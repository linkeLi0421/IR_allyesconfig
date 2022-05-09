; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/imsttfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/imsttfb.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.initvalues = type { i8, i8 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imstt_regvals = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, [3 x i8], [3 x i8] }
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
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.imstt_par = type { %struct.imstt_regvals, ptr, i32, ptr, i32, [16 x i32] }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@imsttfb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @imsttfb_pci_tbl, ptr @imsttfb_probe, ptr @imsttfb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file305 = internal constant [41 x i8] c"imsttfb.file=drivers/video/fbdev/imsttfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [20 x i8] c"imsttfb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_imsttfb__307_1630_imsttfb_init6 = internal global ptr @imsttfb_init, section ".initcall6.init", align 4
@__exitcall_imsttfb_exit = internal global ptr @imsttfb_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imsttfb\00", [24 x i8] zeroinitializer }, align 32
@imsttfb_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4320, i32 37160, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4320, i32 37173, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@imsttfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: OF name %pOFn\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imsttfb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/fbdev/imsttfb.c\00", [34 x i8] zeroinitializer }, align 32
@imsttfb_probe._entry_ptr = internal global ptr @imsttfb_probe._entry, section ".printk_index", align 4
@imsttfb_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013imsttfb: no OF node for pci device\0A\00", [58 x i8] zeroinitializer }, align 32
@imsttfb_probe._entry_ptr.6 = internal global ptr @imsttfb_probe._entry.4, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@imsttfb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013imsttfb: Can't reserve memory region\0A\00", [56 x i8] zeroinitializer }, align 32
@imsttfb_probe._entry_ptr.9 = internal global ptr @imsttfb_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IMS,tt128mb8\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IMS,tt128mb8A\00", [18 x i8] zeroinitializer }, align 32
@imsttfb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016imsttfb: Device 0x%x unknown, contact maintainer.\0A\00", [43 x i8] zeroinitializer }, align 32
@imsttfb_probe._entry_ptr.14 = internal global ptr @imsttfb_probe._entry.12, section ".printk_index", align 4
@ibm_initregs = internal constant { [36 x %struct.initvalues], [56 x i8] } { [36 x %struct.initvalues] [%struct.initvalues { i8 2, i8 33 }, %struct.initvalues { i8 3, i8 0 }, %struct.initvalues { i8 4, i8 0 }, %struct.initvalues { i8 5, i8 0 }, %struct.initvalues { i8 6, i8 2 }, %struct.initvalues { i8 7, i8 0 }, %struct.initvalues { i8 8, i8 1 }, %struct.initvalues { i8 11, i8 0 }, %struct.initvalues { i8 12, i8 1 }, %struct.initvalues { i8 13, i8 0 }, %struct.initvalues { i8 14, i8 0 }, %struct.initvalues { i8 16, i8 5 }, %struct.initvalues { i8 17, i8 0 }, %struct.initvalues { i8 21, i8 8 }, %struct.initvalues { i8 22, i8 79 }, %struct.initvalues { i8 23, i8 0 }, %struct.initvalues { i8 24, i8 0 }, %struct.initvalues { i8 48, i8 0 }, %struct.initvalues { i8 55, i8 1 }, %struct.initvalues { i8 56, i8 -88 }, %struct.initvalues { i8 64, i8 -1 }, %struct.initvalues { i8 65, i8 -1 }, %struct.initvalues { i8 66, i8 -1 }, %struct.initvalues { i8 67, i8 -1 }, %struct.initvalues { i8 68, i8 -1 }, %struct.initvalues { i8 69, i8 -1 }, %struct.initvalues { i8 70, i8 -1 }, %struct.initvalues { i8 71, i8 -1 }, %struct.initvalues { i8 72, i8 -1 }, %struct.initvalues { i8 96, i8 -1 }, %struct.initvalues { i8 97, i8 -1 }, %struct.initvalues { i8 98, i8 -1 }, %struct.initvalues { i8 112, i8 1 }, %struct.initvalues { i8 113, i8 69 }, %struct.initvalues { i8 114, i8 0 }, %struct.initvalues { i8 120, i8 0 }], [56 x i8] zeroinitializer }, align 32
@tvp_initregs = internal constant { [30 x %struct.initvalues], [36 x i8] } { [30 x %struct.initvalues] [%struct.initvalues { i8 6, i8 0 }, %struct.initvalues { i8 7, i8 -28 }, %struct.initvalues { i8 15, i8 6 }, %struct.initvalues { i8 24, i8 -128 }, %struct.initvalues { i8 25, i8 77 }, %struct.initvalues { i8 26, i8 5 }, %struct.initvalues { i8 28, i8 0 }, %struct.initvalues { i8 29, i8 0 }, %struct.initvalues { i8 30, i8 8 }, %struct.initvalues { i8 48, i8 -1 }, %struct.initvalues { i8 49, i8 -1 }, %struct.initvalues { i8 50, i8 -1 }, %struct.initvalues { i8 51, i8 -1 }, %struct.initvalues { i8 52, i8 -1 }, %struct.initvalues { i8 53, i8 -1 }, %struct.initvalues { i8 54, i8 -1 }, %struct.initvalues { i8 55, i8 -1 }, %struct.initvalues { i8 56, i8 0 }, %struct.initvalues { i8 44, i8 0 }, %struct.initvalues { i8 45, i8 -64 }, %struct.initvalues { i8 45, i8 -43 }, %struct.initvalues { i8 45, i8 -22 }, %struct.initvalues { i8 44, i8 0 }, %struct.initvalues { i8 46, i8 -71 }, %struct.initvalues { i8 46, i8 58 }, %struct.initvalues { i8 46, i8 -79 }, %struct.initvalues { i8 44, i8 0 }, %struct.initvalues { i8 47, i8 -63 }, %struct.initvalues { i8 47, i8 61 }, %struct.initvalues { i8 47, i8 -13 }], [36 x i8] zeroinitializer }, align 32
@init_imstt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"imsttfb: %ux%ux%u not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_imstt\00", [21 x i8] zeroinitializer }, align 32
@init_imstt._entry_ptr = internal global ptr @init_imstt._entry, section ".printk_index", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IMS TT (%s)\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TVP\00", [28 x i8] zeroinitializer }, align 32
@imsttfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imsttfb_check_var, ptr @imsttfb_set_par, ptr @imsttfb_setcolreg, ptr null, ptr @imsttfb_blank, ptr @imsttfb_pan_display, ptr @imsttfb_fillrect, ptr @imsttfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @imsttfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_imstt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016fb%d: %s frame buffer; %uMB vram; chip version %u\0A\00", [43 x i8] zeroinitializer }, align 32
@init_imstt._entry_ptr.22 = internal global ptr @init_imstt._entry.20, section ".printk_index", align 4
@tvp_reg_init_2 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 512, i16 2, i16 6, i16 38, i16 40, i16 3, i16 22, i16 406, i16 407, i16 406, i8 -20, i8 42, i8 -13, [3 x i8] c"<;9", [3 x i8] c"\F3\F3\F3" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_6 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 640, i16 4, i16 9, i16 49, i16 54, i16 3, i16 42, i16 522, i16 525, i16 522, i8 -17, i8 46, i8 -78, [3 x i8] c"998", [3 x i8] c"\F3\F3\F3" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_12 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 800, i16 5, i16 14, i16 64, i16 66, i16 3, i16 24, i16 624, i16 625, i16 624, i8 -10, i8 46, i8 -14, [3 x i8] c":98", [3 x i8] c"\F3\F3\F3" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_13 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 832, i16 4, i16 17, i16 69, i16 72, i16 3, i16 42, i16 666, i16 667, i16 0, i8 -2, i8 62, i8 -15, [3 x i8] c"988", [3 x i8] c"\F3\F3\F2" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_17 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 1024, i16 6, i16 528, i16 592, i16 83, i16 4099, i16 33, i16 801, i16 804, i16 0, i8 -4, i8 58, i8 -15, [3 x i8] c"988", [3 x i8] c"\F3\F3\F2" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_18 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 1152, i16 9, i16 17, i16 89, i16 91, i16 3, i16 49, i16 919, i16 922, i16 0, i8 -3, i8 58, i8 -15, [3 x i8] c"988", [3 x i8] c"\F3\F3\F2" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_19 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 1280, i16 9, i16 22, i16 102, i16 105, i16 3, i16 39, i16 999, i16 1000, i16 999, i8 -9, i8 54, i8 -16, [3 x i8] c"888", [3 x i8] c"\F3\F2\F1" }, [32 x i8] zeroinitializer }, align 32
@tvp_reg_init_20 = internal global { %struct.imstt_regvals, [32 x i8] } { %struct.imstt_regvals { i32 1280, i16 9, i16 24, i16 104, i16 106, i16 3, i16 41, i16 1065, i16 1066, i16 0, i8 -16, i8 45, i8 -16, [3 x i8] c"888", [3 x i8] c"\F3\F2\F1" }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"font:\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inverse\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 37160, i64 37173]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 640, i64 832, i64 1024, i64 1152, i64 1280, i64 1600]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 32, i64 512, i64 640, i64 800, i64 832, i64 1024, i64 1152, i64 1280]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 5526529, i64 5526530, i64 5526531, i64 5526532, i64 5526533, i64 5526534]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"imsttfb_pci_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1329, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1330, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"imsttfb_pci_tbl\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1319, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1476, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1478, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1490, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1498, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1499, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1506, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"ibm_initregs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 226, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"tvp_initregs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 273, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1420, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1425, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1425, i32 60 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1425, i32 68 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"imsttfb_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1336, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1462, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"tvp_reg_init_2\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 339, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"tvp_reg_init_6\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 346, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"tvp_reg_init_12\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 353, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"tvp_reg_init_13\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 360, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"tvp_reg_init_17\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 367, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"tvp_reg_init_18\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 374, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"tvp_reg_init_19\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 381, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"tvp_reg_init_20\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 388, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 156, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1564, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1565, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [33 x i8] c"../drivers/video/fbdev/imsttfb.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1575, i32 33 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_imsttfb_exit, ptr @__initcall__kmod_imsttfb__307_1630_imsttfb_init6, ptr @imsttfb_exit, ptr @imsttfb_probe._entry, ptr @imsttfb_probe._entry.12, ptr @imsttfb_probe._entry.4, ptr @imsttfb_probe._entry.7, ptr @imsttfb_probe._entry_ptr, ptr @imsttfb_probe._entry_ptr.14, ptr @imsttfb_probe._entry_ptr.6, ptr @imsttfb_probe._entry_ptr.9, ptr @init_imstt._entry, ptr @init_imstt._entry.20, ptr @init_imstt._entry_ptr, ptr @init_imstt._entry_ptr.22, ptr @imsttfb_pci_driver, ptr @.str, ptr @imsttfb_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ibm_initregs, ptr @tvp_initregs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @imsttfb_ops, ptr @.str.21, ptr @tvp_reg_init_2, ptr @tvp_reg_init_6, ptr @tvp_reg_init_12, ptr @tvp_reg_init_13, ptr @tvp_reg_init_17, ptr @tvp_reg_init_18, ptr @tvp_reg_init_19, ptr @tvp_reg_init_20, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibm_initregs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_initregs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_imstt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imsttfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_imstt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp_reg_init_20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imsttfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @imsttfb_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imsttfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #12
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @imsttfb_setup(ptr noundef %2) #15
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @imsttfb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imsttfb_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.do.end4_crit_edge, label %pci_device_to_OF_node.exit

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

pci_device_to_OF_node.exit:                       ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %pci_device_to_OF_node.exit.do.end4_crit_edge, label %do.end

pci_device_to_OF_node.exit.do.end4_crit_edge:     ; preds = %pci_device_to_OF_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %pci_device_to_OF_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #16
  br label %if.end

do.end4:                                          ; preds = %pci_device_to_OF_node.exit.do.end4_crit_edge, %entry.do.end4_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  %cond.i131 = phi ptr [ null, %do.end4 ], [ %1, %do.end ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call7 = tail call ptr @framebuffer_alloc(i32 noundef 112, ptr noundef %dev) #12
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %par11 = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 30
  %2 = ptrtoint ptr %par11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par11, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %sub = sub i32 1, %5
  %add = add i32 %sub, %7
  %cond = select i1 %cmp, i32 0, i32 %add
  %call20 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %cond, ptr noundef nonnull @.str, i32 noundef 0) #12
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16
  tail call void @framebuffer_release(ptr noundef nonnull %call7) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.end40 [
    i16 -28376, label %sw.bb
    i16 -28363, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end28
  %ramdac = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %ramdac to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ramdac, align 4
  %call29 = tail call zeroext i1 @of_node_name_eq(ptr noundef %cond.i131, ptr noundef nonnull @.str.10) #12
  br i1 %call29, label %sw.bb.sw.epilog.sink.split_crit_edge, label %lor.lhs.false

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

lor.lhs.false:                                    ; preds = %sw.bb
  %call31 = tail call zeroext i1 @of_node_name_eq(ptr noundef %cond.i131, ptr noundef nonnull @.str.11) #12
  br i1 %call31, label %lor.lhs.false.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false.sw.epilog.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb36:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %ramdac37 = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 4
  br label %sw.epilog.sink.split

do.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %9 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv) #16
  br label %error

sw.epilog.sink.split:                             ; preds = %sw.bb36, %lor.lhs.false.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %ramdac.sink = phi ptr [ %ramdac37, %sw.bb36 ], [ %ramdac, %lor.lhs.false.sw.epilog.sink.split_crit_edge ], [ %ramdac, %sw.bb.sw.epilog.sink.split_crit_edge ]
  %12 = ptrtoint ptr %ramdac.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %ramdac.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.lhs.false.sw.epilog_crit_edge
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %smem_start, align 4
  %ramdac45 = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %ramdac45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ramdac45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp46 = icmp eq i32 %15, 0
  %cond48 = select i1 %cmp46, i32 4194304, i32 8388608
  %call49 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond48) #12
  %16 = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 25
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call49, ptr %16, align 4
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %sw.epilog.error_crit_edge, label %if.end52

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end52:                                         ; preds = %sw.epilog
  %add53 = add i32 %5, 8388608
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 10
  %18 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add53, ptr %mmio_start, align 4
  %call56 = tail call ptr @ioremap(i32 noundef %add53, i32 noundef 4096) #12
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %dc_regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call56, ptr %dc_regs, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %if.end52.error_crit_edge, label %if.end60

if.end52.error_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end60:                                         ; preds = %if.end52
  %add61 = add i32 %5, 8650752
  %cmap_regs_phys = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %cmap_regs_phys to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add61, ptr %cmap_regs_phys, align 4
  %call63 = tail call ptr @ioremap(i32 noundef %add61, i32 noundef 4096) #12
  %cmap_regs = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %cmap_regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call63, ptr %cmap_regs, align 4
  %tobool65.not = icmp eq ptr %call63, null
  br i1 %tobool65.not, label %if.end60.error_crit_edge, label %if.end67

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end67:                                         ; preds = %if.end60
  %palette = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 5
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 27
  %22 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %palette, ptr %pseudo_palette, align 4
  %23 = ptrtoint ptr %par11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %par11, align 4
  %dc_regs.i = getelementptr inbounds %struct.imstt_par, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dc_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dc_regs.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %26, i32 37
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %ramdac.i = getelementptr inbounds %struct.imstt_par, ptr %24, i32 0, i32 4
  %28 = ptrtoint ptr %ramdac.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ramdac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  %30 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i125 = icmp eq i32 %30, 0
  %cond.i126 = select i1 %tobool.not.i125, i32 2097152, i32 4194304
  %.sink.i = select i1 %cmp.i, i32 %cond.i126, i32 8388608
  %31 = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i, ptr %31, align 4
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %16, align 4
  %fix4.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %34, i32 %.sink.i
  %cmp6214.i = icmp ult ptr %34, %add.ptr.i
  br i1 %cmp6214.i, label %if.end67.while.body.i_crit_edge, label %if.end67.while.end.i_crit_edge

if.end67.while.end.i_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end67.while.body.i_crit_edge:                  ; preds = %if.end67
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end67.while.body.i_crit_edge
  %ip.0215.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %34, %if.end67.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %ip.0215.i, i32 1
  %35 = ptrtoint ptr %ip.0215.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ip.0215.i, align 4
  %cmp6.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp6.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end67.while.end.i_crit_edge
  %36 = ptrtoint ptr %dc_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dc_regs.i, align 4
  %add.ptr.i199.i = getelementptr i32, ptr %37, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199.i) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %39 = ptrtoint ptr %dc_regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc_regs.i, align 4
  %41 = and i32 %38, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i200.i = getelementptr i32, ptr %40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i, i32 %41) #12, !srcloc !102
  %42 = ptrtoint ptr %dc_regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dc_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i201.i = getelementptr i32, ptr %43, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201.i, i32 0) #12, !srcloc !102
  %44 = ptrtoint ptr %ramdac.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ramdac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp13.i = icmp eq i32 %45, 0
  %cmap_regs.i = getelementptr inbounds %struct.imstt_par, ptr %24, i32 0, i32 3
  br i1 %cmp13.i, label %if.then14.i, label %while.end.i.for.body27.i_crit_edge

while.end.i.for.body27.i_crit_edge:               ; preds = %while.end.i
  br label %for.body27.i

if.then14.i:                                      ; preds = %while.end.i
  %46 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %47, i32 8
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %arrayidx.i, align 1
  %49 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %49, i32 20
  %50 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx16.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then14.i
  %i.0217.i = phi i32 [ 0, %if.then14.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr [36 x %struct.initvalues], ptr @ibm_initregs, i32 0, i32 %i.0217.i
  %51 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx18.i, align 1
  %53 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx20.i = getelementptr i8, ptr %54, i32 16
  %55 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %arrayidx20.i, align 1
  %value.i = getelementptr [36 x %struct.initvalues], ptr @ibm_initregs, i32 0, i32 %i.0217.i, i32 1
  %56 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %value.i, align 1
  %58 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %58, i32 24
  %59 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %arrayidx23.i, align 1
  %inc.i = add nuw nsw i32 %i.0217.i, 1
  %exitcond219.not.i = icmp eq i32 %inc.i, 36
  br i1 %exitcond219.not.i, label %for.body.i.if.end39.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end39.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %while.end.i.for.body27.i_crit_edge
  %i.1216.i = phi i32 [ %inc37.i, %for.body27.i.for.body27.i_crit_edge ], [ 0, %while.end.i.for.body27.i_crit_edge ]
  %arrayidx28.i = getelementptr [30 x %struct.initvalues], ptr @tvp_initregs, i32 0, i32 %i.1216.i
  %60 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx28.i, align 1
  %62 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmap_regs.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %61, ptr %63, align 1
  %value33.i = getelementptr [30 x %struct.initvalues], ptr @tvp_initregs, i32 0, i32 %i.1216.i, i32 1
  %65 = ptrtoint ptr %value33.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %value33.i, align 1
  %67 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx35.i = getelementptr i8, ptr %67, i32 40
  %68 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %66, ptr %arrayidx35.i, align 1
  %inc37.i = add nuw nsw i32 %i.1216.i, 1
  %exitcond.not.i = icmp eq i32 %inc37.i, 30
  br i1 %exitcond.not.i, label %for.body27.i.if.end39.i_crit_edge, label %for.body27.i.for.body27.i_crit_edge

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27.i

for.body27.i.if.end39.i_crit_edge:                ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.body27.i.if.end39.i_crit_edge, %for.body.i.if.end39.i_crit_edge
  %var.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 2
  %69 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 640, ptr %xres_virtual.i, align 4
  %70 = ptrtoint ptr %var.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 640, ptr %var.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 3
  %71 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 480, ptr %yres_virtual.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %yres.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 480, ptr %yres.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 6
  %73 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %bits_per_pixel.i, align 4
  %74 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 307200, i32 %75)
  %cmp53.i = icmp ult i32 %75, 307200
  br i1 %cmp53.i, label %if.end39.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end39.i.do.end.i_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end39.i
  %76 = ptrtoint ptr %ramdac.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ramdac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i128 = icmp eq i32 %77, 0
  br i1 %cmp.i128, label %lor.lhs.false.i.for.cond.i.i.i_crit_edge, label %compute_imstt_regvals.exit.thread

lor.lhs.false.i.for.cond.i.i.i_crit_edge:         ; preds = %lor.lhs.false.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %if.end.i.i.i, %lor.lhs.false.i.for.cond.i.i.i_crit_edge
  %clk_m.0.i.i.i = phi i32 [ %clk_m.1.i.i.i, %if.end.i.i.i ], [ 0, %lor.lhs.false.i.for.cond.i.i.i_crit_edge ]
  %clk_n.0.i.i.i = phi i32 [ %clk_n.1.i.i.i, %if.end.i.i.i ], [ 0, %lor.lhs.false.i.for.cond.i.i.i_crit_edge ]
  %stage.0.i.i.i = phi i32 [ %stage.0.i.i.i.be, %if.end.i.i.i ], [ 0, %lor.lhs.false.i.for.cond.i.i.i_crit_edge ]
  %spilled.0.i.i.i = phi i32 [ %spilled.1.i.i.i, %if.end.i.i.i ], [ 0, %lor.lhs.false.i.for.cond.i.i.i_crit_edge ]
  %78 = zext i32 %stage.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %stage.0.i.i.i, label %for.cond.i.i.i.sw.epilog.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
  ]

for.cond.i.i.i.sw.epilog.i.i.i_crit_edge:         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i.i.i = add i32 %clk_m.0.i.i.i, 1
  br label %sw.epilog.i.i.i

sw.bb1.i.i.i:                                     ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc2.i.i.i = add i32 %clk_n.0.i.i.i, 1
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i, %for.cond.i.i.i.sw.epilog.i.i.i_crit_edge
  %clk_m.1.i.i.i = phi i32 [ %clk_m.0.i.i.i, %for.cond.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %clk_m.0.i.i.i, %sw.bb1.i.i.i ], [ %inc.i.i.i, %sw.bb.i.i.i ]
  %clk_n.1.i.i.i = phi i32 [ %clk_n.0.i.i.i, %for.cond.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %inc2.i.i.i, %sw.bb1.i.i.i ], [ %clk_n.0.i.i.i, %sw.bb.i.i.i ]
  %79 = mul i32 %clk_m.1.i.i.i, 20
  %mul.i.i.i = add i32 %79, 20
  %add3.i.i.i = add i32 %clk_n.1.i.i.i, 1
  %div.i.i.i = udiv i32 %mul.i.i.i, %add3.i.i.i
  %cmp.i.i.i = icmp eq i32 %div.i.i.i, 30
  br i1 %cmp.i.i.i, label %compute_imstt_regvals.exit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %div.i.i.i)
  %cmp4.i.i.i = icmp ugt i32 %div.i.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spilled.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %spilled.0.i.i.i, 0
  %spec.select = select i1 %tobool.not.i.i.i, i32 %stage.0.i.i.i, i32 0
  %not.tobool.not.i.i.i = xor i1 %tobool.not.i.i.i, true
  %narrow = select i1 %cmp4.i.i.i, i1 true, i1 %not.tobool.not.i.i.i
  %spilled.1.i.i.i = zext i1 %narrow to i32
  %stage.0.i.i.i.be = select i1 %cmp4.i.i.i, i32 1, i32 %spec.select
  br label %for.cond.i.i.i

compute_imstt_regvals.exit.thread:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = call ptr @memcpy(ptr %24, ptr @tvp_reg_init_6, i32 32)
  br label %if.end69.i

compute_imstt_regvals.exit:                       ; preds = %sw.epilog.i.i.i
  %conv.i.i.i = trunc i32 %clk_m.1.i.i.i to i8
  %pclk_m.i.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 10
  %81 = ptrtoint ptr %pclk_m.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i.i.i, ptr %pclk_m.i.i.i, align 2
  %conv10.i.i.i = trunc i32 %clk_n.1.i.i.i to i8
  %pclk_n.i.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 11
  %82 = ptrtoint ptr %pclk_n.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv10.i.i.i, ptr %pclk_n.i.i.i, align 1
  %pclk_p.i.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 12
  %83 = ptrtoint ptr %pclk_p.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %pclk_p.i.i.i, align 4
  %hes7.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 1
  %84 = ptrtoint ptr %hes7.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 8, ptr %hes7.i.i, align 4
  %heb9.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 2
  %85 = ptrtoint ptr %heb9.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 18, ptr %heb9.i.i, align 2
  %hsb.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 3
  %86 = ptrtoint ptr %hsb.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 98, ptr %hsb.i.i, align 4
  %ht.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 4
  %87 = ptrtoint ptr %ht.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 108, ptr %ht.i.i, align 2
  %ves.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 5
  %88 = ptrtoint ptr %ves.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 3, ptr %ves.i.i, align 4
  %veb18.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 6
  %89 = ptrtoint ptr %veb18.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 42, ptr %veb18.i.i, align 2
  %vsb.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 7
  %90 = ptrtoint ptr %vsb.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 522, ptr %vsb.i.i, align 4
  %vt.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 8
  %91 = ptrtoint ptr %vt.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 524, ptr %vt.i.i, align 2
  %vil.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 9
  %92 = ptrtoint ptr %vil.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 522, ptr %vil.i.i, align 4
  %93 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 640, ptr %24, align 4
  %tobool59.not.i = icmp eq ptr %24, null
  br i1 %tobool59.not.i, label %compute_imstt_regvals.exit.do.end.i_crit_edge, label %compute_imstt_regvals.exit.if.end69.i_crit_edge

compute_imstt_regvals.exit.if.end69.i_crit_edge:  ; preds = %compute_imstt_regvals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i

compute_imstt_regvals.exit.do.end.i_crit_edge:    ; preds = %compute_imstt_regvals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %compute_imstt_regvals.exit.do.end.i_crit_edge, %if.end39.i.do.end.i_crit_edge
  %94 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %var.i, align 4
  %96 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %yres.i, align 4
  %98 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bits_per_pixel.i, align 4
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %95, i32 noundef %97, i32 noundef %99) #16
  tail call void @framebuffer_release(ptr noundef %call7) #12
  br label %init_imstt.exit

if.end69.i:                                       ; preds = %compute_imstt_regvals.exit.if.end69.i_crit_edge, %compute_imstt_regvals.exit.thread
  %100 = ptrtoint ptr %ramdac.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ramdac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp72.i = icmp eq i32 %101, 0
  %cond73.i = select i1 %cmp72.i, ptr @.str.18, ptr @.str.19
  %call74.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %fix4.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond73.i) #12
  %mmio_len.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 11
  %102 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 4096, ptr %mmio_len.i, align 4
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 12
  %103 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 14, ptr %accel.i, align 4
  %type.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 3
  %104 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %type.i, align 4
  %105 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %106)
  %cmp80.i = icmp eq i32 %106, 8
  %cond81.i = select i1 %cmp80.i, i32 3, i32 4
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 5
  %107 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %cond81.i, ptr %visual.i, align 4
  %108 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %var.i, align 4
  %shr87.i = lshr i32 %106, 3
  %mul88.i = mul i32 %109, %shr87.i
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 9
  %110 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul88.i, ptr %line_length.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 6
  %111 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 8, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 7
  %112 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 7, i32 8
  %113 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %ywrapstep.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 16
  %114 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %accel_flags.i, align 4
  %length.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 9, i32 1
  %115 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %116)
  %cmp95.i = icmp eq i32 %116, 6
  %117 = ptrtoint ptr %ramdac.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ramdac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i.i = icmp eq i32 %118, 0
  %119 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cmap_regs.i, align 4
  br i1 %cmp95.i, label %if.then96.i, label %if.else97.i

if.then96.i:                                      ; preds = %if.end69.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr i8, ptr %120, i32 20
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx.i.i, align 1
  %122 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %123, i32 16
  %124 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 12, ptr %arrayidx2.i.i, align 1
  br label %if.end98.i

if.else.i.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 24, ptr %120, align 1
  br label %if.end98.i

if.else97.i:                                      ; preds = %if.end69.i
  br i1 %cmp.i.i, label %if.then.i207.i, label %if.else.i208.i

if.then.i207.i:                                   ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i205.i = getelementptr i8, ptr %120, i32 20
  %126 = ptrtoint ptr %arrayidx.i205.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %arrayidx.i205.i, align 1
  %127 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx2.i206.i = getelementptr i8, ptr %128, i32 16
  %129 = ptrtoint ptr %arrayidx2.i206.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 12, ptr %arrayidx2.i206.i, align 1
  br label %if.end98.i

if.else.i208.i:                                   ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 24, ptr %120, align 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else.i208.i, %if.then.i207.i, %if.else.i.i, %if.then.i.i
  %.sink15.i209.sink.i = phi i32 [ 40, %if.else.i.i ], [ 24, %if.then.i.i ], [ 40, %if.else.i208.i ], [ 24, %if.then.i207.i ]
  %.sink.i210.sink.i = phi i8 [ 69, %if.else.i.i ], [ 3, %if.then.i.i ], [ 68, %if.else.i208.i ], [ 1, %if.then.i207.i ]
  %131 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx8.i211.i = getelementptr i8, ptr %132, i32 %.sink15.i209.sink.i
  %133 = ptrtoint ptr %arrayidx8.i211.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.sink.i210.sink.i, ptr %arrayidx8.i211.i, align 1
  %134 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bits_per_pixel.i, align 4
  tail call fastcc void @set_imstt_regvals(ptr noundef %call7, i32 noundef %135) #12
  %pclk_m.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 10
  %136 = ptrtoint ptr %pclk_m.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pclk_m.i.i, align 2
  %pclk_n.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 11
  %138 = ptrtoint ptr %pclk_n.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %pclk_n.i.i, align 1
  %pclk_p.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %24, i32 0, i32 12
  %140 = ptrtoint ptr %pclk_p.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %pclk_p.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i.i = icmp eq i8 %141, 0
  %conv4.i.i = zext i8 %141 to i32
  %mul6.i.i = shl nuw nsw i32 %conv4.i.i, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 %mul6.i.i
  %conv2.i.i = zext i8 %139 to i32
  %add5.i.i = add nuw nsw i32 %conv2.i.i, 1
  %conv.i.i = zext i8 %137 to i32
  %142 = mul nuw nsw i32 %conv.i.i, 20
  %mul.i.i = add nuw nsw i32 %142, 20
  %mul7.i.i = mul nuw nsw i32 %cond.i.i, %add5.i.i
  %div.i.i = udiv i32 %mul.i.i, %mul7.i.i
  %div.i = udiv i32 1000000, %div.i.i
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 6, i32 17
  %143 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %div.i, ptr %pixclock.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 20
  %144 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @imsttfb_ops, ptr %fbops.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 2
  %145 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 8960, ptr %flags.i, align 4
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 12
  %call103.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 0, i32 noundef 0) #12
  %call104.i = tail call i32 @register_framebuffer(ptr noundef %call7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.i = icmp slt i32 %call104.i, 0
  br i1 %cmp105.i, label %if.then106.i, label %if.end107.i

if.then106.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @framebuffer_release(ptr noundef %call7) #12
  br label %init_imstt.exit

if.end107.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %dc_regs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dc_regs.i, align 4
  %add.ptr.i212.i = getelementptr i32, ptr %147, i32 36
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212.i) #12, !srcloc !99
  %149 = lshr i32 %148, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %shr111.i = and i32 %149, 15
  %node.i = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 1
  %150 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %node.i, align 4
  %152 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %31, align 4
  %shr121.i = lshr i32 %153, 20
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %151, ptr noundef %fix4.i, i32 noundef %shr121.i, i32 noundef %shr111.i) #16
  br label %init_imstt.exit

init_imstt.exit:                                  ; preds = %if.end107.i, %if.then106.i, %do.end.i
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %154 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7, ptr %driver_data.i.i, align 4
  br label %cleanup

error:                                            ; preds = %if.end60.error_crit_edge, %if.end52.error_crit_edge, %sw.epilog.error_crit_edge, %do.end40
  %ret.0 = phi i32 [ -19, %do.end40 ], [ -12, %if.end60.error_crit_edge ], [ -12, %if.end52.error_crit_edge ], [ -12, %sw.epilog.error_crit_edge ]
  %dc_regs68 = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 1
  %155 = ptrtoint ptr %dc_regs68 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dc_regs68, align 4
  %tobool69.not = icmp eq ptr %156, null
  br i1 %tobool69.not, label %error.if.end72_crit_edge, label %if.then70

error.if.end72_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then70:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %156) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %error.if.end72_crit_edge
  %157 = getelementptr inbounds %struct.fb_info, ptr %call7, i32 0, i32 25
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %tobool73.not = icmp eq ptr %159, null
  br i1 %tobool73.not, label %if.end72.if.end75_crit_edge, label %if.then74

if.end72.if.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %159) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72.if.end75_crit_edge
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %cond) #12
  tail call void @framebuffer_release(ptr noundef nonnull %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %init_imstt.exit, %do.end25, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end75 ], [ 0, %init_imstt.exit ], [ -19, %do.end25 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imsttfb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  tail call void @unregister_framebuffer(ptr noundef %1) #12
  %cmap_regs = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %cmap_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmap_regs, align 4
  tail call void @iounmap(ptr noundef %9) #12
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dc_regs, align 4
  tail call void @iounmap(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @iounmap(ptr noundef %14) #12
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smem_start, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %cond) #12
  tail call void @framebuffer_release(ptr noundef %1) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @compute_imstt_regvals(ptr noundef %par, i32 noundef %xres, i32 noundef %yres) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ramdac = getelementptr inbounds %struct.imstt_par, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %ramdac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ramdac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = zext i32 %xres to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %xres, label %if.then.return_crit_edge [
    i32 640, label %if.then.sw.epilog.i_crit_edge
    i32 832, label %sw.bb2.i
    i32 1024, label %sw.bb3.i
    i32 1152, label %sw.bb4.i
    i32 1280, label %sw.bb5.i
    i32 1600, label %sw.bb6.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %yres)
  %cmp.i = icmp eq i32 %yres, 960
  %cond.i = select i1 %cmp.i, i32 126, i32 135
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %if.then.sw.epilog.i_crit_edge
  %MHz.0.i = phi i32 [ 200, %sw.bb6.i ], [ %cond.i, %sw.bb5.i ], [ 101, %sw.bb4.i ], [ 80, %sw.bb3.i ], [ 57, %sw.bb2.i ], [ 30, %if.then.sw.epilog.i_crit_edge ]
  %hes.0.i = phi i16 [ 24, %sw.bb6.i ], [ 18, %sw.bb5.i ], [ 18, %sw.bb4.i ], [ 10, %sw.bb3.i ], [ 5, %sw.bb2.i ], [ 8, %if.then.sw.epilog.i_crit_edge ]
  %heb.0.i = phi i16 [ 64, %sw.bb6.i ], [ 47, %sw.bb5.i ], [ 34, %sw.bb4.i ], [ 28, %sw.bb3.i ], [ 32, %sw.bb2.i ], [ 18, %if.then.sw.epilog.i_crit_edge ]
  %veb.0.i = phi i16 [ 42, %sw.bb6.i ], [ 41, %sw.bb5.i ], [ 49, %sw.bb4.i ], [ 32, %sw.bb3.i ], [ 40, %sw.bb2.i ], [ 42, %if.then.sw.epilog.i_crit_edge ]
  %htp.0.i = phi i16 [ 4, %sw.bb6.i ], [ 4, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 8, %sw.bb2.i ], [ 10, %if.then.sw.epilog.i_crit_edge ]
  %vtp.0.i = phi i16 [ 3, %sw.bb6.i ], [ 1, %sw.bb5.i ], [ 3, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 2, %if.then.sw.epilog.i_crit_edge ]
  br label %for.cond.i.i.outer

for.cond.i.i.outer:                               ; preds = %for.cond.i.i.outer.backedge, %sw.epilog.i
  %clk_m.0.i.i.ph = phi i32 [ 0, %sw.epilog.i ], [ %clk_m.1.i.i, %for.cond.i.i.outer.backedge ]
  %clk_n.0.i.i.ph = phi i32 [ 0, %sw.epilog.i ], [ %clk_n.1.i.i, %for.cond.i.i.outer.backedge ]
  %stage.0.i.i.ph = phi i32 [ 0, %sw.epilog.i ], [ %stage.0.i.i.ph.be, %for.cond.i.i.outer.backedge ]
  %tobool.not.i.i.ph = phi i1 [ true, %sw.epilog.i ], [ false, %for.cond.i.i.outer.backedge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.else.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.outer
  %clk_m.0.i.i = phi i32 [ %clk_m.1.i.i, %if.else.i.i.for.cond.i.i_crit_edge ], [ %clk_m.0.i.i.ph, %for.cond.i.i.outer ]
  %clk_n.0.i.i = phi i32 [ %clk_n.1.i.i, %if.else.i.i.for.cond.i.i_crit_edge ], [ %clk_n.0.i.i.ph, %for.cond.i.i.outer ]
  %tobool.not.i.i = phi i1 [ true, %if.else.i.i.for.cond.i.i_crit_edge ], [ %tobool.not.i.i.ph, %for.cond.i.i.outer ]
  %3 = zext i32 %stage.0.i.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %stage.0.i.i.ph, label %for.cond.i.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

for.cond.i.i.sw.epilog.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i.i = add i32 %clk_m.0.i.i, 1
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc2.i.i = add i32 %clk_n.0.i.i, 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i, %for.cond.i.i.sw.epilog.i.i_crit_edge
  %clk_m.1.i.i = phi i32 [ %clk_m.0.i.i, %for.cond.i.i.sw.epilog.i.i_crit_edge ], [ %clk_m.0.i.i, %sw.bb1.i.i ], [ %inc.i.i, %sw.bb.i.i ]
  %clk_n.1.i.i = phi i32 [ %clk_n.0.i.i, %for.cond.i.i.sw.epilog.i.i_crit_edge ], [ %inc2.i.i, %sw.bb1.i.i ], [ %clk_n.0.i.i, %sw.bb.i.i ]
  %4 = mul i32 %clk_m.1.i.i, 20
  %mul.i.i = add i32 %4, 20
  %add3.i.i = add i32 %clk_n.1.i.i, 1
  %div.i.i = udiv i32 %mul.i.i, %add3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %MHz.0.i)
  %cmp.i.i = icmp eq i32 %div.i.i, %MHz.0.i
  br i1 %cmp.i.i, label %setclkMHz.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %MHz.0.i)
  %cmp4.i.i = icmp ugt i32 %div.i.i, %MHz.0.i
  br i1 %cmp4.i.i, label %if.end.i.i.for.cond.i.i.outer.backedge_crit_edge, label %if.else.i.i

if.end.i.i.for.cond.i.i.outer.backedge_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.outer.backedge

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool.not.i.i, label %if.else.i.i.for.cond.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.for.cond.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %MHz.0.i)
  %cmp6.i.i = icmp ult i32 %div.i.i, %MHz.0.i
  %spec.select.i.i = select i1 %cmp6.i.i, i32 0, i32 %stage.0.i.i.ph
  br label %for.cond.i.i.outer.backedge

for.cond.i.i.outer.backedge:                      ; preds = %land.lhs.true.i.i, %if.end.i.i.for.cond.i.i.outer.backedge_crit_edge
  %stage.0.i.i.ph.be = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i ], [ 1, %if.end.i.i.for.cond.i.i.outer.backedge_crit_edge ]
  br label %for.cond.i.i.outer

setclkMHz.exit.i:                                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = trunc i32 %clk_m.1.i.i to i8
  %pclk_m.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 10
  %5 = ptrtoint ptr %pclk_m.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i.i, ptr %pclk_m.i.i, align 2
  %conv10.i.i = trunc i32 %clk_n.1.i.i to i8
  %pclk_n.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 11
  %6 = ptrtoint ptr %pclk_n.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10.i.i, ptr %pclk_n.i.i, align 1
  %pclk_p.i.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 12
  %7 = ptrtoint ptr %pclk_p.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pclk_p.i.i, align 4
  %hes7.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 1
  %8 = ptrtoint ptr %hes7.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %hes.0.i, ptr %hes7.i, align 4
  %heb9.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 2
  %9 = ptrtoint ptr %heb9.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %heb.0.i, ptr %heb9.i, align 2
  %10 = lshr i32 %xres, 3
  %11 = trunc i32 %10 to i16
  %conv12.i = add i16 %heb.0.i, %11
  %hsb.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 3
  %12 = ptrtoint ptr %hsb.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12.i, ptr %hsb.i, align 4
  %add15.i = add i16 %htp.0.i, %conv12.i
  %ht.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 4
  %13 = ptrtoint ptr %ht.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %add15.i, ptr %ht.i, align 2
  %ves.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 5
  %14 = ptrtoint ptr %ves.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3, ptr %ves.i, align 4
  %veb18.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 6
  %15 = ptrtoint ptr %veb18.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %veb.0.i, ptr %veb18.i, align 2
  %16 = trunc i32 %yres to i16
  %conv22.i = add i16 %veb.0.i, %16
  %vsb.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 7
  %17 = ptrtoint ptr %vsb.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv22.i, ptr %vsb.i, align 4
  %add25.i = add i16 %vtp.0.i, %conv22.i
  %vt.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 8
  %18 = ptrtoint ptr %vt.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add25.i, ptr %vt.i, align 2
  %vil.i = getelementptr inbounds %struct.imstt_regvals, ptr %par, i32 0, i32 9
  %19 = ptrtoint ptr %vil.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv22.i, ptr %vil.i, align 4
  %20 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xres, ptr %par, align 4
  br label %return

if.else:                                          ; preds = %entry
  %21 = zext i32 %xres to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %xres, label %if.else.return_crit_edge [
    i32 512, label %if.else.sw.epilog.i13_crit_edge
    i32 640, label %sw.bb1.i
    i32 800, label %sw.bb2.i6
    i32 832, label %sw.bb3.i7
    i32 1024, label %sw.bb4.i8
    i32 1152, label %sw.bb5.i9
    i32 1280, label %sw.bb6.i12
  ]

if.else.sw.epilog.i13_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i13

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i13

sw.bb2.i6:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i13

sw.bb3.i7:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i13

sw.bb4.i8:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i13

sw.bb5.i9:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i13

sw.bb6.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %yres)
  %cmp.i10 = icmp eq i32 %yres, 960
  %cond.i11 = select i1 %cmp.i10, ptr @tvp_reg_init_19, ptr @tvp_reg_init_20
  br label %sw.epilog.i13

sw.epilog.i13:                                    ; preds = %sw.bb6.i12, %sw.bb5.i9, %sw.bb4.i8, %sw.bb3.i7, %sw.bb2.i6, %sw.bb1.i, %if.else.sw.epilog.i13_crit_edge
  %init.0.i = phi ptr [ %cond.i11, %sw.bb6.i12 ], [ @tvp_reg_init_18, %sw.bb5.i9 ], [ @tvp_reg_init_17, %sw.bb4.i8 ], [ @tvp_reg_init_13, %sw.bb3.i7 ], [ @tvp_reg_init_12, %sw.bb2.i6 ], [ @tvp_reg_init_6, %sw.bb1.i ], [ @tvp_reg_init_2, %if.else.sw.epilog.i13_crit_edge ]
  %22 = call ptr @memcpy(ptr %par, ptr %init.0.i, i32 32)
  br label %return

return:                                           ; preds = %sw.epilog.i13, %if.else.return_crit_edge, %setclkMHz.exit.i, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %par, %setclkMHz.exit.i ], [ null, %if.then.return_crit_edge ], [ %init.0.i, %sw.epilog.i13 ], [ null, %if.else.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_imstt_regvals(ptr nocapture noundef readonly %info, i32 noundef %bpp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ramdac = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ramdac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ramdac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %bpp, 3
  %4 = trunc i32 %shr.i to i8
  %conv.i = add i8 %4, 2
  %cmap_regs.i = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 20
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i, align 1
  %8 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %8, i32 16
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %arrayidx3.i, align 1
  %pclk_m.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %pclk_m.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pclk_m.i, align 2
  %12 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %12, i32 24
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx5.i, align 1
  %14 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %14, i32 16
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 33, ptr %arrayidx7.i, align 1
  %pclk_n.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %pclk_n.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pclk_n.i, align 1
  %18 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %18, i32 24
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %arrayidx9.i, align 1
  %20 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %20, i32 16
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 34, ptr %arrayidx11.i, align 1
  %pclk_p.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %pclk_p.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pclk_p.i, align 4
  %24 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %24, i32 24
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %arrayidx13.i, align 1
  %26 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx15.i = getelementptr i8, ptr %26, i32 16
  %27 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 35, ptr %arrayidx15.i, align 1
  %28 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %28, i32 24
  %29 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx17.i, align 1
  %30 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx19.i = getelementptr i8, ptr %30, i32 16
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %arrayidx19.i, align 1
  %32 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %32, i32 24
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %arrayidx21.i, align 1
  %.pre = add i32 %bpp, -8
  %.pre139 = tail call i32 @llvm.fshl.i32(i32 %.pre, i32 %.pre, i32 29)
  br label %if.end

if.else:                                          ; preds = %entry
  %34 = add i32 %bpp, -8
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 29) #12
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %35, label %sw.bb.i [
    i32 3, label %sw.bb15.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mlc2.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 13
  %lckl_p3.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 14
  br label %set_imstt_regvals_tvp.exit

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7.i108 = getelementptr %struct.imstt_regvals, ptr %1, i32 0, i32 13, i32 1
  %arrayidx9.i109 = getelementptr %struct.imstt_regvals, ptr %1, i32 0, i32 14, i32 1
  br label %set_imstt_regvals_tvp.exit

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12.i = getelementptr %struct.imstt_regvals, ptr %1, i32 0, i32 13, i32 2
  %arrayidx14.i = getelementptr %struct.imstt_regvals, ptr %1, i32 0, i32 14, i32 2
  br label %set_imstt_regvals_tvp.exit

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17.i110 = getelementptr %struct.imstt_regvals, ptr %1, i32 0, i32 13, i32 2
  %arrayidx19.i111 = getelementptr %struct.imstt_regvals, ptr %1, i32 0, i32 14, i32 2
  br label %set_imstt_regvals_tvp.exit

set_imstt_regvals_tvp.exit:                       ; preds = %sw.bb15.i, %sw.bb10.i, %sw.bb5.i, %sw.bb.i
  %tcc.0.i = phi i8 [ -128, %sw.bb.i ], [ 94, %sw.bb10.i ], [ 68, %sw.bb5.i ], [ 70, %sw.bb15.i ]
  %mxc.0.i = phi i8 [ 77, %sw.bb.i ], [ 93, %sw.bb10.i ], [ 85, %sw.bb5.i ], [ 93, %sw.bb15.i ]
  %lckl_n.0.i = phi i8 [ -63, %sw.bb.i ], [ -15, %sw.bb10.i ], [ -31, %sw.bb5.i ], [ -15, %sw.bb15.i ]
  %mlc.0.in.i = phi ptr [ %mlc2.i, %sw.bb.i ], [ %arrayidx12.i, %sw.bb10.i ], [ %arrayidx7.i108, %sw.bb5.i ], [ %arrayidx17.i110, %sw.bb15.i ]
  %lckl_p.0.in.i = phi ptr [ %lckl_p3.i, %sw.bb.i ], [ %arrayidx14.i, %sw.bb10.i ], [ %arrayidx9.i109, %sw.bb5.i ], [ %arrayidx19.i111, %sw.bb15.i ]
  %37 = ptrtoint ptr %lckl_p.0.in.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %lckl_p.0.i = load i8, ptr %lckl_p.0.in.i, align 1
  %38 = ptrtoint ptr %mlc.0.in.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %mlc.0.i = load i8, ptr %mlc.0.in.i, align 1
  %cmap_regs.i112 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %cmap_regs.i112 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmap_regs.i112, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 44, ptr %40, align 1
  %42 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx22.i = getelementptr i8, ptr %42, i32 40
  %43 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx22.i, align 1
  %44 = load ptr, ptr %cmap_regs.i112, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 45, ptr %44, align 1
  %pclk_m.i113 = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 10
  %46 = ptrtoint ptr %pclk_m.i113 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pclk_m.i113, align 2
  %48 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx26.i = getelementptr i8, ptr %48, i32 40
  %49 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %arrayidx26.i, align 1
  %50 = load ptr, ptr %cmap_regs.i112, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 45, ptr %50, align 1
  %pclk_n.i114 = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %pclk_n.i114 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pclk_n.i114, align 1
  %54 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx30.i = getelementptr i8, ptr %54, i32 40
  %55 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %53, ptr %arrayidx30.i, align 1
  %56 = load ptr, ptr %cmap_regs.i112, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 45, ptr %56, align 1
  %pclk_p.i115 = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 12
  %58 = ptrtoint ptr %pclk_p.i115 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pclk_p.i115, align 4
  %60 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx34.i = getelementptr i8, ptr %60, i32 40
  %61 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %59, ptr %arrayidx34.i, align 1
  %62 = load ptr, ptr %cmap_regs.i112, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 24, ptr %62, align 1
  %64 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx38.i = getelementptr i8, ptr %64, i32 40
  %65 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %tcc.0.i, ptr %arrayidx38.i, align 1
  %66 = load ptr, ptr %cmap_regs.i112, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 25, ptr %66, align 1
  %68 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx42.i = getelementptr i8, ptr %68, i32 40
  %69 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %mxc.0.i, ptr %arrayidx42.i, align 1
  %70 = load ptr, ptr %cmap_regs.i112, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 30, ptr %70, align 1
  %72 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx46.i = getelementptr i8, ptr %72, i32 40
  %73 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 8, ptr %arrayidx46.i, align 1
  %74 = load ptr, ptr %cmap_regs.i112, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 44, ptr %74, align 1
  %76 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx50.i = getelementptr i8, ptr %76, i32 40
  %77 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx50.i, align 1
  %78 = load ptr, ptr %cmap_regs.i112, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 47, ptr %78, align 1
  %80 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx54.i = getelementptr i8, ptr %80, i32 40
  %81 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %lckl_n.0.i, ptr %arrayidx54.i, align 1
  %82 = load ptr, ptr %cmap_regs.i112, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 44, ptr %82, align 1
  %84 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx58.i = getelementptr i8, ptr %84, i32 40
  %85 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 21, ptr %arrayidx58.i, align 1
  %86 = load ptr, ptr %cmap_regs.i112, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 57, ptr %86, align 1
  %88 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx62.i = getelementptr i8, ptr %88, i32 40
  %89 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %mlc.0.i, ptr %arrayidx62.i, align 1
  %90 = load ptr, ptr %cmap_regs.i112, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 44, ptr %90, align 1
  %92 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx66.i = getelementptr i8, ptr %92, i32 40
  %93 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 42, ptr %arrayidx66.i, align 1
  %94 = load ptr, ptr %cmap_regs.i112, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 47, ptr %94, align 1
  %96 = load ptr, ptr %cmap_regs.i112, align 4
  %arrayidx70.i = getelementptr i8, ptr %96, i32 40
  %97 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %lckl_p.0.i, ptr %arrayidx70.i, align 1
  br label %if.end

if.end:                                           ; preds = %set_imstt_regvals_tvp.exit, %if.then
  %.pre-phi140 = phi i32 [ %35, %set_imstt_regvals_tvp.exit ], [ %.pre139, %if.then ]
  %98 = zext i32 %.pre-phi140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %.pre-phi140, label %sw.bb [
    i32 3, label %sw.bb11
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %1, align 4
  %shr = lshr i32 %100, 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %1, align 4
  %shr6 = lshr i32 %102, 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %1, align 4
  %shr10 = lshr i32 %104, 2
  %sub = sub i32 %104, %shr10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb4, %sw.bb
  %ctl.0 = phi i32 [ 6065, %sw.bb ], [ 6073, %sw.bb7 ], [ 6067, %sw.bb4 ], [ 6069, %sw.bb11 ]
  %pitch.0 = phi i32 [ %shr, %sw.bb ], [ %sub, %sw.bb7 ], [ %shr6, %sw.bb4 ], [ %106, %sw.bb11 ]
  %byteswap.0 = phi i32 [ 0, %sw.bb ], [ 512, %sw.bb7 ], [ 256, %sw.bb4 ], [ 768, %sw.bb11 ]
  %107 = ptrtoint ptr %ramdac to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ramdac, align 4
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 1
  %109 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dc_regs, align 4
  %hes = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 1
  %111 = ptrtoint ptr %hes to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %hes, align 4
  %conv = zext i16 %112 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %113 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %add.ptr.i = getelementptr i32, ptr %110, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %113) #12, !srcloc !102
  %114 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dc_regs, align 4
  %heb = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 2
  %116 = ptrtoint ptr %heb to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %heb, align 2
  %conv19 = zext i16 %117 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %118 = tail call i32 @llvm.bswap.i32(i32 %conv19) #12
  %add.ptr.i116 = getelementptr i32, ptr %115, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %118) #12, !srcloc !102
  %119 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dc_regs, align 4
  %hsb = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 3
  %121 = ptrtoint ptr %hsb to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %hsb, align 4
  %conv21 = zext i16 %122 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %123 = tail call i32 @llvm.bswap.i32(i32 %conv21) #12
  %add.ptr.i117 = getelementptr i32, ptr %120, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %123) #12, !srcloc !102
  %124 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dc_regs, align 4
  %ht = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 4
  %126 = ptrtoint ptr %ht to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %ht, align 2
  %conv23 = zext i16 %127 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %128 = tail call i32 @llvm.bswap.i32(i32 %conv23) #12
  %add.ptr.i118 = getelementptr i32, ptr %125, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %128) #12, !srcloc !102
  %129 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dc_regs, align 4
  %ves = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 5
  %131 = ptrtoint ptr %ves to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %ves, align 4
  %conv25 = zext i16 %132 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %133 = tail call i32 @llvm.bswap.i32(i32 %conv25) #12
  %add.ptr.i119 = getelementptr i32, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %133) #12, !srcloc !102
  %134 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dc_regs, align 4
  %veb = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 6
  %136 = ptrtoint ptr %veb to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %veb, align 2
  %conv27 = zext i16 %137 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %138 = tail call i32 @llvm.bswap.i32(i32 %conv27) #12
  %add.ptr.i120 = getelementptr i32, ptr %135, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %138) #12, !srcloc !102
  %139 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dc_regs, align 4
  %vsb = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 7
  %141 = ptrtoint ptr %vsb to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %vsb, align 4
  %conv29 = zext i16 %142 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %143 = tail call i32 @llvm.bswap.i32(i32 %conv29) #12
  %add.ptr.i121 = getelementptr i32, ptr %140, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %143) #12, !srcloc !102
  %144 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dc_regs, align 4
  %vt = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 8
  %146 = ptrtoint ptr %vt to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %vt, align 2
  %conv31 = zext i16 %147 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %148 = tail call i32 @llvm.bswap.i32(i32 %conv31) #12
  %add.ptr.i122 = getelementptr i32, ptr %145, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %148) #12, !srcloc !102
  %149 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dc_regs, align 4
  %vil = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 9
  %151 = ptrtoint ptr %vil to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %vil, align 4
  %conv33 = zext i16 %152 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %153 = tail call i32 @llvm.bswap.i32(i32 %conv33) #12
  %add.ptr.i123 = getelementptr i32, ptr %150, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %153) #12, !srcloc !102
  %154 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i124 = getelementptr i32, ptr %155, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 16777216) #12, !srcloc !102
  %156 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i125 = getelementptr i32, ptr %157, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 16777216) #12, !srcloc !102
  %158 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i126 = getelementptr i32, ptr %159, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 67108864) #12, !srcloc !102
  %160 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i127 = getelementptr i32, ptr %161, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 16777216) #12, !srcloc !102
  %162 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i128 = getelementptr i32, ptr %163, i32 31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 -2146893824) #12, !srcloc !102
  %164 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i129 = getelementptr i32, ptr %165, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 285212672) #12, !srcloc !102
  %166 = ptrtoint ptr %ramdac to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ramdac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp41 = icmp eq i32 %167, 0
  %168 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %add.ptr.i130 = getelementptr i32, ptr %169, i32 26
  br i1 %cmp41, label %if.then43, label %if.else47

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 65536) #12, !srcloc !102
  %170 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i131 = getelementptr i32, ptr %171, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 -16777216) #12, !srcloc !102
  %172 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i132 = getelementptr i32, ptr %173, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 1929379840) #12, !srcloc !102
  br label %if.end51

if.else47:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 131072) #12, !srcloc !102
  %174 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i134 = getelementptr i32, ptr %175, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 -16711680) #12, !srcloc !102
  %176 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i135 = getelementptr i32, ptr %177, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 50331648) #12, !srcloc !102
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp14 = icmp eq i32 %108, 1
  %sub16 = add nsw i32 %ctl.0, -48
  %spec.select = select i1 %cmp14, i32 %sub16, i32 %ctl.0
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %178 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %179)
  %cond = icmp eq i32 %179, 2097152
  %not.cond = xor i1 %cond, true
  %shr54 = zext i1 %not.cond to i32
  %pitch.1 = lshr i32 %pitch.0, %shr54
  %scr.0.v = select i1 %cond, i32 1437, i32 86237
  %scr.0 = or i32 %scr.0.v, %byteswap.0
  %180 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %182 = tail call i32 @llvm.bswap.i32(i32 %scr.0) #12
  %add.ptr.i136 = getelementptr i32, ptr %181, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %182) #12, !srcloc !102
  %183 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %185 = tail call i32 @llvm.bswap.i32(i32 %pitch.1) #12
  %add.ptr.i137 = getelementptr i32, ptr %184, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %185) #12, !srcloc !102
  %186 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %188 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  %add.ptr.i138 = getelementptr i32, ptr %187, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %188) #12, !srcloc !102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imsttfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = add i32 %1, -8
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp9 = icmp ult i32 %5, %7
  br i1 %cmp9, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false10

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %8 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11 = icmp ult i32 %9, %11
  br i1 %cmp11, label %lor.lhs.false10.return_crit_edge, label %lor.lhs.false12

lor.lhs.false10.return_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %12 = ptrtoint ptr %nonstd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nonstd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false13, label %lor.lhs.false12.return_crit_edge

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false13:                                  ; preds = %lor.lhs.false12
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %14 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vmode, align 4
  %and = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not = icmp eq i32 %and, 0
  br i1 %cmp14.not, label %if.end, label %lor.lhs.false13.return_crit_edge

lor.lhs.false13.return_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false13
  %shr = lshr i32 %1, 3
  %mul = mul i32 %7, %shr
  %mul18 = mul i32 %mul, %11
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul18, i32 %17)
  %cmp19 = icmp ugt i32 %mul18, %17
  br i1 %cmp19, label %if.end.return_crit_edge, label %lor.lhs.false20

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false20:                                  ; preds = %if.end
  %mul23 = mul i32 %5, %shr
  %mul26 = mul i32 %mul23, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26, i32 %17)
  %cmp29 = icmp ugt i32 %mul26, %17
  br i1 %cmp29, label %lor.lhs.false20.return_crit_edge, label %if.end31

lor.lhs.false20.return_crit_edge:                 ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end31:                                         ; preds = %lor.lhs.false20
  %18 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %if.end31.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb43
    i32 2, label %sw.bb70
    i32 3, label %sw.bb87
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %19 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %21 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %green, align 4
  %length36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %length36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %length36, align 4
  br label %sw.epilog.sink.split

sw.bb43:                                          ; preds = %if.end31
  %green44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %length45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp46.not = icmp eq i32 %24, 6
  br i1 %cmp46.not, label %if.end50.thread, label %if.then58

if.end50.thread:                                  ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  %length52210 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  br label %if.end61

if.then58:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  %red48 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %25 = ptrtoint ptr %red48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %red48, align 4
  %length52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %length52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %length52, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end50.thread
  %length52210.sink = phi ptr [ %length52210, %if.end50.thread ], [ %green44, %if.then58 ]
  %green44.sink = phi ptr [ %green44, %if.end50.thread ], [ %length45, %if.then58 ]
  %27 = ptrtoint ptr %length52210.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %length52210.sink, align 4
  %28 = ptrtoint ptr %green44.sink to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %green44.sink, align 4
  br label %sw.epilog.sink.split

sw.bb70:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %red71 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %29 = ptrtoint ptr %red71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %red71, align 4
  %length74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %length74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %length74, align 4
  %green75 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %31 = ptrtoint ptr %green75 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %green75, align 4
  %length78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %length78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %length78, align 4
  br label %sw.epilog.sink.split

sw.bb87:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %red88 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %33 = ptrtoint ptr %red88 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %red88, align 4
  %length91 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %length91 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %length91, align 4
  %green92 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %35 = ptrtoint ptr %green92 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %green92, align 4
  %length95 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %length95 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %length95, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb87, %sw.bb70, %if.end61, %sw.bb
  %.sink212 = phi i32 [ 8, %sw.bb87 ], [ 8, %sw.bb70 ], [ 5, %if.end61 ], [ 8, %sw.bb ]
  %.sink211 = phi i32 [ 24, %sw.bb87 ], [ 0, %sw.bb70 ], [ 0, %if.end61 ], [ 0, %sw.bb ]
  %.sink = phi i32 [ 8, %sw.bb87 ], [ 0, %sw.bb70 ], [ 0, %if.end61 ], [ 0, %sw.bb ]
  %blue96 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %37 = ptrtoint ptr %blue96 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue96, align 4
  %length99 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %length99 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink212, ptr %length99, align 4
  %transp100 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %39 = ptrtoint ptr %transp100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink211, ptr %transp100, align 4
  %length103 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %40 = ptrtoint ptr %length103 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %length103, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end31.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp106 = icmp eq i32 %11, %9
  br i1 %cmp106, label %if.then107, label %sw.epilog.if.end121_crit_edge

sw.epilog.if.end121_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then107:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %smem_len, align 4
  %sub = shl i32 %42, 3
  %shl = add i32 %sub, -131072
  %div = udiv i32 %shl, %1
  %div112 = udiv i32 %div, %5
  %43 = tail call i32 @llvm.umax.i32(i32 %div112, i32 %9)
  %44 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %yres_virtual, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then107, %sw.epilog.if.end121_crit_edge
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %msb_right, align 4
  %msb_right124 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %46 = ptrtoint ptr %msb_right124 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %msb_right124, align 4
  %msb_right126 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %47 = ptrtoint ptr %msb_right126 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %msb_right126, align 4
  %msb_right128 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %msb_right128 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %msb_right128, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %50 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %width, align 4
  %51 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %vmode, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %52 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %right_margin, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %53 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16, ptr %left_margin, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %54 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %lower_margin, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %55 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %upper_margin, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %56 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %vsync_len, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %57 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %hsync_len, align 4
  br label %return

return:                                           ; preds = %if.end121, %lor.lhs.false20.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false13.return_crit_edge, %lor.lhs.false12.return_crit_edge, %lor.lhs.false10.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end121 ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false13.return_crit_edge ], [ -22, %lor.lhs.false12.return_crit_edge ], [ -22, %lor.lhs.false10.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %lor.lhs.false20.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imsttfb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %call = tail call fastcc ptr @compute_imstt_regvals(ptr noundef %1, i32 noundef %3, i32 noundef %5)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp eq i32 %7, 6
  %ramdac.i = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ramdac.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ramdac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %cmap_regs.i = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmap_regs.i, align 4
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %11, i32 20
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %14, i32 16
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %arrayidx2.i, align 1
  br label %if.end5

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 24, ptr %11, align 1
  br label %if.end5

if.else:                                          ; preds = %if.end
  br i1 %cmp.i, label %if.then.i23, label %if.else.i24

if.then.i23:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i21 = getelementptr i8, ptr %11, i32 20
  %17 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.i21, align 1
  %18 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx2.i22 = getelementptr i8, ptr %19, i32 16
  %20 = ptrtoint ptr %arrayidx2.i22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %arrayidx2.i22, align 1
  br label %if.end5

if.else.i24:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 24, ptr %11, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.else.i24, %if.then.i23, %if.else.i, %if.then.i
  %.sink15.i25.sink = phi i32 [ 40, %if.else.i ], [ 24, %if.then.i ], [ 40, %if.else.i24 ], [ 24, %if.then.i23 ]
  %.sink.i26.sink = phi i8 [ 69, %if.else.i ], [ 3, %if.then.i ], [ 68, %if.else.i24 ], [ 1, %if.then.i23 ]
  %22 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmap_regs.i, align 4
  %arrayidx8.i27 = getelementptr i8, ptr %23, i32 %.sink15.i25.sink
  %24 = ptrtoint ptr %arrayidx8.i27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i26.sink, ptr %arrayidx8.i27, align 1
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel, align 4
  tail call fastcc void @set_imstt_regvals(ptr noundef %info, i32 noundef %26)
  %pclk_m.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %pclk_m.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pclk_m.i, align 2
  %pclk_n.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %pclk_n.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pclk_n.i, align 1
  %pclk_p.i = getelementptr inbounds %struct.imstt_regvals, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %pclk_p.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pclk_p.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  %conv4.i = zext i8 %32 to i32
  %mul6.i = shl nuw nsw i32 %conv4.i, 1
  %cond.i = select i1 %tobool.not.i, i32 1, i32 %mul6.i
  %conv2.i = zext i8 %30 to i32
  %add5.i = add nuw nsw i32 %conv2.i, 1
  %conv.i = zext i8 %28 to i32
  %33 = mul nuw nsw i32 %conv.i, 20
  %mul.i = add nuw nsw i32 %33, 20
  %mul7.i = mul nuw nsw i32 %cond.i, %add5.i
  %div.i = udiv i32 %mul.i, %mul7.i
  %div = udiv i32 1000000, %div.i
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %34 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %pixclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imsttfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %red, 8
  %shr2 = lshr i32 %green, 8
  %shr3 = lshr i32 %blue, 8
  %conv = trunc i32 %regno to i8
  %cmap_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cmap_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmap_regs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %5, align 1
  %conv4 = trunc i32 %shr to i8
  %7 = load ptr, ptr %cmap_regs, align 4
  %arrayidx6 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %arrayidx6, align 1
  %conv7 = trunc i32 %shr2 to i8
  %9 = load ptr, ptr %cmap_regs, align 4
  %arrayidx9 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %arrayidx9, align 1
  %conv10 = trunc i32 %shr3 to i8
  %11 = load ptr, ptr %cmap_regs, align 4
  %arrayidx12 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp13 = icmp ult i32 %regno, 16
  br i1 %cmp13, label %if.then15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %if.then15.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb23
    i32 32, label %sw.bb30
  ]

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp18 = icmp eq i32 %15, 5
  %cond = select i1 %cmp18, i32 10, i32 11
  %shl = shl nuw nsw i32 %regno, %cond
  %shl20 = shl nuw nsw i32 %regno, 5
  %or = or i32 %shl20, %regno
  %or21 = or i32 %or, %shl
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %shl24 = shl nuw nsw i32 %regno, 16
  %shl25 = shl nuw nsw i32 %regno, 8
  %or26 = or i32 %shl25, %regno
  %or27 = or i32 %or26, %shl24
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %shl31 = shl nuw nsw i32 %regno, 8
  %or32 = or i32 %shl31, %regno
  %shl33 = shl i32 %or32, 16
  %or34 = or i32 %shl33, %or32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb30, %sw.bb23, %sw.bb
  %or34.sink = phi i32 [ %or34, %sw.bb30 ], [ %or27, %sw.bb23 ], [ %or21, %sw.bb ]
  %arrayidx36 = getelementptr %struct.imstt_par, ptr %1, i32 0, i32 5, i32 %regno
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or34.sink, ptr %arrayidx36, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imsttfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cmp = icmp sgt i32 %blank, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %blank, label %if.then.if.end56_crit_edge [
    i32 1, label %if.then.sw.bb_crit_edge
    i32 4, label %if.then.sw.bb_crit_edge90
    i32 2, label %sw.bb24
    i32 3, label %sw.bb26
  ]

if.then.sw.bb_crit_edge90:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.if.end56_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge90
  %and = and i32 %5, -897
  %ramdac = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ramdac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ramdac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %sw.bb.if.end56_crit_edge

sw.bb.if.end56_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %cmap_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cmap_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmap_regs, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 20
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %12 = load ptr, ptr %cmap_regs, align 4
  %arrayidx5 = getelementptr i8, ptr %12, i32 16
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 113, ptr %arrayidx5, align 1
  %14 = load ptr, ptr %cmap_regs, align 4
  %arrayidx7 = getelementptr i8, ptr %14, i32 24
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 85, ptr %arrayidx7, align 1
  %16 = load ptr, ptr %cmap_regs, align 4
  %arrayidx9 = getelementptr i8, ptr %16, i32 16
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 112, ptr %arrayidx9, align 1
  %18 = load ptr, ptr %cmap_regs, align 4
  %arrayidx11 = getelementptr i8, ptr %18, i32 24
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 17, ptr %arrayidx11, align 1
  %20 = load ptr, ptr %cmap_regs, align 4
  %arrayidx13 = getelementptr i8, ptr %20, i32 16
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %arrayidx13, align 1
  %22 = load ptr, ptr %cmap_regs, align 4
  %arrayidx15 = getelementptr i8, ptr %22, i32 24
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 15, ptr %arrayidx15, align 1
  %24 = load ptr, ptr %cmap_regs, align 4
  %arrayidx17 = getelementptr i8, ptr %24, i32 16
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %arrayidx17, align 1
  %26 = load ptr, ptr %cmap_regs, align 4
  %arrayidx19 = getelementptr i8, ptr %26, i32 24
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 31, ptr %arrayidx19, align 1
  %28 = load ptr, ptr %cmap_regs, align 4
  %arrayidx21 = getelementptr i8, ptr %28, i32 16
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx21, align 1
  %30 = load ptr, ptr %cmap_regs, align 4
  %arrayidx23 = getelementptr i8, ptr %30, i32 24
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -64, ptr %arrayidx23, align 1
  br label %if.end56

sw.bb24:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and25 = and i32 %5, -33
  br label %if.end56

sw.bb26:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and27 = and i32 %5, -17
  br label %if.end56

if.else:                                          ; preds = %entry
  %ramdac28 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %ramdac28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ramdac28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp29 = icmp eq i32 %33, 0
  br i1 %cmp29, label %if.then30, label %if.else53

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %5, 6064
  %cmap_regs31 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %cmap_regs31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx32 = getelementptr i8, ptr %35, i32 20
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx32, align 1
  %37 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx34 = getelementptr i8, ptr %37, i32 16
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %arrayidx34, align 1
  %39 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx36 = getelementptr i8, ptr %39, i32 24
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx36, align 1
  %41 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx38 = getelementptr i8, ptr %41, i32 16
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %arrayidx38, align 1
  %43 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx40 = getelementptr i8, ptr %43, i32 24
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx40, align 1
  %45 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx42 = getelementptr i8, ptr %45, i32 16
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %arrayidx42, align 1
  %47 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx44 = getelementptr i8, ptr %47, i32 24
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx44, align 1
  %49 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx46 = getelementptr i8, ptr %49, i32 16
  %50 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 112, ptr %arrayidx46, align 1
  %51 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx48 = getelementptr i8, ptr %51, i32 24
  %52 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %arrayidx48, align 1
  %53 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx50 = getelementptr i8, ptr %53, i32 16
  %54 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 113, ptr %arrayidx50, align 1
  %55 = load ptr, ptr %cmap_regs31, align 4
  %arrayidx52 = getelementptr i8, ptr %55, i32 24
  %56 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 69, ptr %arrayidx52, align 1
  br label %if.end56

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or54 = or i32 %5, 6016
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then30, %sw.bb26, %sw.bb24, %if.then3, %sw.bb.if.end56_crit_edge, %if.then.if.end56_crit_edge
  %ctrl.0 = phi i32 [ %5, %if.then.if.end56_crit_edge ], [ %and27, %sw.bb26 ], [ %and25, %sw.bb24 ], [ %and, %if.then3 ], [ %and, %sw.bb.if.end56_crit_edge ], [ %or, %if.then30 ], [ %or54, %if.else53 ]
  %57 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #12
  %add.ptr.i89 = getelementptr i32, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %59) #12, !srcloc !102
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imsttfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %0 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xoffset, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var1, align 4
  %add = add i32 %3, %1
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %add4 = add i32 %9, %7
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %11)
  %cmp6 = icmp ugt i32 %add4, %11
  br i1 %cmp6, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %xoffset9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %12 = ptrtoint ptr %xoffset9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %xoffset9, align 4
  %13 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yoffset, align 4
  %yoffset12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %15 = ptrtoint ptr %yoffset12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %yoffset12, align 4
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %16 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par1.i, align 4
  %18 = load i32, ptr %yoffset, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %19 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %line_length.i, align 4
  %shr.i = lshr i32 %20, 3
  %mul.i = mul i32 %shr.i, %18
  %21 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xoffset, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel.i, align 4
  %shr3.i = lshr i32 %24, 3
  %mul4.i = mul i32 %shr3.i, %22
  %shr5.i = lshr i32 %mul4.i, 3
  %add.i = add i32 %shr5.i, %mul.i
  %dc_regs.i = getelementptr inbounds %struct.imstt_par, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %dc_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dc_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %add.i) #12
  %add.ptr.i.i = getelementptr i32, ptr %26, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #12, !srcloc !102
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imsttfb_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %2 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color, align 4
  %shl = shl i32 %3, 8
  %or = or i32 %shl, %3
  %shl2 = shl i32 %or, 16
  %or3 = or i32 %shl2, %or
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %5, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line_length, align 4
  %dy4 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %8 = ptrtoint ptr %dy4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy4, align 4
  %mul = mul i32 %9, %7
  %10 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rect, align 4
  %mul6 = mul i32 %11, %shr
  %height7 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %12 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height7, align 4
  %dec = add i32 %13, -1
  %width8 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %14 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width8, align 4
  %mul9 = mul i32 %15, %shr
  %dec10 = add i32 %mul9, -1
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %16 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 1
  br i1 %cmp, label %entry.while.cond_crit_edge, label %entry.while.cond34_crit_edge

entry.while.cond34_crit_edge:                     ; preds = %entry
  br label %while.cond34

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %18 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i = getelementptr i32, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %tobool.not = icmp sgt i32 %20, -1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_regs, align 4
  %add = add i32 %mul6, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  %add.ptr.i106 = getelementptr i32, ptr %22, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %23) #12, !srcloc !102
  %24 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc_regs, align 4
  %shl13 = shl i32 %dec, 16
  %or14 = or i32 %dec10, %shl13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %or14) #12
  %add.ptr.i107 = getelementptr i32, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %26) #12, !srcloc !102
  %27 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  %add.ptr.i108 = getelementptr i32, ptr %28, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %29) #12, !srcloc !102
  %30 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i109 = getelementptr i32, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 -1) #12, !srcloc !102
  %32 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i110 = getelementptr i32, ptr %33, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 -1) #12, !srcloc !102
  %34 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %or3) #12
  %add.ptr.i111 = getelementptr i32, ptr %35, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %36) #12, !srcloc !102
  %37 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i112 = getelementptr i32, ptr %38, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 1074266112) #12, !srcloc !102
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %while.end
  %39 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i113 = getelementptr i32, ptr %40, i32 36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %tobool24.not = icmp sgt i32 %41, -1
  br i1 %tobool24.not, label %while.cond20.while.cond27_crit_edge, label %while.cond20.while.cond20_crit_edge

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond20

while.cond20.while.cond27_crit_edge:              ; preds = %while.cond20
  br label %while.cond27

while.cond27:                                     ; preds = %while.cond27.while.cond27_crit_edge, %while.cond20.while.cond27_crit_edge
  %42 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i114 = getelementptr i32, ptr %43, i32 36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %45 = and i32 %44, 1073741824
  %tobool31.not = icmp eq i32 %45, 0
  br i1 %tobool31.not, label %while.cond27.if.end_crit_edge, label %while.cond27.while.cond27_crit_edge

while.cond27.while.cond27_crit_edge:              ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond27

while.cond27.if.end_crit_edge:                    ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond34:                                     ; preds = %while.cond34.while.cond34_crit_edge, %entry.while.cond34_crit_edge
  %46 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i115 = getelementptr i32, ptr %47, i32 36
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %tobool38.not = icmp sgt i32 %48, -1
  br i1 %tobool38.not, label %while.end40, label %while.cond34.while.cond34_crit_edge

while.cond34.while.cond34_crit_edge:              ; preds = %while.cond34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond34

while.end40:                                      ; preds = %while.cond34
  %49 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dc_regs, align 4
  %add42 = add i32 %mul6, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %51 = tail call i32 @llvm.bswap.i32(i32 %add42) #12
  %add.ptr.i116 = getelementptr i32, ptr %50, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %51) #12, !srcloc !102
  %52 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #12, !srcloc !102
  %54 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dc_regs, align 4
  %shl46 = shl i32 %dec, 16
  %or47 = or i32 %dec10, %shl46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %56 = tail call i32 @llvm.bswap.i32(i32 %or47) #12
  %add.ptr.i117 = getelementptr i32, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %56) #12, !srcloc !102
  %57 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  %add.ptr.i118 = getelementptr i32, ptr %58, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %59) #12, !srcloc !102
  %60 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i119 = getelementptr i32, ptr %61, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %59) #12, !srcloc !102
  %62 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i120 = getelementptr i32, ptr %63, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 83887104) #12, !srcloc !102
  br label %while.cond51

while.cond51:                                     ; preds = %while.cond51.while.cond51_crit_edge, %while.end40
  %64 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i121 = getelementptr i32, ptr %65, i32 36
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %tobool55.not = icmp sgt i32 %66, -1
  br i1 %tobool55.not, label %while.cond51.while.cond58_crit_edge, label %while.cond51.while.cond51_crit_edge

while.cond51.while.cond51_crit_edge:              ; preds = %while.cond51
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond51

while.cond51.while.cond58_crit_edge:              ; preds = %while.cond51
  br label %while.cond58

while.cond58:                                     ; preds = %while.cond58.while.cond58_crit_edge, %while.cond51.while.cond58_crit_edge
  %67 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i122 = getelementptr i32, ptr %68, i32 36
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %70 = and i32 %69, 1073741824
  %tobool62.not = icmp eq i32 %70, 0
  br i1 %tobool62.not, label %while.cond58.if.end_crit_edge, label %while.cond58.while.cond58_crit_edge

while.cond58.while.cond58_crit_edge:              ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond58

while.cond58.if.end_crit_edge:                    ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %while.cond58.if.end_crit_edge, %while.cond27.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imsttfb_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %3, 3
  %sx2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %4 = ptrtoint ptr %sx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sx2, align 4
  %mul = mul i32 %5, %shr
  %sy3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %6 = ptrtoint ptr %sy3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sy3, align 4
  %8 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %area, align 4
  %mul5 = mul i32 %9, %shr
  %dy6 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %10 = ptrtoint ptr %dy6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dy6, align 4
  %height7 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %12 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height7, align 4
  %dec = add i32 %13, -1
  %width8 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %14 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width8, align 4
  %mul9 = mul i32 %15, %shr
  %dec10 = add i32 %mul9, -1
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %16 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %line_length, align 4
  %shl = shl i32 %17, 16
  %shl11 = shl i32 %dec, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp = icmp ult i32 %7, %11
  %sub = sub i32 0, %17
  %and = and i32 %sub, 65535
  %dp_octl.0 = select i1 %cmp, i32 %and, i32 %17
  %add = select i1 %cmp, i32 %dec, i32 0
  %sy.0 = add i32 %add, %7
  %dy.0 = add i32 %add, %11
  %sp.0 = or i32 %dp_octl.0, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul5)
  %cmp16 = icmp ult i32 %mul, %mul5
  br i1 %cmp16, label %if.then17, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add18 = add i32 %dec10, %mul
  %add19 = add i32 %dec10, %mul5
  %sub21 = sub i32 1, %mul9
  %and22 = and i32 %sub21, 65535
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %entry.if.end26_crit_edge
  %and22.pn = phi i32 [ %and22, %if.then17 ], [ %dec10, %entry.if.end26_crit_edge ]
  %bltctl.0 = phi i32 [ -2063597568, %if.then17 ], [ 83886080, %entry.if.end26_crit_edge ]
  %sx.0 = phi i32 [ %add18, %if.then17 ], [ %mul, %entry.if.end26_crit_edge ]
  %dx.0 = phi i32 [ %add19, %if.then17 ], [ %mul5, %entry.if.end26_crit_edge ]
  %mul27 = mul i32 %sy.0, %17
  %mul29 = mul i32 %dy.0, %17
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end26
  %18 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i = getelementptr i32, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %tobool.not = icmp sgt i32 %20, -1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cnt.0 = or i32 %and22.pn, %shl11
  %add28 = add i32 %sx.0, %mul27
  %add30 = add i32 %dx.0, %mul29
  %21 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %add28) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #12, !srcloc !102
  %24 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %sp.0) #12
  %add.ptr.i97 = getelementptr i32, ptr %25, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %26) #12, !srcloc !102
  %27 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %add30) #12
  %add.ptr.i98 = getelementptr i32, ptr %28, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %29) #12, !srcloc !102
  %30 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %cnt.0) #12
  %add.ptr.i99 = getelementptr i32, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %32) #12, !srcloc !102
  %33 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %35 = tail call i32 @llvm.bswap.i32(i32 %dp_octl.0) #12
  %add.ptr.i100 = getelementptr i32, ptr %34, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %35) #12, !srcloc !102
  %36 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dc_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %add.ptr.i101 = getelementptr i32, ptr %37, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %bltctl.0) #12, !srcloc !102
  br label %while.cond38

while.cond38:                                     ; preds = %while.cond38.while.cond38_crit_edge, %while.end
  %38 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i102 = getelementptr i32, ptr %39, i32 36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %tobool42.not = icmp sgt i32 %40, -1
  br i1 %tobool42.not, label %while.cond38.while.cond45_crit_edge, label %while.cond38.while.cond38_crit_edge

while.cond38.while.cond38_crit_edge:              ; preds = %while.cond38
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond38

while.cond38.while.cond45_crit_edge:              ; preds = %while.cond38
  br label %while.cond45

while.cond45:                                     ; preds = %while.cond45.while.cond45_crit_edge, %while.cond38.while.cond45_crit_edge
  %41 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dc_regs, align 4
  %add.ptr.i103 = getelementptr i32, ptr %42, i32 36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #12, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %44 = and i32 %43, 1073741824
  %tobool49.not = icmp eq i32 %44, 0
  br i1 %tobool49.not, label %while.end51, label %while.cond45.while.cond45_crit_edge

while.cond45.while.cond45_crit_edge:              ; preds = %while.cond45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond45

while.end51:                                      ; preds = %while.cond45
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imsttfb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %reg = alloca [2 x i32], align 4
  %idx = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #12
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !103
  %4 = getelementptr inbounds [2 x i32], ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idx) #12
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %idx, align 1, !annotation !103
  %7 = getelementptr inbounds [2 x i8], ptr %idx, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !103
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 5526529, label %if.end59.i.i
    i32 5526530, label %if.end59.i.i114
    i32 5526531, label %if.end59.i.i147
    i32 5526532, label %if.end59.i.i170
    i32 5526533, label %if.end59.i.i206
    i32 5526534, label %if.end59.i.i229
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #17, !srcloc !104
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !105

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 8) #12
  %11 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !106
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %2, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !105

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i267 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i267
  %add.ptr.i.i = getelementptr i8, ptr %reg, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i267)
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end.i.i
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %16)
  %cmp = icmp ugt i32 %16, 1023
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %dc_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dc_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dc_regs, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  call void @arm_heavy_mb() #12
  %21 = call i32 @llvm.bswap.i32(i32 %20) #12
  %add.ptr.i = getelementptr i32, ptr %18, i32 %16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #12, !srcloc !102
  br label %cleanup

if.end59.i.i114:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i115 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i115, label %if.end59.i.i114.if.then11.i.i131_crit_edge, label %land.lhs.true.i.i118

if.end59.i.i114.if.then11.i.i131_crit_edge:       ; preds = %if.end59.i.i114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i131

land.lhs.true.i.i118:                             ; preds = %if.end59.i.i114
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #17, !srcloc !104
  %asmresult.i.i116 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i116)
  %cmp.i6.i117 = icmp eq i32 %asmresult.i.i116, 0
  br i1 %cmp.i6.i117, label %if.end.i.i128, label %land.lhs.true.i.i118.if.then11.i.i131_crit_edge, !prof !105

land.lhs.true.i.i118.if.then11.i.i131_crit_edge:  ; preds = %land.lhs.true.i.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i131

if.end.i.i128:                                    ; preds = %land.lhs.true.i.i118
  %call.i.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 4) #12
  %23 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i120 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i120 to ptr
  %cpu_domain.i.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i121) #10, !srcloc !106
  %and.i.i.i.i122 = and i32 %25, -13
  %or.i.i.i.i123 = or i32 %and.i.i.i.i122, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i123) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %call1.i.i.i124 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %2, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i124)
  %tobool4.not.i.i127 = icmp eq i32 %call1.i.i.i124, 0
  br i1 %tobool4.not.i.i127, label %lor.lhs.false8, label %if.end.i.i128.if.then11.i.i131_crit_edge, !prof !105

if.end.i.i128.if.then11.i.i131_crit_edge:         ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i131

if.then11.i.i131:                                 ; preds = %if.end.i.i128.if.then11.i.i131_crit_edge, %land.lhs.true.i.i118.if.then11.i.i131_crit_edge, %if.end59.i.i114.if.then11.i.i131_crit_edge
  %res.0.i.i126272 = phi i32 [ %call1.i.i.i124, %if.end.i.i128.if.then11.i.i131_crit_edge ], [ 4, %if.end59.i.i114.if.then11.i.i131_crit_edge ], [ 4, %land.lhs.true.i.i118.if.then11.i.i131_crit_edge ]
  %sub.i.i129 = sub i32 4, %res.0.i.i126272
  %add.ptr.i.i130 = getelementptr i8, ptr %reg, i32 %sub.i.i129
  %26 = call ptr @memset(ptr %add.ptr.i.i130, i32 0, i32 %res.0.i.i126272)
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end.i.i128
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %28)
  %cmp10 = icmp ugt i32 %28, 1023
  br i1 %cmp10, label %lor.lhs.false8.cleanup_crit_edge, label %if.end12

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false8
  %dc_regs13 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %dc_regs13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_regs13, align 4
  %add.ptr.i262 = getelementptr i32, ptr %30, i32 %28
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #12, !srcloc !99
  %32 = call i32 @llvm.bswap.i32(i32 %31) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %4, align 4
  %add = add i32 %arg, 4
  %34 = inttoptr i32 %add to ptr
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #12
  %call.i.i138 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i138, label %if.end12.cleanup_crit_edge, label %if.end.i.i141

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i141:                                    ; preds = %if.end12
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 4, i32 -1226833920) #17, !srcloc !109
  %asmresult.i.i139 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i139)
  %cmp.i6.i140 = icmp eq i32 %asmresult.i.i139, 0
  br i1 %cmp.i6.i140, label %copy_to_user.exit, label %if.end.i.i141.cleanup_crit_edge

if.end.i.i141.cleanup_crit_edge:                  ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i142 = call zeroext i1 @__kasan_check_read(ptr noundef %4, i32 noundef 4) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef %4, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool19.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool19.not, i32 0, i32 -14
  br label %cleanup

if.end59.i.i147:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i148 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i148, label %if.end59.i.i147.if.then11.i.i164_crit_edge, label %land.lhs.true.i.i151

if.end59.i.i147.if.then11.i.i164_crit_edge:       ; preds = %if.end59.i.i147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i164

land.lhs.true.i.i151:                             ; preds = %if.end59.i.i147
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #17, !srcloc !104
  %asmresult.i.i149 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i149)
  %cmp.i6.i150 = icmp eq i32 %asmresult.i.i149, 0
  br i1 %cmp.i6.i150, label %if.end.i.i161, label %land.lhs.true.i.i151.if.then11.i.i164_crit_edge, !prof !105

land.lhs.true.i.i151.if.then11.i.i164_crit_edge:  ; preds = %land.lhs.true.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i164

if.end.i.i161:                                    ; preds = %land.lhs.true.i.i151
  %call.i.i.i152 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 8) #12
  %37 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i153 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i153 to ptr
  %cpu_domain.i.i.i.i.i154 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i154) #10, !srcloc !106
  %and.i.i.i.i155 = and i32 %39, -13
  %or.i.i.i.i156 = or i32 %and.i.i.i.i155, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i156) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %call1.i.i.i157 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %2, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i157)
  %tobool4.not.i.i160 = icmp eq i32 %call1.i.i.i157, 0
  br i1 %tobool4.not.i.i160, label %lor.lhs.false26, label %if.end.i.i161.if.then11.i.i164_crit_edge, !prof !105

if.end.i.i161.if.then11.i.i164_crit_edge:         ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i164

if.then11.i.i164:                                 ; preds = %if.end.i.i161.if.then11.i.i164_crit_edge, %land.lhs.true.i.i151.if.then11.i.i164_crit_edge, %if.end59.i.i147.if.then11.i.i164_crit_edge
  %res.0.i.i159279 = phi i32 [ %call1.i.i.i157, %if.end.i.i161.if.then11.i.i164_crit_edge ], [ 8, %if.end59.i.i147.if.then11.i.i164_crit_edge ], [ 8, %land.lhs.true.i.i151.if.then11.i.i164_crit_edge ]
  %sub.i.i162 = sub i32 8, %res.0.i.i159279
  %add.ptr.i.i163 = getelementptr i8, ptr %reg, i32 %sub.i.i162
  %40 = call ptr @memset(ptr %add.ptr.i.i163, i32 0, i32 %res.0.i.i159279)
  br label %cleanup

lor.lhs.false26:                                  ; preds = %if.end.i.i161
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %42)
  %cmp28 = icmp ugt i32 %42, 1023
  br i1 %cmp28, label %lor.lhs.false26.cleanup_crit_edge, label %if.end30

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  %cmap_regs = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %cmap_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmap_regs, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  call void @arm_heavy_mb() #12
  %47 = call i32 @llvm.bswap.i32(i32 %46) #12
  %add.ptr.i263 = getelementptr i32, ptr %44, i32 %42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 %47) #12, !srcloc !102
  br label %cleanup

if.end59.i.i170:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i171 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i171, label %if.end59.i.i170.if.then11.i.i187_crit_edge, label %land.lhs.true.i.i174

if.end59.i.i170.if.then11.i.i187_crit_edge:       ; preds = %if.end59.i.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i187

land.lhs.true.i.i174:                             ; preds = %if.end59.i.i170
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #17, !srcloc !104
  %asmresult.i.i172 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i172)
  %cmp.i6.i173 = icmp eq i32 %asmresult.i.i172, 0
  br i1 %cmp.i6.i173, label %if.end.i.i184, label %land.lhs.true.i.i174.if.then11.i.i187_crit_edge, !prof !105

land.lhs.true.i.i174.if.then11.i.i187_crit_edge:  ; preds = %land.lhs.true.i.i174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i187

if.end.i.i184:                                    ; preds = %land.lhs.true.i.i174
  %call.i.i.i175 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 4) #12
  %49 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i176 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i176 to ptr
  %cpu_domain.i.i.i.i.i177 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i177) #10, !srcloc !106
  %and.i.i.i.i178 = and i32 %51, -13
  %or.i.i.i.i179 = or i32 %and.i.i.i.i178, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i179) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %call1.i.i.i180 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %2, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i180)
  %tobool4.not.i.i183 = icmp eq i32 %call1.i.i.i180, 0
  br i1 %tobool4.not.i.i183, label %lor.lhs.false37, label %if.end.i.i184.if.then11.i.i187_crit_edge, !prof !105

if.end.i.i184.if.then11.i.i187_crit_edge:         ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i187

if.then11.i.i187:                                 ; preds = %if.end.i.i184.if.then11.i.i187_crit_edge, %land.lhs.true.i.i174.if.then11.i.i187_crit_edge, %if.end59.i.i170.if.then11.i.i187_crit_edge
  %res.0.i.i182284 = phi i32 [ %call1.i.i.i180, %if.end.i.i184.if.then11.i.i187_crit_edge ], [ 4, %if.end59.i.i170.if.then11.i.i187_crit_edge ], [ 4, %land.lhs.true.i.i174.if.then11.i.i187_crit_edge ]
  %sub.i.i185 = sub i32 4, %res.0.i.i182284
  %add.ptr.i.i186 = getelementptr i8, ptr %reg, i32 %sub.i.i185
  %52 = call ptr @memset(ptr %add.ptr.i.i186, i32 0, i32 %res.0.i.i182284)
  br label %cleanup

lor.lhs.false37:                                  ; preds = %if.end.i.i184
  %53 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %54)
  %cmp39 = icmp ugt i32 %54, 1023
  br i1 %cmp39, label %lor.lhs.false37.cleanup_crit_edge, label %if.end41

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false37
  %cmap_regs42 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %cmap_regs42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmap_regs42, align 4
  %add.ptr.i264 = getelementptr i32, ptr %56, i32 %54
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #12, !srcloc !99
  %58 = call i32 @llvm.bswap.i32(i32 %57) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %4, align 4
  %add46 = add i32 %arg, 4
  %60 = inttoptr i32 %add46 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #12
  %call.i.i194 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i194, label %if.end41.cleanup_crit_edge, label %if.end.i.i197

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i197:                                    ; preds = %if.end41
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %60, i32 4, i32 -1226833920) #17, !srcloc !109
  %asmresult.i.i195 = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i195)
  %cmp.i6.i196 = icmp eq i32 %asmresult.i.i195, 0
  br i1 %cmp.i6.i196, label %copy_to_user.exit202, label %if.end.i.i197.cleanup_crit_edge

if.end.i.i197.cleanup_crit_edge:                  ; preds = %if.end.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit202:                             ; preds = %if.end.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i198 = call zeroext i1 @__kasan_check_read(ptr noundef %4, i32 noundef 4) #12
  %call.i12.i.i199 = call i32 @arm_copy_to_user(ptr noundef %60, ptr noundef %4, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i199)
  %tobool49.not = icmp eq i32 %call.i12.i.i199, 0
  %spec.select301 = select i1 %tobool49.not, i32 0, i32 -14
  br label %cleanup

if.end59.i.i206:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i207 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i207, label %if.end59.i.i206.if.then11.i.i223_crit_edge, label %land.lhs.true.i.i210

if.end59.i.i206.if.then11.i.i223_crit_edge:       ; preds = %if.end59.i.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i223

land.lhs.true.i.i210:                             ; preds = %if.end59.i.i206
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #17, !srcloc !104
  %asmresult.i.i208 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i208)
  %cmp.i6.i209 = icmp eq i32 %asmresult.i.i208, 0
  br i1 %cmp.i6.i209, label %if.end.i.i220, label %land.lhs.true.i.i210.if.then11.i.i223_crit_edge, !prof !105

land.lhs.true.i.i210.if.then11.i.i223_crit_edge:  ; preds = %land.lhs.true.i.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i223

if.end.i.i220:                                    ; preds = %land.lhs.true.i.i210
  %call.i.i.i211 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %idx, i32 noundef 2) #12
  %63 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i212 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i212 to ptr
  %cpu_domain.i.i.i.i.i213 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i213) #10, !srcloc !106
  %and.i.i.i.i214 = and i32 %65, -13
  %or.i.i.i.i215 = or i32 %and.i.i.i.i214, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i215) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %call1.i.i.i216 = call i32 @arm_copy_from_user(ptr noundef nonnull %idx, ptr noundef %2, i32 noundef 2) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i216)
  %tobool4.not.i.i219 = icmp eq i32 %call1.i.i.i216, 0
  br i1 %tobool4.not.i.i219, label %if.end57, label %if.end.i.i220.if.then11.i.i223_crit_edge, !prof !105

if.end.i.i220.if.then11.i.i223_crit_edge:         ; preds = %if.end.i.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i223

if.then11.i.i223:                                 ; preds = %if.end.i.i220.if.then11.i.i223_crit_edge, %land.lhs.true.i.i210.if.then11.i.i223_crit_edge, %if.end59.i.i206.if.then11.i.i223_crit_edge
  %res.0.i.i218291 = phi i32 [ %call1.i.i.i216, %if.end.i.i220.if.then11.i.i223_crit_edge ], [ 2, %if.end59.i.i206.if.then11.i.i223_crit_edge ], [ 2, %land.lhs.true.i.i210.if.then11.i.i223_crit_edge ]
  %sub.i.i221 = sub i32 2, %res.0.i.i218291
  %add.ptr.i.i222 = getelementptr i8, ptr %idx, i32 %sub.i.i221
  %66 = call ptr @memset(ptr %add.ptr.i.i222, i32 0, i32 %res.0.i.i218291)
  br label %cleanup

if.end57:                                         ; preds = %if.end.i.i220
  call void @__sanitizer_cov_trace_pc() #14
  %cmap_regs58 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %67 = ptrtoint ptr %cmap_regs58 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmap_regs58, align 4
  %arrayidx59 = getelementptr i8, ptr %68, i32 20
  %69 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx59, align 1
  %70 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %idx, align 1
  %72 = load ptr, ptr %cmap_regs58, align 4
  %arrayidx62 = getelementptr i8, ptr %72, i32 16
  %73 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %71, ptr %arrayidx62, align 1
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %7, align 1
  %76 = load ptr, ptr %cmap_regs58, align 4
  %arrayidx65 = getelementptr i8, ptr %76, i32 24
  %77 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %75, ptr %arrayidx65, align 1
  br label %cleanup

if.end59.i.i229:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #12
  %call.i.i230 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i230, label %if.end59.i.i229.if.then11.i.i246_crit_edge, label %land.lhs.true.i.i233

if.end59.i.i229.if.then11.i.i246_crit_edge:       ; preds = %if.end59.i.i229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i246

land.lhs.true.i.i233:                             ; preds = %if.end59.i.i229
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 1, i32 -1226833920) #17, !srcloc !104
  %asmresult.i.i231 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i231)
  %cmp.i6.i232 = icmp eq i32 %asmresult.i.i231, 0
  br i1 %cmp.i6.i232, label %if.end.i.i243, label %land.lhs.true.i.i233.if.then11.i.i246_crit_edge, !prof !105

land.lhs.true.i.i233.if.then11.i.i246_crit_edge:  ; preds = %land.lhs.true.i.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i246

if.end.i.i243:                                    ; preds = %land.lhs.true.i.i233
  %call.i.i.i234 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %idx, i32 noundef 1) #12
  %79 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i235 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i235 to ptr
  %cpu_domain.i.i.i.i.i236 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i236) #10, !srcloc !106
  %and.i.i.i.i237 = and i32 %81, -13
  %or.i.i.i.i238 = or i32 %and.i.i.i.i237, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i238) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %call1.i.i.i239 = call i32 @arm_copy_from_user(ptr noundef nonnull %idx, ptr noundef %2, i32 noundef 1) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #12, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i239)
  %tobool4.not.i.i242 = icmp eq i32 %call1.i.i.i239, 0
  br i1 %tobool4.not.i.i242, label %if.end71, label %if.end.i.i243.if.then11.i.i246_crit_edge, !prof !105

if.end.i.i243.if.then11.i.i246_crit_edge:         ; preds = %if.end.i.i243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i246

if.then11.i.i246:                                 ; preds = %if.end.i.i243.if.then11.i.i246_crit_edge, %land.lhs.true.i.i233.if.then11.i.i246_crit_edge, %if.end59.i.i229.if.then11.i.i246_crit_edge
  %res.0.i.i241296 = phi i32 [ %call1.i.i.i239, %if.end.i.i243.if.then11.i.i246_crit_edge ], [ 1, %if.end59.i.i229.if.then11.i.i246_crit_edge ], [ 1, %land.lhs.true.i.i233.if.then11.i.i246_crit_edge ]
  %sub.i.i244 = sub i32 1, %res.0.i.i241296
  %add.ptr.i.i245 = getelementptr i8, ptr %idx, i32 %sub.i.i244
  %82 = call ptr @memset(ptr %add.ptr.i.i245, i32 0, i32 %res.0.i.i241296)
  br label %cleanup

if.end71:                                         ; preds = %if.end.i.i243
  %cmap_regs72 = getelementptr inbounds %struct.imstt_par, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %cmap_regs72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cmap_regs72, align 4
  %arrayidx73 = getelementptr i8, ptr %84, i32 20
  %85 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx73, align 1
  %86 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %idx, align 1
  %88 = load ptr, ptr %cmap_regs72, align 4
  %arrayidx76 = getelementptr i8, ptr %88, i32 16
  %89 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %87, ptr %arrayidx76, align 1
  %90 = load ptr, ptr %cmap_regs72, align 4
  %arrayidx78 = getelementptr i8, ptr %90, i32 24
  %91 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx78, align 1
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %7, align 1
  %add80 = add i32 %arg, 1
  %94 = inttoptr i32 %add80 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #12
  %call.i.i253 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i253, label %if.end71.cleanup_crit_edge, label %if.end.i.i256

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i256:                                    ; preds = %if.end71
  %95 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %94, i32 1, i32 -1226833920) #17, !srcloc !109
  %asmresult.i.i254 = extractvalue { i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i254)
  %cmp.i6.i255 = icmp eq i32 %asmresult.i.i254, 0
  br i1 %cmp.i6.i255, label %copy_to_user.exit261, label %if.end.i.i256.cleanup_crit_edge

if.end.i.i256.cleanup_crit_edge:                  ; preds = %if.end.i.i256
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit261:                             ; preds = %if.end.i.i256
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i257 = call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef 1) #12
  %call.i12.i.i258 = call i32 @arm_copy_to_user(ptr noundef %94, ptr noundef %7, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i258)
  %tobool83.not = icmp eq i32 %call.i12.i.i258, 0
  %spec.select302 = select i1 %tobool83.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit261, %if.end.i.i256.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.then11.i.i246, %if.end57, %if.then11.i.i223, %copy_to_user.exit202, %if.end.i.i197.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %lor.lhs.false37.cleanup_crit_edge, %if.then11.i.i187, %if.end30, %lor.lhs.false26.cleanup_crit_edge, %if.then11.i.i164, %copy_to_user.exit, %if.end.i.i141.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.then11.i.i131, %if.end, %lor.lhs.false.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ 0, %if.end30 ], [ 0, %if.end ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %lor.lhs.false8.cleanup_crit_edge ], [ -14, %lor.lhs.false26.cleanup_crit_edge ], [ -14, %lor.lhs.false37.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i131 ], [ -14, %if.end12.cleanup_crit_edge ], [ -14, %if.end.i.i141.cleanup_crit_edge ], [ -14, %if.then11.i.i164 ], [ -14, %if.then11.i.i187 ], [ -14, %if.end41.cleanup_crit_edge ], [ -14, %if.end.i.i197.cleanup_crit_edge ], [ -14, %if.then11.i.i223 ], [ -14, %if.then11.i.i246 ], [ -14, %if.end71.cleanup_crit_edge ], [ -14, %if.end.i.i256.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select301, %copy_to_user.exit202 ], [ %spec.select302, %copy_to_user.exit261 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idx) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #12
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
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imsttfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call3 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.26) #12
  %cmp.not4 = icmp eq ptr %call3, null
  br i1 %cmp.not4, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call5 = phi ptr [ %call, %if.end21.while.body_crit_edge ], [ %call3, %while.cond.preheader.while.body_crit_edge ]
  %call2 = call i32 @strncmp(ptr noundef nonnull %call5, ptr noundef nonnull dereferenceable(6) @.str.27, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body.if.end21_crit_edge, label %if.else

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %while.body
  %call17 = call i32 @strncmp(ptr noundef nonnull %call5, ptr noundef nonnull dereferenceable(8) @.str.28, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @fb_invert_cmaps() #12
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.26) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end21.cleanup_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_invert_cmaps() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !81, !83, !85, !87}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__UNIQUE_ID_file305, !1, !"__UNIQUE_ID_file305", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1628, i32 1}
!2 = !{ptr @__UNIQUE_ID_license306, !1, !"__UNIQUE_ID_license306", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_imsttfb__307_1630_imsttfb_init6, !4, !"__initcall__kmod_imsttfb__307_1630_imsttfb_init6", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1630, i32 1}
!5 = !{ptr @__exitcall_imsttfb_exit, !6, !"__exitcall_imsttfb_exit", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1631, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1330, i32 11}
!9 = !{ptr @imsttfb_pci_driver, !10, !"imsttfb_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1329, i32 26}
!11 = !{ptr @imsttfb_pci_tbl, !12, !"imsttfb_pci_tbl", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1319, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1476, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @imsttfb_probe._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @imsttfb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1478, i32 3}
!21 = !{ptr @imsttfb_probe._entry.4, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @imsttfb_probe._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1490, i32 3}
!25 = !{ptr @imsttfb_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @imsttfb_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1498, i32 28}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1499, i32 28}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1506, i32 4}
!33 = !{ptr @imsttfb_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imsttfb_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1420, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @init_imstt._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @init_imstt._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1425, i32 24}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1425, i32 60}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1425, i32 68}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1462, i32 2}
!48 = !{ptr @init_imstt._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @init_imstt._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ibm_initregs, !51, !"ibm_initregs", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/imsttfb.c", i32 226, i32 26}
!52 = !{ptr @tvp_initregs, !53, !"tvp_initregs", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/imsttfb.c", i32 273, i32 26}
!54 = !{ptr @tvp_reg_init_2, !55, !"tvp_reg_init_2", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/imsttfb.c", i32 339, i32 29}
!56 = !{ptr @tvp_reg_init_6, !57, !"tvp_reg_init_6", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/imsttfb.c", i32 346, i32 29}
!58 = !{ptr @tvp_reg_init_12, !59, !"tvp_reg_init_12", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/imsttfb.c", i32 353, i32 29}
!60 = !{ptr @tvp_reg_init_13, !61, !"tvp_reg_init_13", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/imsttfb.c", i32 360, i32 29}
!62 = !{ptr @tvp_reg_init_17, !63, !"tvp_reg_init_17", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/imsttfb.c", i32 367, i32 29}
!64 = !{ptr @tvp_reg_init_18, !65, !"tvp_reg_init_18", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/imsttfb.c", i32 374, i32 29}
!66 = !{ptr @tvp_reg_init_19, !67, !"tvp_reg_init_19", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/imsttfb.c", i32 381, i32 29}
!68 = !{ptr @tvp_reg_init_20, !69, !"tvp_reg_init_20", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/imsttfb.c", i32 388, i32 29}
!70 = !{ptr @imsttfb_ops, !71, !"imsttfb_ops", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1336, i32 28}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!74 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1564, i32 38}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1565, i32 26}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/imsttfb.c", i32 1575, i32 33}
!85 = distinct !{null, !86, !"fontname", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/imsttfb.c", i32 334, i32 13}
!87 = distinct !{null, !88, !"inverse", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/imsttfb.c", i32 333, i32 12}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 6128294}
!100 = !{i64 2156236886}
!101 = !{i64 2156237267}
!102 = !{i64 6127876}
!103 = !{!"auto-init"}
!104 = !{i64 2153005592, i64 2153005617}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 5501147}
!107 = !{i64 5501344}
!108 = !{i64 2152986577}
!109 = !{i64 2153006273, i64 2153006298}
