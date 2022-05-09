; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mb862xx/mb862xxfbdrv.c_pt.bc'
source_filename = "../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c"
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
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.mb862xxfb_par = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, %struct.mb862xx_l1_cfg, i32, [16 x i32] }
%struct.mb862xx_l1_cfg = type { i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.mb862xx_gc_mode = type { %struct.fb_videomode, i32, i32, i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mb862xxfb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mb862xx_pci_tbl, ptr @mb862xx_pci_probe, ptr @mb862xx_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mb862xxfb__314_1196_mb862xxfb_init6 = internal global ptr @mb862xxfb_init, section ".initcall6.init", align 4
@__exitcall_mb862xxfb_exit = internal global ptr @mb862xxfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description315 = internal constant [57 x i8] c"mb862xxfb.description=Fujitsu MB862xx Framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [52 x i8] c"mb862xxfb.author=Anatolij Gustschin <agust@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [53 x i8] c"mb862xxfb.file=drivers/video/fbdev/mb862xx/mb862xxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [25 x i8] c"mb862xxfb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mb862xxfb\00", [22 x i8] zeroinitializer }, align 32
@mb862xx_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4303, i32 8217, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4303, i32 8222, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4303, i32 8235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1002, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mb862xx_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/video/fbdev/mb862xx/mb862xxfbdrv.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr = internal global ptr @mb862xx_pci_probe._entry, section ".printk_index", align 4
@mb862xx_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1020, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot reserve region(s) for PCI device\0A\00", [55 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.8 = internal global ptr @mb862xx_pci_probe._entry.6, section ".printk_index", align 4
@mb862xx_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1054, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot map framebuffer\0A\00", [40 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.11 = internal global ptr @mb862xx_pci_probe._entry.9, section ".printk_index", align 4
@mb862xx_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1061, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot map registers\0A\00", [42 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.14 = internal global ptr @mb862xx_pci_probe._entry.12, section ".printk_index", align 4
@mb862xx_pci_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 1, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fb phys 0x%llx 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 1, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmio phys 0x%llx 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot request irq\0A\00", [44 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.19 = internal global ptr @mb862xx_pci_probe._entry.17, section ".printk_index", align 4
@mb862xx_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not allocate cmap for fb_info.\0A\00", [58 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.22 = internal global ptr @mb862xx_pci_probe._entry.20, section ".printk_index", align 4
@mb862xx_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1091, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set_var() failed on initial setup?\0A\00", [60 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.25 = internal global ptr @mb862xx_pci_probe._entry.23, section ".printk_index", align 4
@mb862xx_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1095, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register framebuffer\0A\00", [32 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.28 = internal global ptr @mb862xx_pci_probe._entry.26, section ".printk_index", align 4
@dev_attr_dispregs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dispregs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't create sysfs regdump file\0A\00", [63 x i8] zeroinitializer }, align 32
@mb862xx_pci_probe._entry_ptr.31 = internal global ptr @mb862xx_pci_probe._entry.29, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@coralp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 871, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fujitsu Coral-%s GDC Rev.%d found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coralp_init\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@coralp_init._entry_ptr = internal global ptr @coralp_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PA\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@carmine_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 947, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fujitsu Carmine GDC Rev.%d found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"carmine_init\00", [19 x i8] zeroinitializer }, align 32
@carmine_init._entry_ptr = internal global ptr @carmine_init._entry, section ".printk_index", align 4
@init_dram_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VRAM init failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_dram_ctrl\00", [17 x i8] zeroinitializer }, align 32
@init_dram_ctrl._entry_ptr = internal global ptr @init_dram_ctrl._entry, section ".printk_index", align 4
@mb862xxfb_ops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mb862xxfb_check_var, ptr @mb862xxfb_set_par, ptr @mb862xxfb_setcolreg, ptr null, ptr @mb862xxfb_blank, ptr @mb862xxfb_pan, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @mb862xxfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb862xxfb_init_fbinfo\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using bootloader's disp. mode\0A\00", [33 x i8] zeroinitializer }, align 32
@mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.44, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using supplied mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"640x480-16@60\00", [18 x i8] zeroinitializer }, align 32
@mb862xxfb_init_fbinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get initial mode\0A\00", [36 x i8] zeroinitializer }, align 32
@mb862xxfb_init_fbinfo._entry_ptr = internal global ptr @mb862xxfb_init_fbinfo._entry, section ".printk_index", align 4
@mb862xxfb_init_fbinfo._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"check_var() failed on initial setup?\0A\00", [58 x i8] zeroinitializer }, align 32
@mb862xxfb_init_fbinfo._entry_ptr.49 = internal global ptr @mb862xxfb_init_fbinfo._entry.47, section ".printk_index", align 4
@mb862xxfb_check_var.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mb862xxfb_check_var\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mb862xxfb_set_par.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.3, ptr @.str.51, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mb862xxfb_set_par\00", [46 x i8] zeroinitializer }, align 32
@mb862xxfb_set_par.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SC 0x%lx\0A\00", [22 x i8] zeroinitializer }, align 32
@mb862xxfb_blank.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb862xxfb_blank\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blank mode=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dispregs\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%08x = %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"geo %08x = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"draw %08x = %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@mb862xx_pci_remove.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mb862xx_pci_remove\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s release\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 8217, i64 8222, i64 8235]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 1074023681, i64 1074023682, i64 1074023683, i64 2147765504]
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"mb862xxfb_pci_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1165, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1166, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"mb862xx_pci_tbl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 981, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1002, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1020, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1054, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1061, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1066, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1068, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1078, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1085, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1091, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1095, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"dev_attr_dispregs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1102, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 869, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 946, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 915, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [14 x i8] c"mb862xxfb_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 406, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 449, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 478, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 484, i32 38 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 487, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 511, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 113, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 207, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 225, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 290, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 174, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 580, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 554, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 566, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 570, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [46 x i8] c"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1135, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_mb862xxfb_exit, ptr @__initcall__kmod_mb862xxfb__314_1196_mb862xxfb_init6, ptr @carmine_init._entry, ptr @carmine_init._entry_ptr, ptr @coralp_init._entry, ptr @coralp_init._entry_ptr, ptr @init_dram_ctrl._entry, ptr @init_dram_ctrl._entry_ptr, ptr @mb862xx_pci_probe._entry, ptr @mb862xx_pci_probe._entry.12, ptr @mb862xx_pci_probe._entry.17, ptr @mb862xx_pci_probe._entry.20, ptr @mb862xx_pci_probe._entry.23, ptr @mb862xx_pci_probe._entry.26, ptr @mb862xx_pci_probe._entry.29, ptr @mb862xx_pci_probe._entry.6, ptr @mb862xx_pci_probe._entry.9, ptr @mb862xx_pci_probe._entry_ptr, ptr @mb862xx_pci_probe._entry_ptr.11, ptr @mb862xx_pci_probe._entry_ptr.14, ptr @mb862xx_pci_probe._entry_ptr.19, ptr @mb862xx_pci_probe._entry_ptr.22, ptr @mb862xx_pci_probe._entry_ptr.25, ptr @mb862xx_pci_probe._entry_ptr.28, ptr @mb862xx_pci_probe._entry_ptr.31, ptr @mb862xx_pci_probe._entry_ptr.8, ptr @mb862xxfb_exit, ptr @mb862xxfb_init_fbinfo._entry, ptr @mb862xxfb_init_fbinfo._entry.47, ptr @mb862xxfb_init_fbinfo._entry_ptr, ptr @mb862xxfb_init_fbinfo._entry_ptr.49, ptr @mb862xxfb_pci_driver, ptr @.str, ptr @mb862xx_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @dev_attr_dispregs, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mb862xxfb_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xxfb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dispregs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coralp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carmine_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dram_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xxfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xxfb_init_fbinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xxfb_init_fbinfo._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mb862xxfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @mb862xxfb_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_init() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mb862xxfb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xx_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 212, ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.dis_dev_crit_edge, label %if.end4

if.end.dis_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dis_dev

if.end4:                                          ; preds = %if.end
  %par5 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %0 = ptrtoint ptr %par5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par5, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %1, align 4
  %dev7 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev7, align 4
  %pdev8 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev8, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq9 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq9, align 4
  %call10 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %rel_fb

if.end16:                                         ; preds = %if.end4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end16.rel_reg_crit_edge [
    i16 8217, label %if.end16.sw.bb_crit_edge
    i16 8222, label %if.end16.sw.bb_crit_edge261
    i16 8235, label %sw.bb27
  ]

if.end16.sw.bb_crit_edge261:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end16.rel_reg_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_reg

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge261
  %11 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev8, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 47
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  %fb_base_phys = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fb_base_phys, align 4
  %mapped_vram = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 33554432, ptr %mapped_vram, align 4
  %add = add i32 %14, 66846720
  %mmio_base_phys = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %mmio_base_phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %mmio_base_phys, align 4
  %mmio_len = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262144, ptr %mmio_len, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end16
  %19 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev8, align 4
  %arrayidx30 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 2
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30, align 8
  %fb_base_phys32 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %fb_base_phys32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fb_base_phys32, align 4
  %arrayidx35 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 3
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx35, align 8
  %mmio_base_phys37 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %mmio_base_phys37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mmio_base_phys37, align 4
  %end = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 3, i32 1
  %27 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp41 = icmp eq i32 %28, 0
  br i1 %cmp41, label %sw.bb27.cond.end_crit_edge, label %cond.false

sw.bb27.cond.end_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35, align 8
  %sub = add i32 %28, 1
  %add51 = sub i32 %sub, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb27.cond.end_crit_edge
  %cond = phi i32 [ %add51, %cond.false ], [ 0, %sw.bb27.cond.end_crit_edge ]
  %mmio_len52 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %mmio_len52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %mmio_len52, align 4
  %mapped_vram53 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %mapped_vram53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 134217728, ptr %mapped_vram53, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %.sink = phi i32 [ 5, %cond.end ], [ 4, %sw.bb ]
  %type54 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 25
  %33 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %type54, align 4
  %fb_base_phys55 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %fb_base_phys55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fb_base_phys55, align 4
  %mapped_vram56 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %mapped_vram56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mapped_vram56, align 4
  %call57 = tail call ptr @ioremap(i32 noundef %35, i32 noundef %37) #7
  %fb_base = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call57, ptr %fb_base, align 4
  %cmp59 = icmp eq ptr %call57, null
  br i1 %cmp59, label %do.end64, label %if.end65

do.end64:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %rel_reg

if.end65:                                         ; preds = %sw.epilog
  %mmio_base_phys66 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %mmio_base_phys66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mmio_base_phys66, align 4
  %mmio_len67 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %mmio_len67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mmio_len67, align 4
  %call68 = tail call ptr @ioremap(i32 noundef %40, i32 noundef %42) #7
  %mmio_base = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call68, ptr %mmio_base, align 4
  %cmp70 = icmp eq ptr %call68, null
  br i1 %cmp70, label %do.end75, label %do.body77

do.end75:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %fb_unmap

do.body77:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xx_pci_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xx_pci_probe, %if.then82)) #7
          to label %do.body89 [label %if.then82], !srcloc !145

if.then82:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %fb_base_phys55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fb_base_phys55, align 4
  %conv84 = zext i32 %45 to i64
  %46 = ptrtoint ptr %mapped_vram56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mapped_vram56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xx_pci_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev1, ptr noundef nonnull @.str.15, i64 noundef %conv84, i32 noundef %47) #7
  br label %do.body89

do.body89:                                        ; preds = %if.then82, %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xx_pci_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xx_pci_probe, %if.then101)) #7
          to label %do.end107 [label %if.then101], !srcloc !145

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %mmio_base_phys66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mmio_base_phys66, align 4
  %conv103 = zext i32 %49 to i64
  %50 = ptrtoint ptr %mmio_len67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mmio_len67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xx_pci_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev1, ptr noundef nonnull @.str.16, i64 noundef %conv103, i32 noundef %51) #7
  br label %do.end107

do.end107:                                        ; preds = %if.then101, %do.body89
  %type.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 25
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %53, label %do.end107.io_unmap_crit_edge [
    i32 4, label %sw.bb.i
    i32 5, label %sw.bb1.i
  ]

do.end107.io_unmap_crit_edge:                     ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_unmap

sw.bb.i:                                          ; preds = %do.end107
  %55 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio_base, align 4
  %host.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 12
  %57 = ptrtoint ptr %host.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %host.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 49152
  %i2c.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 13
  %58 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i.i, ptr %i2c.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %56, i32 65536
  %disp.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %59 = ptrtoint ptr %disp.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr3.i.i, ptr %disp.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %56, i32 98304
  %cap.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %60 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr5.i.i, ptr %cap.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %56, i32 196608
  %draw.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 18
  %61 = ptrtoint ptr %draw.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr7.i.i, ptr %draw.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %56, i32 229376
  %geo.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %geo.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr9.i.i, ptr %geo.i.i, align 4
  %pio.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 20
  %63 = ptrtoint ptr %pio.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr9.i.i, ptr %pio.i.i, align 4
  %refclk.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 26
  %64 = ptrtoint ptr %refclk.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 400, ptr %refclk.i.i, align 4
  %65 = ptrtoint ptr %mapped_vram56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mapped_vram56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %66)
  %cmp.i.i = icmp ugt i32 %66, 33554431
  br i1 %cmp.i.i, label %do.body.i.i, label %sw.bb.i.if.end.i.i_crit_edge

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fb_base, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %68, i32 33292380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 16777216) #7, !srcloc !147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %70 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %host.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %71, i32 240
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i.i) #7, !srcloc !148
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %74 = and i32 %73, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %74)
  %cmp18.i.i = icmp eq i32 %74, 768
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end.i.i.io_unmap_crit_edge

if.end.i.i.io_unmap_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_unmap

if.then19.i.i:                                    ; preds = %if.end.i.i
  %and17.i.i = and i32 %73, 255
  %75 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and17.i.i)
  %cmp23.i.i = icmp eq i32 %and17.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and17.i.i)
  %cmp24.i.i = icmp eq i32 %and17.i.i, 8
  %cond.i.i = select i1 %cmp24.i.i, ptr @.str.36, ptr @.str.37
  %cond25.i.i = select i1 %cmp23.i.i, ptr @.str.35, ptr %cond.i.i
  %77 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev8, align 4
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %revision.i.i, align 4
  %conv.i.i = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond25.i.i, i32 noundef %conv.i.i) #10
  %81 = ptrtoint ptr %disp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %disp.i.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %82, i32 256
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %84 = and i32 %83, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %84)
  %.not.i.i = icmp eq i32 %84, 384
  br i1 %.not.i.i, label %if.then36.i.i, label %if.then19.i.i.if.end37.i.i_crit_edge

if.then19.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i

if.then36.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pre_init.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 28
  %85 = ptrtoint ptr %pre_init.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %pre_init.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then36.i.i, %if.then19.i.i.if.end37.i.i_crit_edge
  %pre_init38.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 28
  %86 = ptrtoint ptr %pre_init38.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pre_init38.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool39.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool39.not.i.i, label %do.body41.i.i, label %if.end37.i.i.do.body52.i.i_crit_edge

if.end37.i.i.do.body52.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52.i.i

do.body41.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %host.i.i, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %89, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i.i, i32 2304) #7, !srcloc !147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 42949600) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %91 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host.i.i, align 4
  %add.ptr50.i.i = getelementptr i8, ptr %92, i32 65532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i.i, i32 335206161) #7, !srcloc !147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 2147480) #7
  br label %do.body52.i.i

do.body52.i.i:                                    ; preds = %do.body41.i.i, %if.end37.i.i.do.body52.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %host.i.i, align 4
  %add.ptr56.i.i = getelementptr i8, ptr %95, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i.i, i32 0) #7, !srcloc !147
  %call58.i.i = tail call i32 @mb862xx_i2c_init(ptr noundef %1) #7
  br label %if.end111

sw.bb1.i:                                         ; preds = %do.end107
  %96 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %97, i32 4194304
  %ctrl.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 21
  %98 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i6.i, ptr %ctrl.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %97, i32 5242880
  %i2c.i7.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 13
  %99 = ptrtoint ptr %i2c.i7.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr2.i.i, ptr %i2c.i7.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %97, i32 1048576
  %disp.i8.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %100 = ptrtoint ptr %disp.i8.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr4.i.i, ptr %disp.i8.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %97, i32 1310720
  %disp1.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 15
  %101 = ptrtoint ptr %disp1.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr6.i.i, ptr %disp1.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %97, i32 2097152
  %cap.i9.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %102 = ptrtoint ptr %cap.i9.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr8.i.i, ptr %cap.i9.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %97, i32 2621440
  %cap1.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 17
  %103 = ptrtoint ptr %cap1.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr10.i.i, ptr %cap1.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %97, i32 131072
  %draw.i10.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 18
  %104 = ptrtoint ptr %draw.i10.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr12.i.i, ptr %draw.i10.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %97, i32 3145728
  %dram_ctrl.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 22
  %105 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr14.i.i, ptr %dram_ctrl.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %97, i32 1572864
  %wrback.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 23
  %106 = ptrtoint ptr %wrback.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr16.i.i, ptr %wrback.i.i, align 4
  %refclk.i11.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 26
  %107 = ptrtoint ptr %refclk.i11.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 533, ptr %refclk.i11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %108 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctrl.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %109, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 587202560) #7, !srcloc !147
  %110 = ptrtoint ptr %draw.i10.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %draw.i10.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %111, i32 1204
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 140324, i32 %112)
  %cmp.i12.i = icmp eq i32 %112, 140324
  br i1 %cmp.i12.i, label %do.end24.i.i, label %sw.bb1.i.do.body40.i.i_crit_edge

sw.bb1.i.do.body40.i.i_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40.i.i

do.end24.i.i:                                     ; preds = %sw.bb1.i
  %113 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev7, align 4
  %115 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev8, align 4
  %revision.i15.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %revision.i15.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %revision.i15.i, align 4
  %conv.i16.i = zext i8 %118 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.38, i32 noundef %conv.i16.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ctrl.i.i, align 4
  %add.ptr29.i17.i = getelementptr i8, ptr %120, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i17.i, i32 553648128) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %121 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %122, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1426412805) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %123 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dram_ctrl.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 -1023074047) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %125 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %126, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 8407367) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %128, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i, i32 573194752) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %129 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 251658240) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %131 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr25.i.i.i = getelementptr i8, ptr %132, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i.i, i32 1181111552) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %133 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr30.i.i.i = getelementptr i8, ptr %134, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i.i, i32 50339840) #7, !srcloc !147
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %do.end24.i.i
  %i.0.i.i.i = phi i32 [ 0, %do.end24.i.i ], [ %inc.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %135 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr32.i.i.i = getelementptr i8, ptr %136, i32 12
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i.i.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  %138 = and i32 %137, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i.i.i, label %do.body35.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748) #7
  %inc.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %inc.i.i.i, 3002
  br i1 %exitcond.i.i.i, label %init_dram_ctrl.exit.thread.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

init_dram_ctrl.exit.thread.i.i:                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.40) #10
  br label %do.body40.i.i

do.body35.i.i:                                    ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %142 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dram_ctrl.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 -1023074048) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %144 = ptrtoint ptr %dram_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dram_ctrl.i.i, align 4
  %add.ptr46.i.i.i = getelementptr i8, ptr %145, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i.i, i32 33562624) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %146 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ctrl.i.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %147, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i.i, i32 0) #7, !srcloc !147
  br label %if.end111

do.body40.i.i:                                    ; preds = %init_dram_ctrl.exit.thread.i.i, %sw.bb1.i.do.body40.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %148 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ctrl.i.i, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %149, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i, i32 0) #7, !srcloc !147
  br label %io_unmap

if.end111:                                        ; preds = %do.body35.i.i, %do.body52.i.i
  %150 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %irq9, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %151, ptr noundef nonnull @mb862xx_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool114.not = icmp eq i32 %call.i, 0
  br i1 %tobool114.not, label %if.end119, label %do.end118

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %io_unmap

if.end119:                                        ; preds = %if.end111
  tail call fastcc void @mb862xxfb_init_fbinfo(ptr noundef nonnull %call2)
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 12
  %call121 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %do.end127, label %if.end128

do.end127:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %free_irq

if.end128:                                        ; preds = %if.end119
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 20
  %152 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fbops, align 4
  %fb_set_par = getelementptr inbounds %struct.fb_ops, ptr %153, i32 0, i32 6
  %154 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fb_set_par, align 4
  %call129 = tail call i32 %155(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end128.if.end135_crit_edge, label %do.end134

if.end128.if.end135_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

do.end134:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %if.end128.if.end135_crit_edge
  %call136 = tail call i32 @register_framebuffer(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %do.end142, label %if.end143

do.end142:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #7
  br label %free_irq

if.end143:                                        ; preds = %if.end135
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %156 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call144 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_dispregs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end143.if.end150_crit_edge, label %do.end149

if.end143.if.end150_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #10
  br label %if.end150

if.end150:                                        ; preds = %do.end149, %if.end143.if.end150_crit_edge
  %157 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %158)
  %cmp152 = icmp eq i32 %158, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp152, label %do.body155, label %do.body159

do.body155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 21
  %159 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %160, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #7, !srcloc !147
  br label %cleanup

do.body159:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %host = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 12
  %161 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %host, align 4
  %add.ptr162 = getelementptr i8, ptr %162, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 0) #7, !srcloc !147
  br label %cleanup

free_irq:                                         ; preds = %do.end142, %do.end127
  %ret.0 = phi i32 [ -12, %do.end127 ], [ %call136, %do.end142 ]
  %163 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %irq9, align 4
  %call166 = tail call ptr @free_irq(i32 noundef %164, ptr noundef %1) #7
  br label %io_unmap

io_unmap:                                         ; preds = %free_irq, %do.end118, %do.body40.i.i, %if.end.i.i.io_unmap_crit_edge, %do.end107.io_unmap_crit_edge
  %ret.1 = phi i32 [ %call.i, %do.end118 ], [ %ret.0, %free_irq ], [ -22, %do.body40.i.i ], [ -19, %if.end.i.i.io_unmap_crit_edge ], [ -19, %do.end107.io_unmap_crit_edge ]
  %165 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmio_base, align 4
  tail call void @iounmap(ptr noundef %166) #7
  br label %fb_unmap

fb_unmap:                                         ; preds = %io_unmap, %do.end75
  %ret.2 = phi i32 [ -5, %do.end75 ], [ %ret.1, %io_unmap ]
  %167 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fb_base, align 4
  tail call void @iounmap(ptr noundef %168) #7
  br label %rel_reg

rel_reg:                                          ; preds = %fb_unmap, %do.end64, %if.end16.rel_reg_crit_edge
  %ret.3 = phi i32 [ -5, %do.end64 ], [ %ret.2, %fb_unmap ], [ -5, %if.end16.rel_reg_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  br label %rel_fb

rel_fb:                                           ; preds = %rel_reg, %do.end15
  %ret.4 = phi i32 [ %call10, %do.end15 ], [ %ret.3, %rel_reg ]
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #7
  br label %dis_dev

dis_dev:                                          ; preds = %rel_fb, %if.end.dis_dev_crit_edge
  %ret.5 = phi i32 [ %ret.4, %rel_fb ], [ -12, %if.end.dis_dev_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %dis_dev, %do.body159, %do.body155, %do.end
  %retval.0 = phi i32 [ 0, %do.body159 ], [ 0, %do.body155 ], [ %call, %do.end ], [ %ret.5, %dis_dev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb862xx_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xx_pci_remove.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xx_pci_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xx_pci_remove.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.64, ptr noundef %fix) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disp, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 256
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %9 = and i32 %8, -385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #7, !srcloc !147
  %type = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 25
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp = icmp eq i32 %13, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp, label %do.body14, label %do.body23

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #7, !srcloc !147
  br label %if.end27

do.body23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %host = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #7, !srcloc !147
  br label %if.end27

if.end27:                                         ; preds = %do.body23, %do.body14
  tail call void @mb862xx_i2c_exit(ptr noundef %3) #7
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev28, ptr noundef nonnull @dev_attr_dispregs) #7
  tail call void @unregister_framebuffer(ptr noundef %1) #7
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #7
  %irq = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 24
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call29 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %3) #7
  %mmio_base = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base, align 4
  tail call void @iounmap(ptr noundef %23) #7
  %fb_base = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb_base, align 4
  tail call void @iounmap(ptr noundef %25) #7
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  tail call void @framebuffer_release(ptr noundef %1) #7
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xx_intr(i32 noundef %irq, ptr noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mb862xxfb_par, ptr %dev_id, i32 0, i32 25
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %ctrl = getelementptr inbounds %struct.mb862xxfb_par, ptr %dev_id, i32 0, i32 21
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %if.then1.cleanup_crit_edge, label %if.end12

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.then1
  %8 = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %do.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !147
  br label %cleanup

if.else:                                          ; preds = %if.end
  %host = getelementptr inbounds %struct.mb862xxfb_par, ptr %dev_id, i32 0, i32 12
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %17 = and i32 %16, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp32 = icmp eq i32 %17, 0
  br i1 %cmp32, label %if.else.cleanup_crit_edge, label %do.body35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %18 = xor i32 %17, -1
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %add.ptr39 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %18) #7, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %if.else.cleanup_crit_edge, %do.body, %if.end12.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then1.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %do.body35 ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb862xxfb_init_fbinfo(ptr noundef %fbi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %gc_mode = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %gc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc_mode, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 20
  %4 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mb862xxfb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 33
  %pseudo_palette2 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 27
  %5 = ptrtoint ptr %pseudo_palette2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pseudo_palette, ptr %pseudo_palette2, align 4
  %fb_base = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_base, align 4
  %8 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  %mapped_vram = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapped_vram, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 26
  %12 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %screen_size, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %fix, ptr @.str, i32 10)
  %fb_base_phys = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fb_base_phys, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %smem_start, align 4
  %mmio_base_phys = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %mmio_base_phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mmio_base_phys, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 10
  %19 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mmio_len, align 4
  %mmio_len7 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 11
  %22 = ptrtoint ptr %mmio_len7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mmio_len7, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 12
  %23 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %accel, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type_aux, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 7
  %27 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 8
  %28 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %ywrapstep, align 4
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disp, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 256
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %33 = and i32 %32, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %33)
  %.not = icmp eq i32 %33, -2147418112
  br i1 %.not, label %if.then, label %if.else136

if.then:                                          ; preds = %entry
  %and18 = lshr i32 %32, 8
  %shr = and i32 %and18, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xxfb_init_fbinfo, %if.then24)) #7
          to label %do.end [label %if.then24], !srcloc !145

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug309, ptr noundef %35, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.then
  %36 = mul nuw nsw i32 %shr, 1000000
  %mul = add nuw nsw i32 %36, 1000000
  %refclk = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %refclk, align 4
  %div = udiv i32 %mul, %38
  %var = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 17
  %39 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div, ptr %pixclock, align 4
  %40 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disp, align 4
  %add.ptr28 = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %43 = and i32 %42, -15794176
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %add33 = add nuw nsw i32 %44, 1
  %45 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add33, ptr %var, align 4
  %46 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %disp, align 4
  %add.ptr38 = getelementptr i8, ptr %47, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #7, !srcloc !148
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  %shr42 = lshr i32 %49, 16
  %and43 = and i32 %shr42, 4095
  %add44 = add nuw nsw i32 %and43, 1
  %yres = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add44, ptr %yres, align 4
  %and46 = and i32 %49, 4095
  %add47 = add nuw nsw i32 %and46, 1
  %51 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 2
  %53 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add44, ptr %yres_virtual, align 4
  %55 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disp, align 4
  %add.ptr57 = getelementptr i8, ptr %56, i32 272
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %58 = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool62.not = icmp eq i32 %58, 0
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %59 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %bits_per_pixel, align 4
  br label %if.end81

if.else:                                          ; preds = %do.end
  %60 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disp, align 4
  %add.ptr68 = getelementptr i8, ptr %61, i32 32
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %.mask = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool73.not = icmp eq i32 %.mask, 0
  %bits_per_pixel79 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  br i1 %tobool73.not, label %if.else77, label %if.then74

if.then74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %bits_per_pixel79 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 16, ptr %bits_per_pixel79, align 4
  br label %if.end81

if.else77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %bits_per_pixel79 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %bits_per_pixel79, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else77, %if.then74, %if.then63
  %65 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disp, align 4
  %add.ptr85 = getelementptr i8, ptr %66, i32 12
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #7, !srcloc !148
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  %and89 = lshr i32 %68, 16
  %shr90 = and i32 %and89, 255
  %add91 = add nuw nsw i32 %shr90, 1
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 22
  %69 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add91, ptr %hsync_len, align 4
  %and93 = lshr i32 %68, 24
  %shr94 = and i32 %and93, 63
  %add95 = add nuw nsw i32 %shr94, 1
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 23
  %70 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add95, ptr %vsync_len, align 4
  %and97 = and i32 %68, 65535
  %add98 = add nuw nsw i32 %and97, 1
  %71 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disp, align 4
  %add.ptr102 = getelementptr i8, ptr %72, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %74 = and i32 %73, 65295
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %shr107 = lshr exact i32 %75, 16
  %76 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %var, align 4
  %sub = sub i32 %add98, %77
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 19
  %78 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub, ptr %right_margin, align 4
  %79 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hsync_len, align 4
  %81 = add i32 %and97, %80
  %sub115 = sub i32 %shr107, %81
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 18
  %82 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub115, ptr %left_margin, align 4
  %83 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %disp, align 4
  %add.ptr120 = getelementptr i8, ptr %84, i32 16
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  %86 = and i32 %85, 65295
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %shr125 = lshr exact i32 %87, 16
  %88 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %yres, align 4
  %sub129 = sub i32 %add47, %89
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 21
  %90 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub129, ptr %lower_margin, align 4
  %91 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vsync_len, align 4
  %93 = add i32 %and46, %92
  %sub134 = sub i32 %shr125, %93
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 20
  %94 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub134, ptr %upper_margin, align 4
  br label %if.end172

if.else136:                                       ; preds = %entry
  %tobool137.not = icmp eq ptr %3, null
  br i1 %tobool137.not, label %if.else161, label %do.body139

do.body139:                                       ; preds = %if.else136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xxfb_init_fbinfo, %if.then151)) #7
          to label %do.end155 [label %if.then151], !srcloc !145

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #9
  %dev152 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %95 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev152, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug310, ptr noundef %96, ptr noundef nonnull @.str.44) #7
  br label %do.end155

do.end155:                                        ; preds = %if.then151, %do.body139
  %var156 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  tail call void @fb_videomode_to_var(ptr noundef %var156, ptr noundef nonnull %3) #7
  %def_bpp = getelementptr inbounds %struct.mb862xx_gc_mode, ptr %3, i32 0, i32 1
  %97 = ptrtoint ptr %def_bpp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %def_bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool157.not = icmp eq i32 %98, 0
  %spec.select = select i1 %tobool157.not, i32 8, i32 %98
  %bits_per_pixel160 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %99 = ptrtoint ptr %bits_per_pixel160 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %spec.select, ptr %bits_per_pixel160, align 4
  br label %if.end172

if.else161:                                       ; preds = %if.else136
  %var162 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %call163 = tail call i32 @fb_find_mode(ptr noundef %var162, ptr noundef %fbi, ptr noundef nonnull @.str.45, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 16) #7
  %100 = zext i32 %call163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call163, label %if.else161.if.end172_crit_edge [
    i32 0, label %if.else161.do.end168_crit_edge
    i32 4, label %if.else161.do.end168_crit_edge11
  ]

if.else161.do.end168_crit_edge11:                 ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end168

if.else161.do.end168_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end168

if.else161.if.end172_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

do.end168:                                        ; preds = %if.else161.do.end168_crit_edge, %if.else161.do.end168_crit_edge11
  %dev169 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %101 = ptrtoint ptr %dev169 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev169, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.46) #10
  br label %cleanup249

if.end172:                                        ; preds = %if.else161.if.end172_crit_edge, %do.end155, %if.end81
  %var173 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 4
  %103 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 5
  %104 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %yoffset, align 4
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 7
  %105 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %grayscale, align 4
  %nonstd = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 12
  %106 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %nonstd, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 14
  %107 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 15
  %108 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %width, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 16
  %109 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %accel_flags, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 25
  %110 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %vmode, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 13
  %111 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %activate, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 2
  %112 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1060864, ptr %flags, align 4
  %113 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fbops, align 4
  %fb_check_var = getelementptr inbounds %struct.fb_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %fb_check_var to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fb_check_var, align 4
  %call184 = tail call i32 %116(ptr noundef %var173, ptr noundef %fbi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end172.if.end191_crit_edge, label %do.end189

if.end172.if.end191_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

do.end189:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %dev190 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %117 = ptrtoint ptr %dev190 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev190, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.48) #10
  br label %if.end191

if.end191:                                        ; preds = %do.end189, %if.end172.if.end191_crit_edge
  %bits_per_pixel193 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %119 = ptrtoint ptr %bits_per_pixel193 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bits_per_pixel193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %120)
  %cmp194 = icmp eq i32 %120, 8
  %cond195 = select i1 %cmp194, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 5
  %121 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %cond195, ptr %visual, align 4
  %xres_virtual198 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 2
  %122 = ptrtoint ptr %xres_virtual198 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %xres_virtual198, align 4
  %mul201 = mul i32 %123, %120
  %div2021 = lshr i32 %mul201, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 9
  %124 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %div2021, ptr %line_length, align 4
  %yres_virtual207 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 3
  %125 = ptrtoint ptr %yres_virtual207 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %yres_virtual207, align 4
  %mul208 = mul i32 %div2021, %126
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7, i32 2
  %127 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %mul208, ptr %smem_len, align 4
  %128 = ptrtoint ptr %mapped_vram to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mapped_vram, align 4
  %sub212 = add i32 %129, -1890304
  %cap_buf = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 10
  %130 = ptrtoint ptr %cap_buf to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %sub212, ptr %cap_buf, align 4
  %cap_len = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 11
  %131 = ptrtoint ptr %cap_len to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1824768, ptr %cap_len, align 4
  %l1_cfg = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31
  %132 = ptrtoint ptr %l1_cfg to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %l1_cfg, align 4
  %sy = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 1
  %133 = ptrtoint ptr %sy to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %sy, align 2
  %sw = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 2
  %134 = ptrtoint ptr %sw to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 720, ptr %sw, align 4
  %sh = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 3
  %135 = ptrtoint ptr %sh to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 576, ptr %sh, align 2
  %dx = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 4
  %136 = ptrtoint ptr %dx to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %dx, align 4
  %dy = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 5
  %137 = ptrtoint ptr %dy to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %dy, align 2
  %dw = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 6
  %138 = ptrtoint ptr %dw to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 720, ptr %dw, align 4
  %dh = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 7
  %139 = ptrtoint ptr %dh to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 576, ptr %dh, align 2
  %140 = ptrtoint ptr %bits_per_pixel193 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bits_per_pixel193, align 4
  %div2242 = lshr i32 %141, 3
  %mul225 = mul i32 %div2242, 720
  %div226 = sdiv i32 %mul225, 64
  %142 = and i32 %mul225, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool227.not = icmp ne i32 %142, 0
  %cond228 = zext i1 %tobool227.not to i32
  %add229 = add nsw i32 %div226, %cond228
  %l1_stride = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 32
  %143 = ptrtoint ptr %l1_stride to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add229, ptr %l1_stride, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %144 = ptrtoint ptr %l1_stride to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %l1_stride, align 4
  %shl = shl i32 %145, 16
  %or = or i32 %shl, -2147483647
  %146 = tail call i32 @llvm.bswap.i32(i32 %or)
  %cap = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %147 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cap, align 4
  %add.ptr234 = getelementptr i8, ptr %148, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 %146) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %149 = ptrtoint ptr %cap_buf to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cap_buf, align 4
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %152 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cap, align 4
  %add.ptr240 = getelementptr i8, ptr %153, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %151) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %154 = ptrtoint ptr %cap_buf to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cap_buf, align 4
  %156 = ptrtoint ptr %cap_len to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cap_len, align 4
  %add246 = add i32 %157, %155
  %158 = tail call i32 @llvm.bswap.i32(i32 %add246)
  %159 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cap, align 4
  %add.ptr248 = getelementptr i8, ptr %160, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 %158) #7, !srcloc !147
  br label %cleanup249

cleanup249:                                       ; preds = %if.end191, %do.end168
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mb862xx_i2c_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 22
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xxfb_check_var.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xxfb_check_var, %if.then5)) #7
          to label %if.end7 [label %if.then5], !srcloc !145

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xxfb_check_var.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body, %entry.if.end7_crit_edge
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %4 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %if.end7.cleanup117_crit_edge, label %lor.lhs.false

if.end7.cleanup117_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

lor.lhs.false:                                    ; preds = %if.end7
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %6 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp8 = icmp ugt i32 %7, 255
  br i1 %cmp8, label %lor.lhs.false.cleanup117_crit_edge, label %if.end10

lor.lhs.false.cleanup117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

if.end10:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %10 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %right_margin, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp11 = icmp ugt i32 %add, 4095
  br i1 %cmp11, label %if.end10.cleanup117_crit_edge, label %if.end13

if.end10.cleanup117_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

if.end13:                                         ; preds = %if.end10
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %14 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lower_margin, align 4
  %add14 = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add14)
  %cmp15 = icmp ugt i32 %add14, 4096
  br i1 %cmp15, label %if.end13.cleanup117_crit_edge, label %if.end17

if.end13.cleanup117_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

if.end17:                                         ; preds = %if.end13
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %16 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %left_margin.i, align 4
  %add1.i = add nuw nsw i32 %add, %5
  %add2.i = add i32 %add1.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add2.i)
  %cmp19 = icmp sgt i32 %add2.i, 4096
  br i1 %cmp19, label %if.end17.cleanup117_crit_edge, label %lor.lhs.false20

if.end17.cleanup117_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

lor.lhs.false20:                                  ; preds = %if.end17
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %18 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upper_margin.i, align 4
  %add1.i170 = add nuw nsw i32 %add14, %7
  %add2.i171 = add i32 %add1.i170, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add2.i171)
  %cmp22 = icmp sgt i32 %add2.i171, 4096
  br i1 %cmp22, label %lor.lhs.false20.cleanup117_crit_edge, label %if.end24

lor.lhs.false20.cleanup117_crit_edge:             ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

if.end24:                                         ; preds = %lor.lhs.false20
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %20 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp25 = icmp ugt i32 %21, 4096
  br i1 %cmp25, label %if.end24.cleanup117_crit_edge, label %lor.lhs.false26

if.end24.cleanup117_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

lor.lhs.false26:                                  ; preds = %if.end24
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %22 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %23)
  %cmp27 = icmp ugt i32 %23, 4096
  br i1 %cmp27, label %lor.lhs.false26.cleanup117_crit_edge, label %if.end29

lor.lhs.false26.cleanup117_crit_edge:             ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

if.end29:                                         ; preds = %lor.lhs.false26
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %24 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %cmp30 = icmp ult i32 %25, 9
  br i1 %cmp30, label %if.end29.if.end44.sink.split_crit_edge, label %if.else

if.end29.if.end44.sink.split_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %25)
  %cmp34 = icmp ult i32 %25, 17
  br i1 %cmp34, label %if.else.if.end44.sink.split_crit_edge, label %if.else37

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %25)
  %cmp39 = icmp ult i32 %25, 33
  br i1 %cmp39, label %if.else37.if.end44.sink.split_crit_edge, label %if.else37.if.end44_crit_edge

if.else37.if.end44_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.else37.if.end44.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.else37.if.end44.sink.split_crit_edge, %if.else.if.end44.sink.split_crit_edge, %if.end29.if.end44.sink.split_crit_edge
  %.sink = phi i32 [ 8, %if.end29.if.end44.sink.split_crit_edge ], [ 16, %if.else.if.end44.sink.split_crit_edge ], [ 32, %if.else37.if.end44.sink.split_crit_edge ]
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %bits_per_pixel, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else37.if.end44_crit_edge
  %var45 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %27 = ptrtoint ptr %var45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %var45, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %29 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i = mul i32 %30, %28
  %31 = and i32 %mul.i, 504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool47.not = icmp eq i32 %31, 0
  br i1 %tobool47.not, label %if.end44.if.end67_crit_edge, label %if.then48

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then48:                                        ; preds = %if.end44
  %32 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bits_per_pixel, align 4
  br label %do.body50

do.body50:                                        ; preds = %land.rhs.do.body50_crit_edge, %if.then48
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 4
  %add52 = add i32 %34, 8
  store i32 %add52, ptr %bits_per_pixel, align 4
  %35 = ptrtoint ptr %var45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %var45, align 4
  %37 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i173 = mul i32 %38, %36
  %39 = and i32 %mul.i173, 504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool57.not = icmp eq i32 %39, 0
  br i1 %tobool57.not, label %do.body50.if.end67_crit_edge, label %land.rhs

do.body50.if.end67_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

land.rhs:                                         ; preds = %do.body50
  %cmp59 = icmp ult i32 %add52, 33
  br i1 %cmp59, label %land.rhs.do.body50_crit_edge, label %land.rhs.cleanup117_crit_edge

land.rhs.cleanup117_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

land.rhs.do.body50_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

if.end67:                                         ; preds = %do.body50.if.end67_crit_edge, %if.end44.if.end67_crit_edge
  %40 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %41, %9
  %42 = and i32 %mul, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp70.not = icmp eq i32 %42, 0
  br i1 %cmp70.not, label %if.end72, label %if.end67.cleanup117_crit_edge

if.end67.cleanup117_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

if.end72:                                         ; preds = %if.end67
  %43 = add i32 %41, -8
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 29)
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %44, label %if.end72.cleanup117_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb85
    i32 2, label %if.end72.sw.bb100_crit_edge
    i32 3, label %if.end72.sw.bb100_crit_edge179
  ]

if.end72.sw.bb100_crit_edge179:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb100

if.end72.sw.bb100_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb100

if.end72.cleanup117_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup117

sw.bb:                                            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %41, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %length76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %41, ptr %length76, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %length78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %41, ptr %length78, align 4
  %49 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %red, align 4
  %50 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %green, align 4
  %51 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %blue, align 4
  %length84 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  br label %cleanup117.sink.split

sw.bb85:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %red86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %length87 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %length87, align 4
  %green88 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %length89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %length89, align 4
  %blue90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length91 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %length91 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 5, ptr %length91, align 4
  %55 = ptrtoint ptr %red86 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 10, ptr %red86, align 4
  %56 = ptrtoint ptr %green88 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %green88, align 4
  %57 = ptrtoint ptr %blue90 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %blue90, align 4
  %length99 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  br label %cleanup117.sink.split

sw.bb100:                                         ; preds = %if.end72.sw.bb100_crit_edge, %if.end72.sw.bb100_crit_edge179
  %transp101 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length102 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %58 = ptrtoint ptr %length102 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %length102, align 4
  %red103 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length104 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %length104 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %length104, align 4
  %green105 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length106 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %length106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %length106, align 4
  %blue107 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length108 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %length108 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %length108, align 4
  %62 = ptrtoint ptr %transp101 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 24, ptr %transp101, align 4
  %63 = ptrtoint ptr %red103 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 16, ptr %red103, align 4
  %64 = ptrtoint ptr %green105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %green105, align 4
  br label %cleanup117.sink.split

cleanup117.sink.split:                            ; preds = %sw.bb100, %sw.bb85, %sw.bb
  %length84.sink = phi ptr [ %length84, %sw.bb ], [ %length99, %sw.bb85 ], [ %blue107, %sw.bb100 ]
  %65 = ptrtoint ptr %length84.sink to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %length84.sink, align 4
  br label %cleanup117

cleanup117:                                       ; preds = %cleanup117.sink.split, %if.end72.cleanup117_crit_edge, %if.end67.cleanup117_crit_edge, %land.rhs.cleanup117_crit_edge, %lor.lhs.false26.cleanup117_crit_edge, %if.end24.cleanup117_crit_edge, %lor.lhs.false20.cleanup117_crit_edge, %if.end17.cleanup117_crit_edge, %if.end13.cleanup117_crit_edge, %if.end10.cleanup117_crit_edge, %lor.lhs.false.cleanup117_crit_edge, %if.end7.cleanup117_crit_edge
  %retval.1 = phi i32 [ -22, %lor.lhs.false.cleanup117_crit_edge ], [ -22, %if.end7.cleanup117_crit_edge ], [ -22, %if.end10.cleanup117_crit_edge ], [ -22, %if.end13.cleanup117_crit_edge ], [ -22, %lor.lhs.false20.cleanup117_crit_edge ], [ -22, %if.end17.cleanup117_crit_edge ], [ -22, %lor.lhs.false26.cleanup117_crit_edge ], [ -22, %if.end24.cleanup117_crit_edge ], [ -22, %if.end67.cleanup117_crit_edge ], [ -22, %if.end72.cleanup117_crit_edge ], [ 0, %cleanup117.sink.split ], [ -22, %land.rhs.cleanup117_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_set_par(ptr noundef %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xxfb_set_par.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xxfb_set_par, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xxfb_set_par.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %var = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  tail call void @mb862xxfb_init_accel(ptr noundef %fbi, ptr noundef nonnull @mb862xxfb_ops, i32 noundef %7) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %pre_init = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %pre_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pre_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 256
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %13 = and i32 %12, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disp, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %13) #7, !srcloc !147
  %refclk = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refclk, align 4
  %var17 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 17
  %18 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000, %19
  %div18 = udiv i32 %17, %div
  %sub = add i32 %div18, -1
  %20 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disp, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  %23 = and i32 %22, -16711681
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %shl = shl i32 %sub, 8
  %or = or i32 %24, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disp, align 4
  %add.ptr31 = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %25) #7, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xxfb_set_par.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xxfb_set_par, %if.then44)) #7
          to label %do.end48 [label %if.then44], !srcloc !145

if.then44:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xxfb_set_par.__UNIQUE_ID_ddebug307, ptr noundef %29, ptr noundef nonnull @.str.53, i32 noundef %sub) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %if.end8
  %30 = ptrtoint ptr %var17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %var17, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 6
  %32 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i = shl i32 %31, 7
  %34 = mul i32 %mul.i, %33
  %shl52 = and i32 %34, -65536
  %yres = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres, align 4
  %sub54 = add i32 %36, -1
  %or55 = or i32 %shl52, %sub54
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %cmp57 = icmp eq i32 %33, 16
  %or59 = or i32 %or55, -2147483648
  %spec.select = select i1 %cmp57, i32 %or59, i32 %or55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %38 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disp, align 4
  %add.ptr65 = getelementptr i8, ptr %39, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %37) #7, !srcloc !147
  %40 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %41)
  %cmp68 = icmp eq i32 %41, 32
  br i1 %cmp68, label %if.then69, label %do.end48.do.body84_crit_edge

do.end48.do.body84_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

if.then69:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disp, align 4
  %add.ptr73 = getelementptr i8, ptr %43, i32 272
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %45 = or i32 %44, 64
  %46 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %disp, align 4
  %add.ptr82 = getelementptr i8, ptr %47, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %45) #7, !srcloc !147
  br label %do.body84

do.body84:                                        ; preds = %if.then69, %do.end48.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disp, align 4
  %add.ptr88 = getelementptr i8, ptr %49, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 0) #7, !srcloc !147
  %50 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres, align 4
  %sub91 = shl i32 %51, 16
  %shl92 = add i32 %sub91, -65536
  %52 = ptrtoint ptr %var17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var17, align 4
  %or95 = or i32 %shl92, %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %or95)
  %55 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disp, align 4
  %add.ptr100 = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %54) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disp, align 4
  %add.ptr105 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 0) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %disp, align 4
  %add.ptr110 = getelementptr i8, ptr %60, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 0) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %disp, align 4
  %add.ptr115 = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 0) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %disp, align 4
  %add.ptr120 = getelementptr i8, ptr %64, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 0) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disp, align 4
  %add.ptr125 = getelementptr i8, ptr %66, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %54) #7, !srcloc !147
  %67 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %disp, align 4
  %add.ptr129 = getelementptr i8, ptr %68, i32 160
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %70 = and i32 %69, -12289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disp, align 4
  %add.ptr138 = getelementptr i8, ptr %72, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %70) #7, !srcloc !147
  %73 = ptrtoint ptr %var17 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %var17, align 4
  %sub141 = add i32 %74, -1
  %shl142 = shl i32 %sub141, 16
  %or146 = or i32 %shl142, %sub141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %75 = tail call i32 @llvm.bswap.i32(i32 %or146)
  %76 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disp, align 4
  %add.ptr151 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %75) #7, !srcloc !147
  %78 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %yres, align 4
  %sub154 = shl i32 %79, 16
  %shl155 = add i32 %sub154, -65536
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 21
  %80 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lower_margin.i, align 4
  %add.i = add i32 %79, -1
  %sub.i = add i32 %add.i, %81
  %or158 = or i32 %shl155, %sub.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %82 = tail call i32 @llvm.bswap.i32(i32 %or158)
  %83 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %disp, align 4
  %add.ptr163 = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %82) #7, !srcloc !147
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 23
  %85 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vsync_len, align 4
  %sub165 = shl i32 %86, 24
  %shl166 = add i32 %sub165, -16777216
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 22
  %87 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hsync_len, align 4
  %sub168 = shl i32 %88, 16
  %shl169 = add i32 %sub168, -65536
  %89 = ptrtoint ptr %var17 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %var17, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 19
  %91 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %right_margin.i, align 4
  %add.i281 = add i32 %90, -1
  %sub.i282 = add i32 %add.i281, %92
  %or172 = or i32 %shl169, %shl166
  %or173 = or i32 %or172, %sub.i282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %or173)
  %94 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %disp, align 4
  %add.ptr178 = getelementptr i8, ptr %95, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %93) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %var17 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %var17, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 18
  %98 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %left_margin.i, align 4
  %add.i283 = add i32 %99, %97
  %100 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %right_margin.i, align 4
  %add1.i = add i32 %add.i283, %101
  %102 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hsync_len, align 4
  %add2.i = add i32 %add1.i, %103
  %sub184 = shl i32 %add2.i, 16
  %shl185 = add i32 %sub184, -65536
  %104 = tail call i32 @llvm.bswap.i32(i32 %shl185)
  %105 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %disp, align 4
  %add.ptr188 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %104) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %yres, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 20
  %109 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %upper_margin.i, align 4
  %add.i286 = add i32 %110, %108
  %111 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lower_margin.i, align 4
  %add1.i288 = add i32 %add.i286, %112
  %113 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vsync_len, align 4
  %add2.i289 = add i32 %add1.i288, %114
  %sub194 = shl i32 %add2.i289, 16
  %shl195 = add i32 %sub194, -65536
  %115 = tail call i32 @llvm.bswap.i32(i32 %shl195)
  %116 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %disp, align 4
  %add.ptr198 = getelementptr i8, ptr %117, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 %115) #7, !srcloc !147
  %118 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %disp, align 4
  %add.ptr202 = getelementptr i8, ptr %119, i32 256
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  %121 = and i32 %120, -67109249
  %122 = or i32 %121, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %123 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %disp, align 4
  %add.ptr212 = getelementptr i8, ptr %124, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 %122) #7, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %do.body84, %if.end5.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %red2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %6
  %shr.i = lshr i32 %and.i, %sub.i
  %7 = ptrtoint ptr %red2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %red2, align 4
  %shl.i = shl i32 %shr.i, %8
  %green4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i36 = and i32 %green, 65535
  %length.i37 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %9 = ptrtoint ptr %length.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i37, align 4
  %sub.i38 = sub i32 16, %10
  %shr.i39 = lshr i32 %and.i36, %sub.i38
  %11 = ptrtoint ptr %green4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %green4, align 4
  %shl.i40 = shl i32 %shr.i39, %12
  %or = or i32 %shl.i40, %shl.i
  %blue7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i41 = and i32 %blue, 65535
  %length.i42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %13 = ptrtoint ptr %length.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i42, align 4
  %sub.i43 = sub i32 16, %14
  %shr.i44 = lshr i32 %and.i41, %sub.i43
  %15 = ptrtoint ptr %blue7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blue7, align 4
  %shl.i45 = shl i32 %shr.i44, %16
  %or9 = or i32 %or, %shl.i45
  %arrayidx = getelementptr %struct.mb862xxfb_par, ptr %1, i32 0, i32 33, i32 %regno
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or9, ptr %arrayidx, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp11 = icmp ult i32 %regno, 256
  br i1 %cmp11, label %if.then12, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %18 = shl i32 %red, 8
  %shl = and i32 %18, -65536
  %shr13 = and i32 %green, -256
  %or15 = or i32 %shl, %shr13
  %shr16 = lshr i32 %blue, 8
  %or17 = or i32 %or15, %shr16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disp, align 4
  %mul = shl nuw nsw i32 %regno, 2
  %add = add nuw nsw i32 %mul, 1024
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #7, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.bb10.cleanup_crit_edge, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_blank(i32 noundef %mode, ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xxfb_blank.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xxfb_blank, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 22
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xxfb_blank.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %mode) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %mode, label %do.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb12
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disp, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %8 = and i32 %7, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disp, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %8) #7, !srcloc !147
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %disp15 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %disp15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disp15, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 256
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %14 = or i32 %13, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %disp15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disp15, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #7, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_pan(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %shl = shl i32 %3, 16
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset, align 4
  %or = or i32 %shl, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disp, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !147
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres_virtual, align 4
  %shl3 = shl i32 %10, 16
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xres_virtual, align 4
  %or5 = or i32 %shl3, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %14 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disp, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #7, !srcloc !147
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xxfb_ioctl(ptr nocapture noundef readonly %fbi, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %l1_cfg2 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147201792, label %if.then.i
    i32 1074023681, label %if.then.i363
    i32 1074023682, label %sw.bb144
    i32 1074023683, label %sw.bb253
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.58, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1226833920) #11, !srcloc !219
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %l1_cfg2, i32 noundef 20) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %l1_cfg2, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i363:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.58, i32 noundef 156) #7
  %call.i.i362 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i362, label %if.then.i363.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i363.if.then11.i.i_crit_edge:             ; preds = %if.then.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i363
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1226833920) #11, !srcloc !220
  %asmresult.i.i364 = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i364)
  %cmp.i.i365 = icmp eq i32 %asmresult.i.i364, 0
  br i1 %cmp.i.i365, label %if.end.i.i367, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !221

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i367:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i366 = tail call zeroext i1 @__kasan_check_write(ptr noundef %l1_cfg2, i32 noundef 20) #7
  %6 = tail call i32 @llvm.read_register.i32(metadata !135) #7
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !222
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %l1_cfg2, ptr noundef %2, i32 noundef 20) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #7, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i367.if.then11.i.i_crit_edge, !prof !221

if.end.i.i367.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i367
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i367.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i363.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i367.if.then11.i.i_crit_edge ], [ 20, %if.then.i363.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %l1_cfg2, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i367
  %dh = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 7
  %10 = ptrtoint ptr %dh to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dh, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %dw = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 6
  %12 = ptrtoint ptr %dw to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp10 = icmp eq i16 %13, 0
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %sw = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 2
  %14 = ptrtoint ptr %sw to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sw, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %13)
  %cmp17.not = icmp ult i16 %15, %13
  br i1 %cmp17.not, label %if.end13.if.else_crit_edge, label %land.lhs.true

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %sh = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 3
  %16 = ptrtoint ptr %sh to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sh, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %11)
  %cmp22.not = icmp ult i16 %17, %11
  br i1 %cmp22.not, label %land.lhs.true.if.else_crit_edge, label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %sh to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sh, align 2
  %conv26 = zext i16 %19 to i32
  %shl = shl nuw nsw i32 %conv26, 11
  %20 = ptrtoint ptr %dh to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dh, align 2
  %conv28 = zext i16 %21 to i32
  %div = udiv i32 %shl, %conv28
  %shl29 = shl i32 %div, 16
  %22 = ptrtoint ptr %sw to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sw, align 4
  %conv31 = zext i16 %23 to i32
  %shl32 = shl nuw nsw i32 %conv31, 11
  %24 = ptrtoint ptr %dw to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dw, align 4
  %conv34 = zext i16 %25 to i32
  %div35 = udiv i32 %shl32, %conv34
  %or = or i32 %div35, %shl29
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %cap = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cap, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #7, !srcloc !147
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disp, align 4
  %add.ptr36 = getelementptr i8, ptr %30, i32 288
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %32 = and i32 %31, -3
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  br label %if.end104

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %13)
  %cmp43.not = icmp ugt i16 %15, %13
  br i1 %cmp43.not, label %if.else.if.end104_crit_edge, label %land.lhs.true45

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

land.lhs.true45:                                  ; preds = %if.else
  %sh46 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 3
  %34 = ptrtoint ptr %sh46 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sh46, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %11)
  %cmp50.not = icmp ugt i16 %35, %11
  br i1 %cmp50.not, label %land.lhs.true45.if.end104_crit_edge, label %do.body53

land.lhs.true45.if.end104_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.body53:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %sh46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sh46, align 2
  %conv57 = zext i16 %37 to i32
  %shl58 = shl nuw nsw i32 %conv57, 11
  %38 = ptrtoint ptr %dh to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dh, align 2
  %conv60 = zext i16 %39 to i32
  %div61 = udiv i32 %shl58, %conv60
  %shl62 = shl i32 %div61, 16
  %40 = ptrtoint ptr %sw to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sw, align 4
  %conv64 = zext i16 %41 to i32
  %shl65 = shl nuw nsw i32 %conv64, 11
  %42 = ptrtoint ptr %dw to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dw, align 4
  %conv67 = zext i16 %43 to i32
  %div68 = udiv i32 %shl65, %conv67
  %or69 = or i32 %div68, %shl62
  %44 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %cap70 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %45 = ptrtoint ptr %cap70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cap70, align 4
  %add.ptr71 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %44) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %sw to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %sw, align 4
  %49 = lshr i16 %48, 1
  %50 = zext i16 %49 to i32
  %shl77 = shl nuw nsw i32 %50, 16
  %51 = ptrtoint ptr %sh46 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sh46, align 2
  %conv79 = zext i16 %52 to i32
  %or80 = or i32 %shl77, %conv79
  %53 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %54 = ptrtoint ptr %cap70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cap70, align 4
  %add.ptr82 = getelementptr i8, ptr %55, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %53) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %dw to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dw, align 4
  %58 = lshr i16 %57, 1
  %59 = zext i16 %58 to i32
  %shl89 = shl nuw nsw i32 %59, 16
  %60 = ptrtoint ptr %dh to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %dh, align 2
  %conv91 = zext i16 %61 to i32
  %or92 = or i32 %shl89, %conv91
  %62 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %63 = ptrtoint ptr %cap70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cap70, align 4
  %add.ptr94 = getelementptr i8, ptr %64, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %62) #7, !srcloc !147
  %disp97 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %65 = ptrtoint ptr %disp97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disp97, align 4
  %add.ptr98 = getelementptr i8, ptr %66, i32 288
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %68 = or i32 %67, 2
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  br label %if.end104

if.end104:                                        ; preds = %do.body53, %land.lhs.true45.if.end104_crit_edge, %if.else.if.end104_crit_edge, %do.body
  %l1em.0 = phi i32 [ %33, %do.body ], [ %69, %do.body53 ], [ 0, %land.lhs.true45.if.end104_crit_edge ], [ 0, %if.else.if.end104_crit_edge ]
  %mirror = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 8
  %70 = ptrtoint ptr %mirror to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mirror, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool105.not = icmp eq i32 %71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %cap129 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %72 = ptrtoint ptr %cap129 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cap129, align 4
  %add.ptr130 = getelementptr i8, ptr %73, i32 16
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool105.not, label %do.body124, label %do.body107

do.body107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %75 = or i32 %74, 268435456
  %76 = ptrtoint ptr %cap129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cap129, align 4
  %add.ptr119 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %75) #7, !srcloc !147
  %78 = ptrtoint ptr %dw to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %dw, align 4
  %conv121 = zext i16 %79 to i32
  %mul = shl nuw nsw i32 %conv121, 1
  %sub = add nsw i32 %mul, -8
  %or122 = or i32 %sub, %l1em.0
  br label %do.body139

do.body124:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %80 = and i32 %74, -268435457
  %81 = ptrtoint ptr %cap129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cap129, align 4
  %add.ptr136 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %80) #7, !srcloc !147
  %and137 = and i32 %l1em.0, -65536
  br label %do.body139

do.body139:                                       ; preds = %do.body124, %do.body107
  %l1em.1 = phi i32 [ %or122, %do.body107 ], [ %and137, %do.body124 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %l1em.1)
  %disp142 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %84 = ptrtoint ptr %disp142 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %disp142, align 4
  %add.ptr143 = getelementptr i8, ptr %85, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %83) #7, !srcloc !147
  br label %sw.epilog

sw.bb144:                                         ; preds = %entry
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool145.not = icmp eq i32 %87, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool145.not, label %do.body226, label %do.body147

do.body147:                                       ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  %cap_buf = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 10
  %88 = ptrtoint ptr %cap_buf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cap_buf, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %disp150 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %91 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %disp150, align 4
  %add.ptr151 = getelementptr i8, ptr %92, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %90) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %sy = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 1
  %93 = ptrtoint ptr %sy to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %sy, align 2
  %95 = lshr i16 %94, 1
  %96 = zext i16 %95 to i32
  %shl157 = shl nuw nsw i32 %96, 16
  %97 = ptrtoint ptr %l1_cfg2 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %l1_cfg2, align 4
  %conv158 = zext i16 %98 to i32
  %or159 = or i32 %shl157, %conv158
  %99 = tail call i32 @llvm.bswap.i32(i32 %or159)
  %cap160 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %100 = ptrtoint ptr %cap160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cap160, align 4
  %add.ptr161 = getelementptr i8, ptr %101, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %99) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @arm_heavy_mb() #7
  %sh165 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 3
  %102 = ptrtoint ptr %sh165 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %sh165, align 2
  %conv166 = zext i16 %103 to i32
  %shl167 = shl nuw i32 %conv166, 16
  %sw168 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 2
  %104 = ptrtoint ptr %sw168 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %sw168, align 4
  %conv169 = zext i16 %105 to i32
  %or170 = or i32 %shl167, %conv169
  %106 = tail call i32 @llvm.bswap.i32(i32 %or170)
  %107 = ptrtoint ptr %cap160 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cap160, align 4
  %add.ptr172 = getelementptr i8, ptr %108, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %106) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %l1_stride = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 32
  %109 = ptrtoint ptr %l1_stride to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %l1_stride, align 4
  %shl176 = shl i32 %110, 16
  %or177 = or i32 %shl176, -536870912
  %111 = tail call i32 @llvm.bswap.i32(i32 %or177)
  %112 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %disp150, align 4
  %add.ptr179 = getelementptr i8, ptr %113, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %111) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @arm_heavy_mb() #7
  %dy = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 5
  %114 = ptrtoint ptr %dy to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %dy, align 2
  %conv183 = zext i16 %115 to i32
  %shl184 = shl nuw i32 %conv183, 16
  %dx = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 4
  %116 = ptrtoint ptr %dx to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %dx, align 4
  %conv185 = zext i16 %117 to i32
  %or186 = or i32 %shl184, %conv185
  %118 = tail call i32 @llvm.bswap.i32(i32 %or186)
  %119 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %disp150, align 4
  %add.ptr188 = getelementptr i8, ptr %120, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %118) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void @arm_heavy_mb() #7
  %dh192 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 7
  %121 = ptrtoint ptr %dh192 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %dh192, align 2
  %conv193 = zext i16 %122 to i32
  %sub194 = shl nuw i32 %conv193, 16
  %shl195 = add i32 %sub194, -65536
  %dw196 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 31, i32 6
  %123 = ptrtoint ptr %dw196 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %dw196, align 4
  %conv197 = zext i16 %124 to i32
  %or198 = or i32 %shl195, %conv197
  %125 = tail call i32 @llvm.bswap.i32(i32 %or198)
  %126 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %disp150, align 4
  %add.ptr200 = getelementptr i8, ptr %127, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 %125) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %disp150, align 4
  %add.ptr205 = getelementptr i8, ptr %129, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 16777216) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %cap160 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cap160, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 33554563) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  %132 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %disp150, align 4
  %add.ptr217 = getelementptr i8, ptr %133, i32 256
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  %135 = or i32 %134, 640
  %136 = ptrtoint ptr %disp150 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %disp150, align 4
  %add.ptr224 = getelementptr i8, ptr %137, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %135) #7, !srcloc !147
  br label %sw.epilog

do.body226:                                       ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  %cap231 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %138 = ptrtoint ptr %cap231 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cap231, align 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  %141 = and i32 %140, -129
  %142 = ptrtoint ptr %cap231 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cap231, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %disp244 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %144 = ptrtoint ptr %disp244 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %disp244, align 4
  %add.ptr245 = getelementptr i8, ptr %145, i32 256
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %147 = and i32 %146, -513
  %148 = ptrtoint ptr %disp244 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %disp244, align 4
  %add.ptr251 = getelementptr i8, ptr %149, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr251, i32 %147) #7, !srcloc !147
  br label %sw.epilog

sw.bb253:                                         ; preds = %entry
  %150 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool254.not = icmp eq i32 %151, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %cap275 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 16
  %152 = ptrtoint ptr %cap275 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cap275, align 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool254.not, label %do.body270, label %do.body256

do.body256:                                       ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #9
  %155 = or i32 %154, 128
  %156 = ptrtoint ptr %cap275 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cap275, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #7, !srcloc !147
  br label %sw.epilog

do.body270:                                       ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #9
  %158 = and i32 %154, -129
  %159 = ptrtoint ptr %cap275 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cap275, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #7, !srcloc !147
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body270, %do.body256, %do.body226, %do.body147, %do.body139, %copy_to_user.exit.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb862xxfb_init_accel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dispregs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
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
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !148
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef %7)
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %call4
  %8 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disp, align 4
  %add.ptr.1 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #7, !srcloc !148
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @.str.60, i32 noundef 4, i32 noundef %11)
  %add.ptr5.1 = getelementptr i8, ptr %add.ptr5, i32 %call4.1
  %12 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disp, align 4
  %add.ptr.2 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #7, !srcloc !148
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.1, ptr noundef nonnull @.str.60, i32 noundef 8, i32 noundef %15)
  %add.ptr5.2 = getelementptr i8, ptr %add.ptr5.1, i32 %call4.2
  %16 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disp, align 4
  %add.ptr.3 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #7, !srcloc !148
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.2, ptr noundef nonnull @.str.60, i32 noundef 12, i32 noundef %19)
  %add.ptr5.3 = getelementptr i8, ptr %add.ptr5.2, i32 %call4.3
  %20 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disp, align 4
  %add.ptr.4 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #7, !srcloc !148
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.3, ptr noundef nonnull @.str.60, i32 noundef 16, i32 noundef %23)
  %add.ptr5.4 = getelementptr i8, ptr %add.ptr5.3, i32 %call4.4
  %24 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disp, align 4
  %add.ptr.5 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #7, !srcloc !148
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.4, ptr noundef nonnull @.str.60, i32 noundef 20, i32 noundef %27)
  %add.ptr5.5 = getelementptr i8, ptr %add.ptr5.4, i32 %call4.5
  %28 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disp, align 4
  %add.ptr.6 = getelementptr i8, ptr %29, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #7, !srcloc !148
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.5, ptr noundef nonnull @.str.60, i32 noundef 24, i32 noundef %31)
  %add.ptr5.6 = getelementptr i8, ptr %add.ptr5.5, i32 %call4.6
  %32 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disp, align 4
  %add.ptr.7 = getelementptr i8, ptr %33, i32 28
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #7, !srcloc !148
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.6, ptr noundef nonnull @.str.60, i32 noundef 28, i32 noundef %35)
  %add.ptr5.7 = getelementptr i8, ptr %add.ptr5.6, i32 %call4.7
  %36 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disp, align 4
  %add.ptr.8 = getelementptr i8, ptr %37, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #7, !srcloc !148
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.7, ptr noundef nonnull @.str.60, i32 noundef 32, i32 noundef %39)
  %add.ptr5.8 = getelementptr i8, ptr %add.ptr5.7, i32 %call4.8
  %40 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disp, align 4
  %add.ptr.9 = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #7, !srcloc !148
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.8, ptr noundef nonnull @.str.60, i32 noundef 36, i32 noundef %43)
  %add.ptr5.9 = getelementptr i8, ptr %add.ptr5.8, i32 %call4.9
  %44 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disp, align 4
  %add.ptr.10 = getelementptr i8, ptr %45, i32 40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10) #7, !srcloc !148
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.9, ptr noundef nonnull @.str.60, i32 noundef 40, i32 noundef %47)
  %add.ptr5.10 = getelementptr i8, ptr %add.ptr5.9, i32 %call4.10
  %48 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disp, align 4
  %add.ptr.11 = getelementptr i8, ptr %49, i32 44
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11) #7, !srcloc !148
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %call4.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.10, ptr noundef nonnull @.str.60, i32 noundef 44, i32 noundef %51)
  %add.ptr5.11 = getelementptr i8, ptr %add.ptr5.10, i32 %call4.11
  %52 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disp, align 4
  %add.ptr12 = getelementptr i8, ptr %53, i32 160
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !148
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.11, ptr noundef nonnull @.str.60, i32 noundef 160, i32 noundef %55)
  %add.ptr17 = getelementptr i8, ptr %add.ptr5.11, i32 %call16
  %56 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %disp, align 4
  %add.ptr12.1 = getelementptr i8, ptr %57, i32 164
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.1) #7, !srcloc !148
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %call16.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17, ptr noundef nonnull @.str.60, i32 noundef 164, i32 noundef %59)
  %add.ptr17.1 = getelementptr i8, ptr %add.ptr17, i32 %call16.1
  %60 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disp, align 4
  %add.ptr12.2 = getelementptr i8, ptr %61, i32 168
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.2) #7, !srcloc !148
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %call16.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.1, ptr noundef nonnull @.str.60, i32 noundef 168, i32 noundef %63)
  %add.ptr17.2 = getelementptr i8, ptr %add.ptr17.1, i32 %call16.2
  %64 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %disp, align 4
  %add.ptr12.3 = getelementptr i8, ptr %65, i32 172
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.3) #7, !srcloc !148
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %call16.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.2, ptr noundef nonnull @.str.60, i32 noundef 172, i32 noundef %67)
  %add.ptr17.3 = getelementptr i8, ptr %add.ptr17.2, i32 %call16.3
  %68 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %disp, align 4
  %add.ptr12.4 = getelementptr i8, ptr %69, i32 176
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.4) #7, !srcloc !148
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %call16.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.3, ptr noundef nonnull @.str.60, i32 noundef 176, i32 noundef %71)
  %add.ptr17.4 = getelementptr i8, ptr %add.ptr17.3, i32 %call16.4
  %72 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %disp, align 4
  %add.ptr27 = getelementptr i8, ptr %73, i32 256
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !148
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.4, ptr noundef nonnull @.str.60, i32 noundef 256, i32 noundef %75)
  %add.ptr32 = getelementptr i8, ptr %add.ptr17.4, i32 %call31
  %76 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disp, align 4
  %add.ptr27.1 = getelementptr i8, ptr %77, i32 260
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.1) #7, !srcloc !148
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32, ptr noundef nonnull @.str.60, i32 noundef 260, i32 noundef %79)
  %add.ptr32.1 = getelementptr i8, ptr %add.ptr32, i32 %call31.1
  %80 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %disp, align 4
  %add.ptr27.2 = getelementptr i8, ptr %81, i32 264
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.2) #7, !srcloc !148
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.1, ptr noundef nonnull @.str.60, i32 noundef 264, i32 noundef %83)
  %add.ptr32.2 = getelementptr i8, ptr %add.ptr32.1, i32 %call31.2
  %84 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %disp, align 4
  %add.ptr27.3 = getelementptr i8, ptr %85, i32 268
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.3) #7, !srcloc !148
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.2, ptr noundef nonnull @.str.60, i32 noundef 268, i32 noundef %87)
  %add.ptr32.3 = getelementptr i8, ptr %add.ptr32.2, i32 %call31.3
  %88 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %disp, align 4
  %add.ptr27.4 = getelementptr i8, ptr %89, i32 272
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.4) #7, !srcloc !148
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.3, ptr noundef nonnull @.str.60, i32 noundef 272, i32 noundef %91)
  %add.ptr32.4 = getelementptr i8, ptr %add.ptr32.3, i32 %call31.4
  %92 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %disp, align 4
  %add.ptr27.5 = getelementptr i8, ptr %93, i32 276
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.5) #7, !srcloc !148
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.4, ptr noundef nonnull @.str.60, i32 noundef 276, i32 noundef %95)
  %add.ptr32.5 = getelementptr i8, ptr %add.ptr32.4, i32 %call31.5
  %96 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %disp, align 4
  %add.ptr27.6 = getelementptr i8, ptr %97, i32 280
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.6) #7, !srcloc !148
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %call31.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.5, ptr noundef nonnull @.str.60, i32 noundef 280, i32 noundef %99)
  %add.ptr32.6 = getelementptr i8, ptr %add.ptr32.5, i32 %call31.6
  %geo = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 19
  %100 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %geo, align 4
  %add.ptr41 = getelementptr i8, ptr %101, i32 1024
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !148
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.6, ptr noundef nonnull @.str.61, i32 noundef 1024, i32 noundef %103)
  %add.ptr46 = getelementptr i8, ptr %add.ptr32.6, i32 %call45
  %104 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %geo, align 4
  %add.ptr41.1 = getelementptr i8, ptr %105, i32 1028
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.1) #7, !srcloc !148
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %call45.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr46, ptr noundef nonnull @.str.61, i32 noundef 1028, i32 noundef %107)
  %add.ptr46.1 = getelementptr i8, ptr %add.ptr46, i32 %call45.1
  %108 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %geo, align 4
  %add.ptr41.2 = getelementptr i8, ptr %109, i32 1032
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.2) #7, !srcloc !148
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %call45.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr46.1, ptr noundef nonnull @.str.61, i32 noundef 1032, i32 noundef %111)
  %add.ptr46.2 = getelementptr i8, ptr %add.ptr46.1, i32 %call45.2
  %112 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %geo, align 4
  %add.ptr41.3 = getelementptr i8, ptr %113, i32 1036
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.3) #7, !srcloc !148
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %call45.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr46.2, ptr noundef nonnull @.str.61, i32 noundef 1036, i32 noundef %115)
  %add.ptr46.3 = getelementptr i8, ptr %add.ptr46.2, i32 %call45.3
  %116 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %geo, align 4
  %add.ptr41.4 = getelementptr i8, ptr %117, i32 1040
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.4) #7, !srcloc !148
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %call45.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr46.3, ptr noundef nonnull @.str.61, i32 noundef 1040, i32 noundef %119)
  %add.ptr46.4 = getelementptr i8, ptr %add.ptr46.3, i32 %call45.4
  %draw = getelementptr inbounds %struct.mb862xxfb_par, ptr %3, i32 0, i32 18
  %120 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %draw, align 4
  %add.ptr55 = getelementptr i8, ptr %121, i32 1024
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #7, !srcloc !148
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %call59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr46.4, ptr noundef nonnull @.str.62, i32 noundef 1024, i32 noundef %123)
  %add.ptr60 = getelementptr i8, ptr %add.ptr46.4, i32 %call59
  %124 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %draw, align 4
  %add.ptr55.1 = getelementptr i8, ptr %125, i32 1028
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.1) #7, !srcloc !148
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %call59.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60, ptr noundef nonnull @.str.62, i32 noundef 1028, i32 noundef %127)
  %add.ptr60.1 = getelementptr i8, ptr %add.ptr60, i32 %call59.1
  %128 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %draw, align 4
  %add.ptr55.2 = getelementptr i8, ptr %129, i32 1032
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.2) #7, !srcloc !148
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %call59.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60.1, ptr noundef nonnull @.str.62, i32 noundef 1032, i32 noundef %131)
  %add.ptr60.2 = getelementptr i8, ptr %add.ptr60.1, i32 %call59.2
  %132 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %draw, align 4
  %add.ptr55.3 = getelementptr i8, ptr %133, i32 1036
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.3) #7, !srcloc !148
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %call59.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60.2, ptr noundef nonnull @.str.62, i32 noundef 1036, i32 noundef %135)
  %add.ptr60.3 = getelementptr i8, ptr %add.ptr60.2, i32 %call59.3
  %136 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %draw, align 4
  %add.ptr55.4 = getelementptr i8, ptr %137, i32 1040
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.4) #7, !srcloc !148
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %call59.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60.3, ptr noundef nonnull @.str.62, i32 noundef 1040, i32 noundef %139)
  %add.ptr60.4 = getelementptr i8, ptr %add.ptr60.3, i32 %call59.4
  %140 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %draw, align 4
  %add.ptr70 = getelementptr i8, ptr %141, i32 1088
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #7, !srcloc !148
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %call74 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60.4, ptr noundef nonnull @.str.62, i32 noundef 1088, i32 noundef %143)
  %add.ptr75 = getelementptr i8, ptr %add.ptr60.4, i32 %call74
  %144 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %draw, align 4
  %add.ptr70.1 = getelementptr i8, ptr %145, i32 1092
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70.1) #7, !srcloc !148
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %call74.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr75, ptr noundef nonnull @.str.62, i32 noundef 1092, i32 noundef %147)
  %add.ptr75.1 = getelementptr i8, ptr %add.ptr75, i32 %call74.1
  %148 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %draw, align 4
  %add.ptr70.2 = getelementptr i8, ptr %149, i32 1096
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70.2) #7, !srcloc !148
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %call74.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr75.1, ptr noundef nonnull @.str.62, i32 noundef 1096, i32 noundef %151)
  %add.ptr75.2 = getelementptr i8, ptr %add.ptr75.1, i32 %call74.2
  %152 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %draw, align 4
  %add.ptr70.3 = getelementptr i8, ptr %153, i32 1100
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70.3) #7, !srcloc !148
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %call74.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr75.2, ptr noundef nonnull @.str.62, i32 noundef 1100, i32 noundef %155)
  %add.ptr75.3 = getelementptr i8, ptr %add.ptr75.2, i32 %call74.3
  %156 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %draw, align 4
  %add.ptr70.4 = getelementptr i8, ptr %157, i32 1104
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70.4) #7, !srcloc !148
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %call74.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr75.3, ptr noundef nonnull @.str.62, i32 noundef 1104, i32 noundef %159)
  %add.ptr75.4 = getelementptr i8, ptr %add.ptr75.3, i32 %call74.4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr75.4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb862xx_i2c_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !122, !124, !125, !127, !129, !131, !133, !134}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_mb862xxfb__314_1196_mb862xxfb_init6, !1, !"__initcall__kmod_mb862xxfb__314_1196_mb862xxfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1196, i32 1}
!2 = !{ptr @__exitcall_mb862xxfb_exit, !3, !"__exitcall_mb862xxfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1197, i32 1}
!4 = !{ptr @__UNIQUE_ID_description315, !5, !"__UNIQUE_ID_description315", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1199, i32 1}
!6 = !{ptr @__UNIQUE_ID_author316, !7, !"__UNIQUE_ID_author316", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1200, i32 1}
!8 = !{ptr @__UNIQUE_ID_file317, !9, !"__UNIQUE_ID_file317", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1201, i32 1}
!10 = !{ptr @__UNIQUE_ID_license318, !9, !"__UNIQUE_ID_license318", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1166, i32 11}
!13 = !{ptr @mb862xxfb_pci_driver, !14, !"mb862xxfb_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1165, i32 26}
!15 = !{ptr @mb862xx_pci_tbl, !16, !"mb862xx_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 981, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1002, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mb862xx_pci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mb862xx_pci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1020, i32 3}
!27 = !{ptr @mb862xx_pci_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mb862xx_pci_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1054, i32 3}
!31 = !{ptr @mb862xx_pci_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mb862xx_pci_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1061, i32 3}
!35 = !{ptr @mb862xx_pci_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mb862xx_pci_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1066, i32 2}
!39 = !{ptr @mb862xx_pci_probe.__UNIQUE_ID_ddebug311, !38, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1068, i32 2}
!42 = !{ptr @mb862xx_pci_probe.__UNIQUE_ID_ddebug312, !41, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1078, i32 3}
!45 = !{ptr @mb862xx_pci_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mb862xx_pci_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1085, i32 3}
!49 = !{ptr @mb862xx_pci_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mb862xx_pci_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1091, i32 3}
!53 = !{ptr @mb862xx_pci_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mb862xx_pci_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1095, i32 3}
!57 = !{ptr @mb862xx_pci_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mb862xx_pci_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1102, i32 3}
!61 = !{ptr @mb862xx_pci_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mb862xx_pci_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 869, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @coralp_init._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @coralp_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 946, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @carmine_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @carmine_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 915, i32 4}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @init_dram_ctrl._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @init_dram_ctrl._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 449, i32 3}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug309, !83, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 478, i32 3}
!88 = !{ptr @mb862xxfb_init_fbinfo.__UNIQUE_ID_ddebug310, !87, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 484, i32 38}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 487, i32 4}
!93 = !{ptr @mb862xxfb_init_fbinfo._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mb862xxfb_init_fbinfo._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 511, i32 3}
!97 = !{ptr @mb862xxfb_init_fbinfo._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mb862xxfb_init_fbinfo._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @mb862xxfb_ops, !100, !"mb862xxfb_ops", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 406, i32 22}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 113, i32 3}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mb862xxfb_check_var.__UNIQUE_ID_ddebug305, !102, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 207, i32 2}
!107 = !{ptr @mb862xxfb_set_par.__UNIQUE_ID_ddebug306, !106, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 225, i32 2}
!110 = !{ptr @mb862xxfb_set_par.__UNIQUE_ID_ddebug307, !109, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 290, i32 2}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mb862xxfb_blank.__UNIQUE_ID_ddebug308, !112, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!117 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 580, i32 8}
!124 = !{ptr @dev_attr_dispregs, !123, !"dev_attr_dispregs", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 554, i32 23}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 566, i32 23}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 570, i32 23}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfbdrv.c", i32 1135, i32 2}
!133 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mb862xx_pci_remove.__UNIQUE_ID_ddebug313, !132, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148633495, i64 2148633500, i64 2148633513, i64 2148633557, i64 2148633591, i64 2148633612}
!146 = !{i64 2156365289}
!147 = !{i64 4325364}
!148 = !{i64 4325782}
!149 = !{i64 2156366612}
!150 = !{i64 2156369075}
!151 = !{i64 2156369465}
!152 = !{i64 2156370603}
!153 = !{i64 2156371667}
!154 = !{i64 2156380139}
!155 = !{i64 2156380935}
!156 = !{i64 2156383002}
!157 = !{i64 2156372204}
!158 = !{i64 2156372770}
!159 = !{i64 2156373336}
!160 = !{i64 2156373902}
!161 = !{i64 2156374468}
!162 = !{i64 2156375034}
!163 = !{i64 2156375600}
!164 = !{i64 2156376447}
!165 = !{i64 2156378906}
!166 = !{i64 2156379472}
!167 = !{i64 2156383503}
!168 = !{i64 2156383998}
!169 = !{i64 2156409303}
!170 = !{i64 2156409631}
!171 = !{i64 2156410627}
!172 = !{i64 2156362150}
!173 = !{i64 2156362747}
!174 = !{i64 2156363036}
!175 = !{i64 2156363837}
!176 = !{i64 2156364434}
!177 = !{i64 2156364750}
!178 = !{i64 2156343751}
!179 = !{i64 2156346707}
!180 = !{i64 2156347304}
!181 = !{i64 2156347901}
!182 = !{i64 2156348509}
!183 = !{i64 2156349117}
!184 = !{i64 2156349714}
!185 = !{i64 2156350311}
!186 = !{i64 2156356405}
!187 = !{i64 2156357072}
!188 = !{i64 2156357649}
!189 = !{i64 2156291689}
!190 = !{i64 2156292006}
!191 = !{i64 2156292802}
!192 = !{i64 2156293141}
!193 = !{i64 2156295877}
!194 = !{i64 2156296673}
!195 = !{i64 2156297016}
!196 = !{i64 2156297556}
!197 = !{i64 2156298107}
!198 = !{i64 2156298608}
!199 = !{i64 2156299103}
!200 = !{i64 2156299598}
!201 = !{i64 2156300093}
!202 = !{i64 2156300592}
!203 = !{i64 2156301388}
!204 = !{i64 2156301716}
!205 = !{i64 2156302277}
!206 = !{i64 2156302837}
!207 = !{i64 2156303402}
!208 = !{i64 2156304034}
!209 = !{i64 2156304789}
!210 = !{i64 2156305708}
!211 = !{i64 2156306047}
!212 = !{i64 2156286600}
!213 = !{i64 2156310171}
!214 = !{i64 2156310488}
!215 = !{i64 2156311284}
!216 = !{i64 2156311601}
!217 = !{i64 2156306598}
!218 = !{i64 2156307169}
!219 = !{i64 2153301833, i64 2153301858}
!220 = !{i64 2153301152, i64 2153301177}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i64 5796707}
!223 = !{i64 5796904}
!224 = !{i64 2153282137}
!225 = !{i64 2156314148}
!226 = !{i64 2156315183}
!227 = !{i64 2156315742}
!228 = !{i64 2156316617}
!229 = !{i64 2156317381}
!230 = !{i64 2156318305}
!231 = !{i64 2156323524}
!232 = !{i64 2156325419}
!233 = !{i64 2156326168}
!234 = !{i64 2156326955}
!235 = !{i64 2156327782}
!236 = !{i64 2156328531}
!237 = !{i64 2156329158}
!238 = !{i64 2156329754}
!239 = !{i64 2156331540}
!240 = !{i64 2156332545}
!241 = !{i64 2156335011}
!242 = !{i64 2156336496}
!243 = !{i64 2156337479}
!244 = !{i64 2156358492}
!245 = !{i64 2156359065}
!246 = !{i64 2156359638}
!247 = !{i64 2156360184}
!248 = !{i64 2156360735}
!249 = !{i64 2156361286}
