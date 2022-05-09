; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/neofb.c_pt.bc'
source_filename = "../drivers/video/fbdev/neofb.c"
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
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.biosMode = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.neofb_par = type { %struct.vgastate, i32, i8, [25 x i8], [5 x i8], [9 x i8], [21 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, ptr, i8, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.86 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [19 x i32], i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__initcall__kmod_neofb__305_2215_neofb_init6 = internal global ptr @neofb_init, section ".initcall6.init", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"neofb\00", [26 x i8] zeroinitializer }, align 32
@neofb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @neofb_devices, ptr @neofb_probe, ptr @neofb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@internal = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@external = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nostretch\00", [22 x i8] zeroinitializer }, align 32
@nostretch = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nopciburst\00", [21 x i8] zeroinitializer }, align 32
@nopciburst = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"libretto\00", [23 x i8] zeroinitializer }, align 32
@libretto = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@neofb_devices = internal constant { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 4296, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 90, i32 0 }, %struct.pci_device_id { i32 4296, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 91, i32 0 }, %struct.pci_device_id { i32 4296, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 92, i32 0 }, %struct.pci_device_id { i32 4296, i32 131, i32 -1, i32 -1, i32 0, i32 0, i32 93, i32 0 }, %struct.pci_device_id { i32 4296, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 4296, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 95, i32 0 }, %struct.pci_device_id { i32 4296, i32 37, i32 -1, i32 -1, i32 0, i32 0, i32 96, i32 0 }, %struct.pci_device_id { i32 4296, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 97, i32 0 }, %struct.pci_device_id { i32 4296, i32 22, i32 -1, i32 -1, i32 0, i32 0, i32 98, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@neofb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013neofb: Unable to find usable video mode.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"neofb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/neofb.c\00", [36 x i8] zeroinitializer }, align 32
@neofb_probe._entry_ptr = internal global ptr @neofb_probe._entry, section ".printk_index", align 4
@neofb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 2083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016neofb v0.4.2: %dkB VRAM, using %dx%d, %d.%03dkHz, %dHz\0A\00", [38 x i8] zeroinitializer }, align 32
@neofb_probe._entry_ptr.12 = internal global ptr @neofb_probe._entry.10, section ".printk_index", align 4
@neofb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 2093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@neofb_probe._entry_ptr.15 = internal global ptr @neofb_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MagicGraph 128\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MagicGraph 128V\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MagicGraph 128ZV\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MagicGraph 128ZV+\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MagicGraph 128XD\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MagicGraph 256AV\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MagicGraph 256AV+\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MagicGraph 256ZX\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MagicGraph 256XL+\00", [46 x i8] zeroinitializer }, align 32
@neofb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @neofb_open, ptr @neofb_release, ptr null, ptr null, ptr @neofb_check_var, ptr @neofb_set_par, ptr @neofb_setcolreg, ptr null, ptr @neofb_blank, ptr @neofb_pan_display, ptr @neofb_fillrect, ptr @neofb_copyarea, ptr @neofb_imageblit, ptr null, ptr @neofb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@neofb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.9, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Mode (%dx%d) larger than the LCD panel (%dx%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"neofb_check_var\00", [16 x i8] zeroinitializer }, align 32
@neofb_check_var._entry_ptr = internal global ptr @neofb_check_var._entry, section ".printk_index", align 4
@neofb_check_var._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.9, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016Mode (%dx%d) won't display properly on LCD\0A\00", [50 x i8] zeroinitializer }, align 32
@neofb_check_var._entry_ptr.29 = internal global ptr @neofb_check_var._entry.27, section ".printk_index", align 4
@neofb_check_var._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.9, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014neofb: no support for %dbpp\0A\00", [33 x i8] zeroinitializer }, align 32
@neofb_check_var._entry_ptr.32 = internal global ptr @neofb_check_var._entry.30, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@paletteEnabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@bios8 = internal constant { [6 x %struct.biosMode], [56 x i8] } { [6 x %struct.biosMode] [%struct.biosMode { i32 320, i32 240, i32 64 }, %struct.biosMode { i32 300, i32 400, i32 66 }, %struct.biosMode { i32 640, i32 400, i32 32 }, %struct.biosMode { i32 640, i32 480, i32 33 }, %struct.biosMode { i32 800, i32 600, i32 35 }, %struct.biosMode { i32 1024, i32 768, i32 37 }], [56 x i8] zeroinitializer }, align 32
@bios16 = internal constant { [6 x %struct.biosMode], [56 x i8] } { [6 x %struct.biosMode] [%struct.biosMode { i32 320, i32 200, i32 46 }, %struct.biosMode { i32 320, i32 240, i32 65 }, %struct.biosMode { i32 300, i32 400, i32 67 }, %struct.biosMode { i32 640, i32 480, i32 49 }, %struct.biosMode { i32 800, i32 600, i32 52 }, %struct.biosMode { i32 1024, i32 768, i32 55 }], [56 x i8] zeroinitializer }, align 32
@bios24 = internal constant { [3 x %struct.biosMode], [60 x i8] } { [3 x %struct.biosMode] [%struct.biosMode { i32 640, i32 480, i32 50 }, %struct.biosMode { i32 800, i32 600, i32 53 }, %struct.biosMode { i32 1024, i32 768, i32 56 }], [60 x i8] zeroinitializer }, align 32
@neo2200_accel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013neofb: neo2200_accel_init: unexpected bits per pixel!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"neo2200_accel_init\00", [45 x i8] zeroinitializer }, align 32
@neo2200_accel_init._entry_ptr = internal global ptr @neo2200_accel_init._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"memory mapped I/O\00", [46 x i8] zeroinitializer }, align 32
@neo_map_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.9, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"neofb: memory mapped IO in use\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"neo_map_mmio\00", [19 x i8] zeroinitializer }, align 32
@neo_map_mmio._entry_ptr = internal global ptr @neo_map_mmio._entry, section ".printk_index", align 4
@neo_map_mmio._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.9, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"neofb: unable to map memory mapped IO\0A\00", [57 x i8] zeroinitializer }, align 32
@neo_map_mmio._entry_ptr.40 = internal global ptr @neo_map_mmio._entry.38, section ".printk_index", align 4
@neo_map_mmio._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.9, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016neofb: mapped io at %p\0A\00", [38 x i8] zeroinitializer }, align 32
@neo_map_mmio._entry_ptr.43 = internal global ptr @neo_map_mmio._entry.41, section ".printk_index", align 4
@neo_scan_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.9, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Autodetected %s display\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"neo_scan_monitor\00", [47 x i8] zeroinitializer }, align 32
@neo_scan_monitor._entry_ptr = internal global ptr @neo_scan_monitor._entry, section ".printk_index", align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"simultaneous\00", [19 x i8] zeroinitializer }, align 32
@vesa_modes = external dso_local local_unnamed_addr constant [0 x %struct.fb_videomode], align 4
@mode800x480 = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 800, i32 480, i32 25000, i32 88, i32 40, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@neo_scan_monitor._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.9, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013neofb: Only 640x480, 800x600/480 and 1024x768 panels are currently supported\0A\00", [48 x i8] zeroinitializer }, align 32
@neo_scan_monitor._entry_ptr.49 = internal global ptr @neo_scan_monitor._entry.47, section ".printk_index", align 4
@neo_scan_monitor._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.9, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Panel is a %dx%d %s %s display\0A\00", [62 x i8] zeroinitializer }, align 32
@neo_scan_monitor._entry_ptr.52 = internal global ptr @neo_scan_monitor._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"monochrome\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TFT\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dual scan\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"frame buffer\00", [19 x i8] zeroinitializer }, align 32
@neo_map_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.9, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"neofb: frame buffer in use\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"neo_map_video\00", [18 x i8] zeroinitializer }, align 32
@neo_map_video._entry_ptr = internal global ptr @neo_map_video._entry, section ".printk_index", align 4
@neo_map_video._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.9, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"neofb: unable to map screen memory\0A\00", [60 x i8] zeroinitializer }, align 32
@neo_map_video._entry_ptr.62 = internal global ptr @neo_map_video._entry.60, section ".printk_index", align 4
@neo_map_video._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.9, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016neofb: mapped framebuffer at %p\0A\00", [61 x i8] zeroinitializer }, align 32
@neo_map_video._entry_ptr.65 = internal global ptr @neo_map_video._entry.63, section ".printk_index", align 4
@switch.table.neofb_set_par = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.neofb_set_par.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\F0pppppppp", [23 x i8] zeroinitializer }, align 32
@switch.table.neofb_set_par.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0F\8F\8F\8F\8F\8F\8F\8F\8F", [23 x i8] zeroinitializer }, align 32
@switch.table.neofb_set_par.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\FC\DC\DC\DC\DC\98\98\98\98", [23 x i8] zeroinitializer }, align 32
@switch.table.neofb_set_par.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\03####gggg", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.70 = internal global [11 x i64] [i64 9, i64 32, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [10 x i64] [i64 8, i64 32, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 640, i64 800, i64 1024, i64 1280]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 800, i64 1024, i64 1280]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 320, i64 400, i64 640, i64 800, i64 1024]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 320, i64 400, i64 640, i64 800, i64 1024]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 15, i64 16, i64 24]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2208, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"neofb_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2163, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2182, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2186, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2188, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2190, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant [10 x i8] c"nostretch\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2192, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"nopciburst\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2194, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"libretto\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 85, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"neofb_devices\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2130, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2061, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2080, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 2093, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1951, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1955, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1959, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1963, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1967, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1971, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1978, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1985, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1992, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"neofb_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1612, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 595, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 627, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 681, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"paletteEnabled\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"bios8\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 111, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"bios16\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 120, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"bios24\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 129, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 537, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1672, i32 7 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1674, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1680, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1685, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1780, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [12 x i8] c"mode800x480\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1629, i32 28 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1820, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1833, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1714, i32 7 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1716, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1723, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [31 x i8] c"../drivers/video/fbdev/neofb.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1728, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"switch.table.neofb_set_par\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [30 x i8] c"switch.table.neofb_set_par.66\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [30 x i8] c"switch.table.neofb_set_par.67\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [30 x i8] c"switch.table.neofb_set_par.68\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [30 x i8] c"switch.table.neofb_set_par.69\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @__initcall__kmod_neofb__305_2215_neofb_init6, ptr @neo2200_accel_init._entry, ptr @neo2200_accel_init._entry_ptr, ptr @neo_map_mmio._entry, ptr @neo_map_mmio._entry.38, ptr @neo_map_mmio._entry.41, ptr @neo_map_mmio._entry_ptr, ptr @neo_map_mmio._entry_ptr.40, ptr @neo_map_mmio._entry_ptr.43, ptr @neo_map_video._entry, ptr @neo_map_video._entry.60, ptr @neo_map_video._entry.63, ptr @neo_map_video._entry_ptr, ptr @neo_map_video._entry_ptr.62, ptr @neo_map_video._entry_ptr.65, ptr @neo_scan_monitor._entry, ptr @neo_scan_monitor._entry.47, ptr @neo_scan_monitor._entry.50, ptr @neo_scan_monitor._entry_ptr, ptr @neo_scan_monitor._entry_ptr.49, ptr @neo_scan_monitor._entry_ptr.52, ptr @neofb_check_var._entry, ptr @neofb_check_var._entry.27, ptr @neofb_check_var._entry.30, ptr @neofb_check_var._entry_ptr, ptr @neofb_check_var._entry_ptr.29, ptr @neofb_check_var._entry_ptr.32, ptr @neofb_probe._entry, ptr @neofb_probe._entry.10, ptr @neofb_probe._entry.13, ptr @neofb_probe._entry_ptr, ptr @neofb_probe._entry_ptr.12, ptr @neofb_probe._entry_ptr.15, ptr @.str, ptr @neofb_driver, ptr @.str.1, ptr @.str.2, ptr @internal, ptr @.str.3, ptr @external, ptr @.str.4, ptr @nostretch, ptr @.str.5, ptr @nopciburst, ptr @.str.6, ptr @libretto, ptr @mode_option, ptr @neofb_devices, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @neofb_ops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @paletteEnabled, ptr @bios8, ptr @bios16, ptr @bios24, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @mode800x480, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @switch.table.neofb_set_par, ptr @switch.table.neofb_set_par.66, ptr @switch.table.neofb_set_par.67, ptr @switch.table.neofb_set_par.68, ptr @switch.table.neofb_set_par.69], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @internal to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @external to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nostretch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nopciburst to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libretto to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_devices to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_check_var._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neofb_check_var._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paletteEnabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo2200_accel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_map_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_map_mmio._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_map_mmio._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_scan_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode800x480 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_scan_monitor._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_scan_monitor._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_map_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_map_video._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neo_map_video._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.neofb_set_par to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.neofb_set_par.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.neofb_set_par.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.neofb_set_par.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.neofb_set_par.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #9
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @neofb_setup(ptr noundef %2) #12
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @neofb_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neofb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #9
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.2, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @internal, align 1
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.3, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @external, align 1
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(10) @.str.4, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nostretch, align 1
  br label %while.cond.backedge

if.else15:                                        ; preds = %if.else11
  %call16 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(11) @.str.5, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nopciburst, align 1
  br label %while.cond.backedge

if.else19:                                        ; preds = %if.else15
  %call20 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.6, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @libretto, align 1
  br label %while.cond.backedge

if.else23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else23, %if.then22, %if.then18, %if.then14, %if.then10, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call ptr @framebuffer_alloc(i32 noundef 252, ptr noundef %dev1.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %par2.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 30
  %0 = ptrtoint ptr %par2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par2.i, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data.i, align 4
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 12
  %4 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %accel.i, align 4
  %.b108110.i = load i1, ptr @nopciburst, align 1
  %lnot.i = xor i1 %.b108110.i, true
  %lnot.ext.i = zext i1 %lnot.i to i32
  %pci_burst.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %pci_burst.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext.i, ptr %pci_burst.i, align 4
  %.b107111.i = load i1, ptr @nostretch, align 1
  %lnot5.i = xor i1 %.b107111.i, true
  %lnot.ext6.i = zext i1 %lnot5.i to i32
  %lcd_stretch.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %lcd_stretch.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext6.i, ptr %lcd_stretch.i, align 4
  %.b109112.i = load i1, ptr @libretto, align 1
  %conv.i = zext i1 %.b109112.i to i32
  %libretto.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 45
  %7 = ptrtoint ptr %libretto.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %libretto.i, align 4
  %.b113.i = load i1, ptr @internal, align 1
  %conv9.i = zext i1 %.b113.i to i32
  %internal_display.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 43
  %8 = ptrtoint ptr %internal_display.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv9.i, ptr %internal_display.i, align 4
  %.b106114.i = load i1, ptr @external, align 1
  %conv11.i = zext i1 %.b106114.i to i32
  %external_display.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %external_display.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv11.i, ptr %external_display.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8192, ptr %flags.i, align 4
  %11 = load i32, ptr %accel.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.i.if.end4_crit_edge [
    i32 90, label %sw.bb.i
    i32 91, label %sw.bb17.i
    i32 92, label %sw.bb22.i
    i32 93, label %sw.bb27.i
    i32 94, label %sw.bb32.i
    i32 95, label %sw.bb37.i
    i32 96, label %sw.bb43.i
    i32 97, label %sw.bb50.i
    i32 98, label %sw.bb57.i
  ]

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = call ptr @memcpy(ptr %fix.i, ptr @.str.16, i32 15)
  br label %if.end4

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call ptr @memcpy(ptr %fix.i, ptr @.str.17, i32 16)
  br label %if.end4

sw.bb22.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.18) #9
  br label %if.end4

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.19) #9
  br label %if.end4

sw.bb32.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.20) #9
  br label %if.end4

sw.bb37.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.21) #9
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %16, 1792
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end4

sw.bb43.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.22) #9
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or49.i = or i32 %18, 1792
  store i32 %or49.i, ptr %flags.i, align 4
  br label %if.end4

sw.bb50.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.23) #9
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or56.i = or i32 %20, 1792
  store i32 %or56.i, ptr %flags.i, align 4
  br label %if.end4

sw.bb57.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call61.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fix.i, i32 noundef 16, ptr noundef nonnull @.str.24) #9
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %or63.i = or i32 %22, 1792
  store i32 %or63.i, ptr %flags.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %sw.bb57.i, %sw.bb50.i, %sw.bb43.i, %sw.bb37.i, %sw.bb32.i, %sw.bb27.i, %sw.bb22.i, %sw.bb17.i, %sw.bb.i, %if.end.i.if.end4_crit_edge
  %type.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %type.i, align 4
  %type_aux.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %type_aux.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type_aux.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 6
  %25 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 7
  %26 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 4, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %ywrapstep.i, align 4
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data.i, align 4
  %30 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %accel.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 20
  %31 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @neofb_ops, ptr %fbops.i, align 4
  %palette.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 46
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 27
  %32 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %palette.i, ptr %pseudo_palette.i, align 4
  %33 = ptrtoint ptr %par2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %par2.i, align 4
  %35 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %29, label %sw.default.i [
    i32 90, label %sw.bb.i120
    i32 91, label %if.end4.sw.bb3.i_crit_edge
    i32 92, label %if.end4.sw.bb3.i_crit_edge159
    i32 94, label %if.end4.sw.bb10.i_crit_edge
    i32 93, label %if.end4.sw.bb10.i_crit_edge160
    i32 95, label %if.end4.sw.bb10.i_crit_edge161
    i32 96, label %if.end4.sw.bb10.i_crit_edge162
    i32 97, label %if.end4.sw.bb10.i_crit_edge163
    i32 98, label %if.end4.sw.bb10.i_crit_edge164
  ]

if.end4.sw.bb10.i_crit_edge164:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end4.sw.bb10.i_crit_edge163:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end4.sw.bb10.i_crit_edge162:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end4.sw.bb10.i_crit_edge161:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end4.sw.bb10.i_crit_edge160:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end4.sw.bb10.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end4.sw.bb3.i_crit_edge159:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end4.sw.bb3.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.i120:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %36 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %37, 1048576
  br label %sw.epilog.i123

sw.bb3.i:                                         ; preds = %if.end4.sw.bb3.i_crit_edge, %if.end4.sw.bb3.i_crit_edge159
  %resource4.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %38 = ptrtoint ptr %resource4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resource4.i, align 8
  %add7.i = add i32 %39, 2097152
  br label %sw.epilog.i123

sw.bb10.i:                                        ; preds = %if.end4.sw.bb10.i_crit_edge, %if.end4.sw.bb10.i_crit_edge160, %if.end4.sw.bb10.i_crit_edge161, %if.end4.sw.bb10.i_crit_edge162, %if.end4.sw.bb10.i_crit_edge163, %if.end4.sw.bb10.i_crit_edge164
  %arrayidx12.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %40 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx12.i, align 8
  br label %sw.epilog.i123

sw.default.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %resource16.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %42 = ptrtoint ptr %resource16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resource16.i, align 8
  br label %sw.epilog.i123

sw.epilog.i123:                                   ; preds = %sw.default.i, %sw.bb10.i, %sw.bb3.i, %sw.bb.i120
  %.sink.i = phi i32 [ %43, %sw.default.i ], [ %41, %sw.bb10.i ], [ %add7.i, %sw.bb3.i ], [ %add.i, %sw.bb.i120 ]
  %mmio_start20.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 10
  %44 = ptrtoint ptr %mmio_start20.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %mmio_start20.i, align 4
  %mmio_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 11
  %45 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2097152, ptr %mmio_len.i, align 4
  %call.i121 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %.sink.i, i32 noundef 2097152, ptr noundef nonnull @.str.35, i32 noundef 0) #9
  %tobool.not.i122 = icmp eq ptr %call.i121, null
  br i1 %tobool.not.i122, label %do.end.i, label %if.end.i124

do.end.i:                                         ; preds = %sw.epilog.i123
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %neo_free_fb_info.exit

if.end.i124:                                      ; preds = %sw.epilog.i123
  %46 = ptrtoint ptr %mmio_start20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mmio_start20.i, align 4
  %call27.i = tail call ptr @ioremap(i32 noundef %47, i32 noundef 2097152) #9
  %mmio_vbase.i = getelementptr inbounds %struct.neofb_par, ptr %34, i32 0, i32 34
  %48 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call27.i, ptr %mmio_vbase.i, align 4
  %tobool29.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool29.not.i, label %do.end33.i, label %if.end8

do.end33.i:                                       ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #11
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  %49 = ptrtoint ptr %mmio_start20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mmio_start20.i, align 4
  %51 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mmio_len.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %50, i32 noundef %52) #9
  br label %neo_free_fb_info.exit

if.end8:                                          ; preds = %if.end.i124
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %call27.i) #13
  %53 = ptrtoint ptr %par2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %par2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 56) #14
  %modedb.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %modedb.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %modedb.i, align 4
  %tobool.not.i126 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i126, label %if.end8.err_scan_monitor_crit_edge, label %if.end.i128

if.end8.err_scan_monitor_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_scan_monitor

if.end.i128:                                      ; preds = %if.end8
  %modedb_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 8, i32 6
  %57 = ptrtoint ptr %modedb_len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %modedb_len.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 38) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 33) #9, !srcloc !151
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %internal_display.i127 = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 43
  %60 = ptrtoint ptr %internal_display.i127 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %internal_display.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not.i = icmp eq i32 %61, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.end.i128.if.end28.i_crit_edge

if.end.i128.if.end28.i_crit_edge:                 ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end.i128
  %external_display.i129 = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 44
  %62 = ptrtoint ptr %external_display.i129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %external_display.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool8.not.i = icmp eq i32 %63, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i130 = zext i8 %59 to i32
  %and.i = and i32 %conv.i130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp ne i32 %and.i, 0
  %and12.i = and i32 %conv.i130, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %narrow.i = or i1 %tobool10.not.i, %tobool13.not.i
  %64 = zext i1 %narrow.i to i32
  %65 = ptrtoint ptr %internal_display.i127 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %internal_display.i127, align 4
  %and16.i = and i32 %conv.i130, 1
  %66 = ptrtoint ptr %external_display.i129 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and16.i, ptr %external_display.i129, align 4
  %tobool19.not.i.demorgan = or i1 %tobool10.not.i, %tobool13.not.i
  %tobool19.not.i = xor i1 %tobool19.not.i.demorgan, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool22.not.i = icmp eq i32 %and16.i, 0
  %or.cond.i = select i1 %tobool19.not.i, i1 true, i1 %tobool22.not.i
  %cond25.i = select i1 %narrow.i, ptr @.str.2, ptr @.str.3
  %spec.select.i = select i1 %or.cond.i, ptr %cond25.i, ptr @.str.46
  %call27.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %spec.select.i) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end28.i_crit_edge, %if.end.i128.if.end28.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !151
  %68 = lshr i8 %67, 3
  %69 = and i8 %68, 3
  %70 = zext i8 %69 to i32
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %70, label %if.end28.unreachabledefault.i [
    i32 0, label %sw.bb.i132
    i32 1, label %sw.bb34.i
    i32 2, label %sw.bb45.i
    i32 3, label %do.end53.i
  ]

sw.bb.i132:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %NeoPanelWidth.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 38
  %72 = ptrtoint ptr %NeoPanelWidth.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 640, ptr %NeoPanelWidth.i, align 4
  %NeoPanelHeight.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 39
  %73 = ptrtoint ptr %NeoPanelHeight.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 480, ptr %NeoPanelHeight.i, align 4
  %74 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %modedb.i, align 4
  %76 = call ptr @memcpy(ptr %75, ptr getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 3), i32 56)
  br label %if.end12

sw.bb34.i:                                        ; preds = %if.end28.i
  %NeoPanelWidth35.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 38
  %77 = ptrtoint ptr %NeoPanelWidth35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 800, ptr %NeoPanelWidth35.i, align 4
  %libretto.i133 = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 45
  %78 = ptrtoint ptr %libretto.i133 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %libretto.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool36.not.i = icmp eq i32 %79, 0
  %NeoPanelHeight41.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 39
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %NeoPanelHeight41.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 480, ptr %NeoPanelHeight41.i, align 4
  %81 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %modedb.i, align 4
  %83 = call ptr @memcpy(ptr %82, ptr @mode800x480, i32 56)
  br label %if.end12

if.else.i:                                        ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %NeoPanelHeight41.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 600, ptr %NeoPanelHeight41.i, align 4
  %85 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %modedb.i, align 4
  %87 = call ptr @memcpy(ptr %86, ptr getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 8), i32 56)
  br label %if.end12

sw.bb45.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %NeoPanelWidth46.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 38
  %88 = ptrtoint ptr %NeoPanelWidth46.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1024, ptr %NeoPanelWidth46.i, align 4
  %NeoPanelHeight47.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 39
  %89 = ptrtoint ptr %NeoPanelHeight47.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 768, ptr %NeoPanelHeight47.i, align 4
  %90 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %modedb.i, align 4
  %92 = call ptr @memcpy(ptr %91, ptr getelementptr inbounds ([0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 13), i32 56)
  br label %if.end12

do.end53.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #13
  %93 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %modedb.i, align 4
  tail call void @kfree(ptr noundef %94) #9
  br label %err_scan_monitor

if.end28.unreachabledefault.i:                    ; preds = %if.end28.i
  unreachable

if.end12:                                         ; preds = %sw.bb45.i, %if.else.i, %if.then37.i, %sw.bb.i132
  %NeoPanelWidth66.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 38
  %95 = ptrtoint ptr %NeoPanelWidth66.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %NeoPanelWidth66.i, align 4
  %NeoPanelHeight67.i = getelementptr inbounds %struct.neofb_par, ptr %54, i32 0, i32 39
  %97 = ptrtoint ptr %NeoPanelHeight67.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %NeoPanelHeight67.i, align 4
  %conv68.i = zext i8 %58 to i32
  %and69.i = and i32 %conv68.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  %cond71.i = select i1 %tobool70.not.i, ptr @.str.54, ptr @.str.53
  %and73.i = and i32 %conv68.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %cond75.i = select i1 %tobool74.not.i, ptr @.str.56, ptr @.str.55
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %96, i32 noundef %98, ptr noundef nonnull %cond71.i, ptr noundef nonnull %cond75.i) #13
  %99 = ptrtoint ptr %par2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %par2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %102 = and i8 %101, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %102) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 38) #9, !srcloc !151
  %103 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %accel.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %104, label %sw.epilog.i138 [
    i32 98, label %sw.bb7.i
    i32 91, label %if.end12.neo_init_hw.exit_crit_edge
    i32 92, label %if.end12.neo_init_hw.exit_crit_edge165
    i32 93, label %if.end12.neo_init_hw.exit_crit_edge166
    i32 94, label %sw.bb3.i137
    i32 95, label %if.end12.sw.bb12.i_crit_edge
    i32 96, label %sw.bb5.i
    i32 97, label %sw.bb6.i
  ]

if.end12.sw.bb12.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i

if.end12.neo_init_hw.exit_crit_edge166:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo_init_hw.exit

if.end12.neo_init_hw.exit_crit_edge165:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo_init_hw.exit

if.end12.neo_init_hw.exit_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo_init_hw.exit

sw.bb3.i137:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo_init_hw.exit

sw.bb5.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i

sw.bb6.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i

sw.bb7.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i

sw.epilog.i138:                                   ; preds = %if.end12
  %.off.i = add i32 %104, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %sw.epilog.i138.sw.bb12.i_crit_edge, label %sw.epilog.i138.neo_init_hw.exit_crit_edge

sw.epilog.i138.neo_init_hw.exit_crit_edge:        ; preds = %sw.epilog.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo_init_hw.exit

sw.epilog.i138.sw.bb12.i_crit_edge:               ; preds = %sw.epilog.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.epilog.i138.sw.bb12.i_crit_edge, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end12.sw.bb12.i_crit_edge
  %maxClock.027.i = phi i32 [ 65000, %sw.epilog.i138.sw.bb12.i_crit_edge ], [ 110000, %sw.bb7.i ], [ 110000, %sw.bb6.i ], [ 110000, %sw.bb5.i ], [ 110000, %if.end12.sw.bb12.i_crit_edge ]
  %videoRam.025.i = phi i32 [ 917504, %sw.epilog.i138.sw.bb12.i_crit_edge ], [ 6291456, %sw.bb7.i ], [ 4194304, %sw.bb6.i ], [ 3080192, %sw.bb5.i ], [ 2621440, %if.end12.sw.bb12.i_crit_edge ]
  %mmio_vbase.i139 = getelementptr inbounds %struct.neofb_par, ptr %100, i32 0, i32 34
  %106 = ptrtoint ptr %mmio_vbase.i139 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio_vbase.i139, align 4
  %neo2200.i = getelementptr inbounds %struct.neofb_par, ptr %100, i32 0, i32 37
  %108 = ptrtoint ptr %neo2200.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %neo2200.i, align 4
  br label %neo_init_hw.exit

neo_init_hw.exit:                                 ; preds = %sw.bb12.i, %sw.epilog.i138.neo_init_hw.exit_crit_edge, %sw.bb3.i137, %if.end12.neo_init_hw.exit_crit_edge, %if.end12.neo_init_hw.exit_crit_edge165, %if.end12.neo_init_hw.exit_crit_edge166
  %maxClock.026.i = phi i32 [ 65000, %sw.epilog.i138.neo_init_hw.exit_crit_edge ], [ %maxClock.027.i, %sw.bb12.i ], [ 90000, %sw.bb3.i137 ], [ 80000, %if.end12.neo_init_hw.exit_crit_edge ], [ 80000, %if.end12.neo_init_hw.exit_crit_edge165 ], [ 80000, %if.end12.neo_init_hw.exit_crit_edge166 ]
  %videoRam.024.i = phi i32 [ 917504, %sw.epilog.i138.neo_init_hw.exit_crit_edge ], [ %videoRam.025.i, %sw.bb12.i ], [ 2097152, %sw.bb3.i137 ], [ 1179648, %if.end12.neo_init_hw.exit_crit_edge ], [ 1179648, %if.end12.neo_init_hw.exit_crit_edge165 ], [ 1179648, %if.end12.neo_init_hw.exit_crit_edge166 ]
  %maxClock14.i = getelementptr inbounds %struct.neofb_par, ptr %100, i32 0, i32 40
  %109 = ptrtoint ptr %maxClock14.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %maxClock.026.i, ptr %maxClock14.i, align 4
  %cursorOff.i = getelementptr inbounds %struct.neofb_par, ptr %100, i32 0, i32 35
  %110 = ptrtoint ptr %cursorOff.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %cursorOff.i, align 4
  %111 = ptrtoint ptr %par2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %par2.i, align 4
  %resource.i141 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %113 = ptrtoint ptr %resource.i141 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %resource.i141, align 8
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 1
  %115 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %smem_start.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 2
  %116 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %videoRam.024.i, ptr %smem_len.i, align 4
  %call.i142 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %114, i32 noundef %videoRam.024.i, ptr noundef nonnull @.str.57, i32 noundef 0) #9
  %tobool.not.i143 = icmp eq ptr %call.i142, null
  br i1 %tobool.not.i143, label %do.end.i144, label %if.end.i146

do.end.i144:                                      ; preds = %neo_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #13
  br label %err_init_hw

if.end.i146:                                      ; preds = %neo_init_hw.exit
  %117 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %smem_start.i, align 4
  %119 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %smem_len.i, align 4
  %call12.i = tail call ptr @ioremap_wc(i32 noundef %118, i32 noundef %120) #9
  %121 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 25
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call12.i, ptr %121, align 4
  %tobool13.not.i145 = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i145, label %do.end17.i, label %if.end19

do.end17.i:                                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #13
  %123 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %smem_start.i, align 4
  %125 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %smem_len.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %124, i32 noundef %126) #9
  br label %err_init_hw

if.end19:                                         ; preds = %if.end.i146
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull %call12.i) #13
  %wc_cookie.i = getelementptr inbounds %struct.neofb_par, ptr %112, i32 0, i32 33
  %127 = ptrtoint ptr %wc_cookie.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %wc_cookie.i, align 4
  %128 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %121, align 4
  %130 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %smem_len.i, align 4
  tail call void @mmioset(ptr noundef %129, i32 noundef 0, i32 noundef %131) #9
  %var = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6
  %132 = load ptr, ptr @mode_option, align 4
  %133 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %modedb.i, align 4
  %call20 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call.i, ptr noundef %132, ptr noundef null, i32 noundef 0, ptr noundef %134, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %err_map_video

if.end24:                                         ; preds = %if.end19
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 17
  %135 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1953125000, %136
  %mul = shl i32 %div, 9
  %137 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %var, align 4
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 18
  %139 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %left_margin, align 4
  %add = add i32 %140, %138
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 19
  %141 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %right_margin, align 4
  %add29 = add i32 %add, %142
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 22
  %143 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hsync_len, align 4
  %add31 = add i32 %add29, %144
  %div32 = udiv i32 %mul, %add31
  %yres = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 1
  %145 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %yres, align 4
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 20
  %147 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %upper_margin, align 4
  %add35 = add i32 %148, %146
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 21
  %149 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %lower_margin, align 4
  %add37 = add i32 %add35, %150
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 23
  %151 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %vsync_len, align 4
  %add39 = add i32 %add37, %152
  %div40 = udiv i32 %div32, %add39
  %153 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %smem_len.i, align 4
  %shr = lshr i32 %154, 10
  %div32.frozen = freeze i32 %div32
  %div49 = udiv i32 %div32.frozen, 1000
  %155 = mul i32 %div49, 1000
  %rem.decomposed = sub i32 %div32.frozen, %155
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %shr, i32 noundef %138, i32 noundef %146, i32 noundef %div49, i32 noundef %rem.decomposed, i32 noundef %div40) #13
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12
  %call51 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end24.err_map_video_crit_edge, label %if.end54

if.end24.err_map_video_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_map_video

if.end54:                                         ; preds = %if.end24
  %call55 = tail call i32 @register_framebuffer(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %err_reg_fb, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %node = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 1
  %156 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %node, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %157, ptr noundef %fix.i) #13
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %158 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_reg_fb:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %err_map_video

err_map_video:                                    ; preds = %err_reg_fb, %if.end24.err_map_video_crit_edge, %do.end
  %err.0 = phi i32 [ %call51, %if.end24.err_map_video_crit_edge ], [ %call55, %err_reg_fb ], [ -22, %do.end ]
  tail call fastcc void @neo_unmap_video(ptr noundef nonnull %call.i)
  br label %err_init_hw

err_init_hw:                                      ; preds = %err_map_video, %do.end17.i, %do.end.i144
  %err.1 = phi i32 [ %err.0, %err_map_video ], [ -16, %do.end.i144 ], [ -12, %do.end17.i ]
  %159 = ptrtoint ptr %modedb.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %modedb.i, align 4
  tail call void @fb_destroy_modedb(ptr noundef %160) #9
  br label %err_scan_monitor

err_scan_monitor:                                 ; preds = %err_init_hw, %do.end53.i, %if.end8.err_scan_monitor_crit_edge
  %err.2 = phi i32 [ %err.1, %err_init_hw ], [ -12, %if.end8.err_scan_monitor_crit_edge ], [ -1, %do.end53.i ]
  %161 = ptrtoint ptr %par2.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %par2.i, align 4
  %mmio_vbase.i149 = getelementptr inbounds %struct.neofb_par, ptr %162, i32 0, i32 34
  %163 = ptrtoint ptr %mmio_vbase.i149 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio_vbase.i149, align 4
  tail call void @iounmap(ptr noundef %164) #9
  %165 = ptrtoint ptr %mmio_vbase.i149 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %mmio_vbase.i149, align 4
  %166 = ptrtoint ptr %mmio_start20.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mmio_start20.i, align 4
  %168 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mmio_len.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %167, i32 noundef %169) #9
  br label %neo_free_fb_info.exit

neo_free_fb_info.exit:                            ; preds = %err_scan_monitor, %do.end33.i, %do.end.i
  %err.3 = phi i32 [ %err.2, %err_scan_monitor ], [ -16, %do.end.i ], [ -12, %do.end33.i ]
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  tail call void @framebuffer_release(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %neo_free_fb_info.exit, %do.end61, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %neo_free_fb_info.exit ], [ 0, %do.end61 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neofb_remove(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %neo_free_fb_info.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

neo_free_fb_info.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #9
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @iounmap(ptr noundef %4) #9
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %2, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_start.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_len.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %9) #9
  %modedb = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modedb, align 4
  tail call void @fb_destroy_modedb(ptr noundef %11) #9
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par1.i, align 4
  %mmio_vbase.i = getelementptr inbounds %struct.neofb_par, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase.i, align 4
  tail call void @iounmap(ptr noundef %15) #9
  %16 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mmio_vbase.i, align 4
  %mmio_start.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 10
  %17 = ptrtoint ptr %mmio_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mmio_start.i, align 4
  %mmio_len.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %19 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mmio_len.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %20) #9
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  tail call void @framebuffer_release(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %neo_free_fb_info.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neo_unmap_video(ptr nocapture noundef %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @iounmap(ptr noundef %2) #9
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_count = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memset(ptr %1, i32 0, i32 40)
  %flags = getelementptr inbounds %struct.vgastate, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %flags, align 4
  %call = tail call i32 @save_vga(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %ref_count, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_count = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %entry.if.end4_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @restore_vga(ptr noundef %1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %ref_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %div = udiv i32 1000000000, %3
  %maxClock = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %maxClock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxClock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp = icmp ugt i32 %div, %5
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %internal_display = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %internal_display to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %internal_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.if.end47_crit_edge, label %land.lhs.true4

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true4:                                   ; preds = %if.end
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %NeoPanelWidth = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 38
  %10 = ptrtoint ptr %NeoPanelWidth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %NeoPanelWidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5 = icmp ugt i32 %9, %11
  br i1 %cmp5, label %land.lhs.true4.do.end_crit_edge, label %lor.lhs.false

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %NeoPanelHeight = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 39
  %14 = ptrtoint ptr %NeoPanelHeight to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %NeoPanelHeight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6 = icmp ugt i32 %13, %15
  br i1 %cmp6, label %lor.lhs.false.do.end_crit_edge, label %if.else

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge
  %yres9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %16 = ptrtoint ptr %yres9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres9, align 4
  %NeoPanelHeight11 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 39
  %18 = ptrtoint ptr %NeoPanelHeight11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %NeoPanelHeight11, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %17, i32 noundef %11, i32 noundef %19) #13
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %21, label %if.else.do.end42_crit_edge [
    i32 1280, label %sw.bb
    i32 1024, label %sw.bb21
    i32 800, label %sw.bb26
    i32 640, label %if.end37
  ]

if.else.do.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

sw.bb:                                            ; preds = %if.else
  %23 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %24)
  %cmp18.not = icmp eq i32 %24, 1024
  br i1 %cmp18.not, label %sw.bb.if.end47_crit_edge, label %sw.bb.do.end42_crit_edge

sw.bb.do.end42_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

sw.bb.if.end47_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

sw.bb21:                                          ; preds = %if.else
  %25 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %26)
  %cmp23.not = icmp eq i32 %26, 768
  br i1 %cmp23.not, label %sw.bb21.if.end47_crit_edge, label %sw.bb21.do.end42_crit_edge

sw.bb21.do.end42_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

sw.bb21.if.end47_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

sw.bb26:                                          ; preds = %if.else
  %27 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres, align 4
  %libretto = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 45
  %29 = ptrtoint ptr %libretto to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %libretto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool28.not = icmp eq i32 %30, 0
  %cond = select i1 %tobool28.not, i32 600, i32 480
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cond)
  %cmp29.not = icmp eq i32 %28, %cond
  br i1 %cmp29.not, label %sw.bb26.if.end47_crit_edge, label %sw.bb26.do.end42_crit_edge

sw.bb26.do.end42_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

sw.bb26.if.end47_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end37:                                         ; preds = %if.else
  %31 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %32)
  %cmp34.not = icmp eq i32 %32, 480
  br i1 %cmp34.not, label %if.end37.if.end47_crit_edge, label %if.end37.do.end42_crit_edge

if.end37.do.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end42:                                         ; preds = %if.end37.do.end42_crit_edge, %sw.bb26.do.end42_crit_edge, %sw.bb21.do.end42_crit_edge, %sw.bb.do.end42_crit_edge, %if.else.do.end42_crit_edge
  %33 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %yres, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %21, i32 noundef %34) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end37.if.end47_crit_edge, %sw.bb26.if.end47_crit_edge, %sw.bb21.if.end47_crit_edge, %sw.bb.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msb_right, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %msb_right48 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %msb_right48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %msb_right48, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %msb_right49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %37 = call ptr @memset(ptr %msb_right49, i32 0, i32 16)
  %38 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bits_per_pixel, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %39, label %do.end94 [
    i32 8, label %if.end47.sw.epilog98_crit_edge
    i32 16, label %sw.bb66
    i32 24, label %sw.bb79
  ]

if.end47.sw.epilog98_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog98

sw.bb66:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog98

sw.bb79:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog98

do.end94:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %39) #13
  br label %cleanup

sw.epilog98:                                      ; preds = %sw.bb79, %sw.bb66, %if.end47.sw.epilog98_crit_edge
  %.sink253 = phi i32 [ 16, %sw.bb79 ], [ 11, %sw.bb66 ], [ 0, %if.end47.sw.epilog98_crit_edge ]
  %.sink252 = phi i32 [ 8, %sw.bb79 ], [ 5, %sw.bb66 ], [ %39, %if.end47.sw.epilog98_crit_edge ]
  %.sink251 = phi i32 [ 8, %sw.bb79 ], [ 5, %sw.bb66 ], [ 0, %if.end47.sw.epilog98_crit_edge ]
  %.sink250 = phi i32 [ 8, %sw.bb79 ], [ 6, %sw.bb66 ], [ %39, %if.end47.sw.epilog98_crit_edge ]
  %41 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink253, ptr %red, align 4
  %length83 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %length83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink252, ptr %length83, align 4
  %43 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink251, ptr %green, align 4
  %length87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %length87 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink250, ptr %length87, align 4
  %45 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %blue, align 4
  %length91 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %length91 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink252, ptr %length91, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %smem_len, align 4
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 4194304)
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %50 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xres_virtual, align 4
  %52 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp103 = icmp ult i32 %51, %53
  br i1 %cmp103, label %if.then104, label %sw.epilog98.if.end107_crit_edge

sw.epilog98.if.end107_crit_edge:                  ; preds = %sw.epilog98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then104:                                       ; preds = %sw.epilog98
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %xres_virtual, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %sw.epilog98.if.end107_crit_edge
  %55 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %56, %39
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %57 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %yres_virtual, align 4
  %mul110 = mul i32 %mul, %58
  %shr = lshr i32 %mul110, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %49)
  %cmp111 = icmp sgt i32 %shr, %49
  br i1 %cmp111, label %if.then112, label %if.end107.if.end125_crit_edge

if.end107.if.end125_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %mul113 = shl i32 %49, 3
  %div117 = udiv i32 %mul113, %mul
  %59 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div117, ptr %yres_virtual, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then112, %if.end107.if.end125_crit_edge
  %60 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %yres_virtual, align 4
  %yres127 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %62 = ptrtoint ptr %yres127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %yres127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp128 = icmp ult i32 %61, %63
  br i1 %cmp128, label %if.then129, label %if.end125.if.end132_crit_edge

if.end125.if.end132_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %yres127 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %yres127, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end125.if.end132_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %65 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xoffset, align 4
  %add = add i32 %66, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %56)
  %cmp135 = icmp ugt i32 %add, %56
  br i1 %cmp135, label %if.then136, label %if.end132.if.end140_crit_edge

if.end132.if.end140_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %56, %53
  %67 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub, ptr %xoffset, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end132.if.end140_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %68 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %yoffset, align 4
  %70 = ptrtoint ptr %yres127 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yres127, align 4
  %add142 = add i32 %71, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %add142, i32 %61)
  %cmp144 = icmp ugt i32 %add142, %61
  br i1 %cmp144, label %if.then145, label %if.end140.if.end150_crit_edge

if.end140.if.end150_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

if.then145:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %sub148 = sub i32 %61, %71
  %72 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub148, ptr %yoffset, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %if.end140.if.end150_crit_edge
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %73 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %nonstd, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %74 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %75 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %39)
  %cmp152 = icmp ugt i32 %39, 23
  br i1 %cmp152, label %if.end150.if.then155_crit_edge, label %lor.lhs.false153

if.end150.if.then155_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155

lor.lhs.false153:                                 ; preds = %if.end150
  %neo2200 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 37
  %76 = ptrtoint ptr %neo2200 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %neo2200, align 4
  %tobool154.not = icmp eq ptr %77, null
  br i1 %tobool154.not, label %lor.lhs.false153.if.then155_crit_edge, label %lor.lhs.false153.cleanup_crit_edge

lor.lhs.false153.cleanup_crit_edge:               ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false153.if.then155_crit_edge:            ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155

if.then155:                                       ; preds = %lor.lhs.false153.if.then155_crit_edge, %if.end150.if.then155_crit_edge
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %78 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %accel_flags, align 4
  %and = and i32 %79, -2
  store i32 %and, ptr %accel_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then155, %lor.lhs.false153.cleanup_crit_edge, %do.end94, %do.end42, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end94 ], [ -22, %do.end42 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then155 ], [ 0, %lor.lhs.false153.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_set_par(ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %3 = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %3) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 38) #9, !srcloc !151
  tail call fastcc void @vgaHWProtect(i32 noundef 1)
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %6 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lower_margin, align 4
  %add = add i32 %7, %5
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %8 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsync_len, align 4
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %10 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %upper_margin, align 4
  %12 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %var, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %14 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %right_margin.i, align 4
  %add.i = add i32 %15, %13
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %16 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hsync_len.i, align 4
  %add1.i = add i32 %add.i, %17
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %18 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %left_margin.i, align 4
  %add2.i = add i32 %add1.i, %19
  %shr.i = lshr i32 %add2.i, 3
  %add4.i = add i32 %add, %9
  %add5.i = add i32 %add4.i, %11
  %MiscOutReg.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %MiscOutReg.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 35, ptr %MiscOutReg.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %21 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 99, i8 35
  %23 = ptrtoint ptr %MiscOutReg.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.store.select.i, ptr %MiscOutReg.i, align 4
  %24 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sync.i, align 4
  %and9.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %entry.if.end16.i_crit_edge

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %26 = or i8 %spec.store.select.i, -128
  %27 = ptrtoint ptr %MiscOutReg.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %MiscOutReg.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %entry.if.end16.i_crit_edge
  %Sequencer.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %Sequencer.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %Sequencer.i, align 2
  %arrayidx18.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx18.i, align 1
  %arrayidx20.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 15, ptr %arrayidx20.i, align 2
  %arrayidx22.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 14, ptr %arrayidx24.i, align 2
  %33 = trunc i32 %shr.i to i8
  %conv25.i = add i8 %33, -5
  %CRTC.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %CRTC.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv25.i, ptr %CRTC.i, align 1
  %35 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %var, align 4
  %shr28.i = lshr i32 %36, 3
  %37 = trunc i32 %shr28.i to i8
  %conv30.i = add i8 %37, -1
  %arrayidx32.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv30.i, ptr %arrayidx32.i, align 1
  %39 = load i32, ptr %var, align 4
  %shr34.i = lshr i32 %39, 3
  %40 = trunc i32 %shr34.i to i8
  %conv36.i = add i8 %40, -1
  %arrayidx38.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv36.i, ptr %arrayidx38.i, align 1
  %sub39.i = add nsw i32 %shr.i, -1
  %42 = trunc i32 %sub39.i to i8
  %43 = and i8 %42, 31
  %conv42.i = or i8 %43, -128
  %arrayidx44.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv42.i, ptr %arrayidx44.i, align 1
  %45 = load i32, ptr %var, align 4
  %46 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %right_margin.i, align 4
  %add47.i = add i32 %47, %45
  %shr48.i = lshr i32 %add47.i, 3
  %conv49.i = trunc i32 %shr48.i to i8
  %arrayidx51.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv49.i, ptr %arrayidx51.i, align 1
  %and53.i = shl nsw i32 %sub39.i, 2
  %shl.i = and i32 %and53.i, 128
  %49 = lshr i32 %add1.i, 3
  %and55.i = and i32 %49, 31
  %or56.i = or i32 %shl.i, %and55.i
  %conv57.i = trunc i32 %or56.i to i8
  %arrayidx59.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv57.i, ptr %arrayidx59.i, align 1
  %sub60.i = add i32 %add5.i, -2
  %conv62.i = trunc i32 %sub60.i to i8
  %arrayidx64.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 6
  %51 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv62.i, ptr %arrayidx64.i, align 1
  %and66.i = lshr i32 %sub60.i, 8
  %52 = and i32 %and66.i, 1
  %53 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %yres, align 4
  %sub69.i = add i32 %54, -1
  %and70.i = and i32 %sub69.i, 256
  %shr71.i = lshr exact i32 %and70.i, 7
  %and73.i = lshr i32 %add, 6
  %55 = and i32 %and73.i, 4
  %shr79.i = lshr exact i32 %and70.i, 5
  %and83.i = lshr i32 %sub60.i, 4
  %56 = and i32 %and83.i, 32
  %and88.i = lshr i32 %sub69.i, 3
  %shr89.i = and i32 %and88.i, 64
  %and91.i = lshr i32 %add, 2
  %57 = and i32 %and91.i, 128
  %or72.i = or i32 %57, %55
  %or75.i = or i32 %or72.i, %52
  %or80.i = or i32 %or75.i, %56
  %or81.i = or i32 %or80.i, %shr71.i
  %or85.i = or i32 %or81.i, %shr79.i
  %or90.i = or i32 %or85.i, %shr89.i
  %58 = trunc i32 %or90.i to i8
  %conv94.i = or i8 %58, 16
  %arrayidx96.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 7
  %59 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv94.i, ptr %arrayidx96.i, align 1
  %arrayidx98.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx98.i, align 1
  %61 = load i32, ptr %yres, align 4
  %sub100.i = add i32 %61, 1023
  %and101.i = lshr i32 %sub100.i, 4
  %62 = trunc i32 %and101.i to i8
  %63 = and i8 %62, 32
  %conv104.i = or i8 %63, 64
  %arrayidx106.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 9
  %64 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv104.i, ptr %arrayidx106.i, align 1
  %vmode.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %65 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vmode.i, align 4
  %and107.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %if.end16.i.vgaHWInit.exit_crit_edge, label %if.then109.i

if.end16.i.vgaHWInit.exit_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vgaHWInit.exit

if.then109.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = or i8 %63, -64
  %68 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx106.i, align 1
  br label %vgaHWInit.exit

vgaHWInit.exit:                                   ; preds = %if.then109.i, %if.end16.i.vgaHWInit.exit_crit_edge
  %arrayidx117.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 10
  %conv129.i = trunc i32 %add to i8
  %arrayidx131.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 16
  %69 = call ptr @memset(ptr %arrayidx117.i, i32 0, i32 6)
  %70 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv129.i, ptr %arrayidx131.i, align 1
  %71 = trunc i32 %add4.i to i8
  %72 = and i8 %71, 15
  %conv134.i = or i8 %72, 32
  %arrayidx136.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 17
  %73 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv134.i, ptr %arrayidx136.i, align 1
  %74 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %yres, align 4
  %76 = trunc i32 %75 to i8
  %conv140.i = add i8 %76, -1
  %arrayidx142.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 18
  %77 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv140.i, ptr %arrayidx142.i, align 1
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %78 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xres_virtual.i, align 4
  %shr143.i = lshr i32 %79, 4
  %conv144.i = trunc i32 %shr143.i to i8
  %arrayidx146.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 19
  %80 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv144.i, ptr %arrayidx146.i, align 1
  %arrayidx148.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 20
  %81 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx148.i, align 1
  %82 = load i32, ptr %yres, align 4
  %83 = trunc i32 %82 to i8
  %conv152.i = add i8 %83, -1
  %arrayidx154.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 21
  %84 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv152.i, ptr %arrayidx154.i, align 1
  %85 = trunc i32 %add5.i to i8
  %conv157.i = add i8 %85, -1
  %arrayidx159.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 22
  %86 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv157.i, ptr %arrayidx159.i, align 1
  %arrayidx161.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 23
  %87 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -61, ptr %arrayidx161.i, align 1
  %arrayidx163.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 24
  %88 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %arrayidx163.i, align 1
  %Graphics.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5
  %arrayidx174.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 5
  %89 = call ptr @memset(ptr %Graphics.i, i32 0, i32 5)
  %90 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 64, ptr %arrayidx174.i, align 1
  %arrayidx176.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 6
  %91 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 5, ptr %arrayidx176.i, align 1
  %arrayidx178.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 7
  %92 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 15, ptr %arrayidx178.i, align 1
  %arrayidx180.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 8
  %93 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %arrayidx180.i, align 1
  %Attribute.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 6
  %94 = ptrtoint ptr %Attribute.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %Attribute.i, align 4
  %arrayidx183.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 1
  %95 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %arrayidx183.i, align 1
  %arrayidx185.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 2
  %96 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %arrayidx185.i, align 2
  %arrayidx187.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 3
  %97 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %arrayidx187.i, align 1
  %arrayidx189.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 4
  %98 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %arrayidx189.i, align 4
  %arrayidx191.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 5
  %99 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %arrayidx191.i, align 1
  %arrayidx193.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 6
  %100 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 6, ptr %arrayidx193.i, align 2
  %arrayidx195.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 7
  %101 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 7, ptr %arrayidx195.i, align 1
  %arrayidx197.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 8
  %102 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 8, ptr %arrayidx197.i, align 4
  %arrayidx199.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 9
  %103 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 9, ptr %arrayidx199.i, align 1
  %arrayidx201.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 10
  %104 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 10, ptr %arrayidx201.i, align 2
  %arrayidx203.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 11
  %105 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 11, ptr %arrayidx203.i, align 1
  %arrayidx205.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 12
  %106 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 12, ptr %arrayidx205.i, align 4
  %arrayidx207.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 13
  %107 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 13, ptr %arrayidx207.i, align 1
  %arrayidx209.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 14
  %108 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 14, ptr %arrayidx209.i, align 2
  %arrayidx211.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 15
  %109 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 15, ptr %arrayidx211.i, align 1
  %arrayidx213.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 16
  %arrayidx215.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 17
  %110 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %arrayidx215.i, align 1
  %arrayidx217.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 18
  %111 = ptrtoint ptr %arrayidx217.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 15, ptr %arrayidx217.i, align 2
  %arrayidx219.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 19
  %112 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx219.i, align 1
  %arrayidx221.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 20
  %113 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx221.i, align 4
  %114 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %arrayidx213.i, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %115 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bits_per_pixel, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %116, label %vgaHWInit.exit.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb15
    i32 24, label %sw.bb28
  ]

vgaHWInit.exit.sw.epilog_crit_edge:               ; preds = %vgaHWInit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %vgaHWInit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xres_virtual.i, align 4
  %shr = lshr i32 %119, 3
  %conv = trunc i32 %shr to i8
  %120 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv, ptr %arrayidx146.i, align 1
  %121 = load i32, ptr %xres_virtual.i, align 4
  %shr13 = lshr i32 %121, 11
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %vgaHWInit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %xres_virtual.i, align 4
  %shr18 = lshr i32 %123, 2
  %conv19 = trunc i32 %shr18 to i8
  %124 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv19, ptr %arrayidx146.i, align 1
  %125 = load i32, ptr %xres_virtual.i, align 4
  %shr24 = lshr i32 %125, 10
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %vgaHWInit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %xres_virtual.i, align 4
  %mul = mul i32 %127, 3
  %shr31 = lshr i32 %mul, 3
  %conv32 = trunc i32 %shr31 to i8
  %128 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv32, ptr %arrayidx146.i, align 1
  %129 = load i32, ptr %xres_virtual.i, align 4
  %mul37 = mul i32 %129, 3
  %shr38 = lshr i32 %mul37, 11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb28, %sw.bb15, %sw.bb
  %shr38.sink = phi i32 [ %shr38, %sw.bb28 ], [ %shr24, %sw.bb15 ], [ %shr13, %sw.bb ]
  %.sink741 = phi i8 [ 20, %sw.bb28 ], [ 19, %sw.bb15 ], [ 17, %sw.bb ]
  %conv39 = trunc i32 %shr38.sink to i8
  %ExtCRTOffset40 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 9
  %130 = ptrtoint ptr %ExtCRTOffset40 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv39, ptr %ExtCRTOffset40, align 1
  %ExtColorModeSelect41 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 12
  %131 = ptrtoint ptr %ExtColorModeSelect41 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %.sink741, ptr %ExtColorModeSelect41, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %vgaHWInit.exit.sw.epilog_crit_edge
  %ExtCRTDispAddr = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 8
  %132 = ptrtoint ptr %ExtCRTDispAddr to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 16, ptr %ExtCRTDispAddr, align 2
  %add4 = add i32 %9, 2046
  %add6 = add i32 %add4, %add
  %sub = add i32 %add6, %11
  %and = lshr i32 %sub, 10
  %133 = and i32 %and, 1
  %134 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %yres, align 4
  %sub45 = add i32 %135, 2047
  %and46 = lshr i32 %sub45, 9
  %shr47 = and i32 %and46, 2
  %and48 = and i32 %add, 1024
  %136 = lshr exact i32 %and48, 8
  %137 = lshr exact i32 %and48, 7
  %or = or i32 %137, %136
  %or50 = or i32 %or, %133
  %or53 = or i32 %or50, %shr47
  %conv54 = trunc i32 %or53 to i8
  %VerticalExt = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 32
  %138 = ptrtoint ptr %VerticalExt to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv54, ptr %VerticalExt, align 1
  %pci_burst = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 41
  %139 = ptrtoint ptr %pci_burst to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pci_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool55.not = icmp eq i32 %140, 0
  %.sink = select i1 %tobool55.not, i8 0, i8 48
  %141 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 10
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %.sink, ptr %141, align 4
  %SysIfaceCntl2 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 11
  %143 = ptrtoint ptr %SysIfaceCntl2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -64, ptr %SysIfaceCntl2, align 1
  %PanelDispCntlRegRead = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 17
  %144 = ptrtoint ptr %PanelDispCntlRegRead to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %PanelDispCntlRegRead, align 1
  %PanelDispCntlReg1 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 14
  %internal_display = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 43
  %145 = ptrtoint ptr %internal_display to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %internal_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool59.not = icmp eq i32 %146, 0
  %spec.store.select = select i1 %tobool59.not, i8 0, i8 2
  %147 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %spec.store.select, ptr %PanelDispCntlReg1, align 4
  %external_display = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 44
  %148 = ptrtoint ptr %external_display to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %external_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool66.not = icmp eq i32 %149, 0
  br i1 %tobool66.not, label %if.end72, label %if.end72.thread

if.end72.thread:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %150 = or i8 %spec.store.select, 1
  br label %if.end82.sink.split

if.end72:                                         ; preds = %sw.epilog
  br i1 %tobool59.not, label %if.then76, label %if.end72.if.end82_crit_edge

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %152 = and i8 %151, 3
  br label %if.end82.sink.split

if.end82.sink.split:                              ; preds = %if.then76, %if.end72.thread
  %.sink742 = phi i8 [ %150, %if.end72.thread ], [ %152, %if.then76 ]
  %153 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %.sink742, ptr %PanelDispCntlReg1, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %if.end72.if.end82_crit_edge
  %154 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %var, align 4
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %155, label %if.end82.sw.epilog101_crit_edge [
    i32 1280, label %if.end82.sw.epilog101.sink.split_crit_edge
    i32 1024, label %sw.bb89
    i32 800, label %sw.bb94
  ]

if.end82.sw.epilog101.sink.split_crit_edge:       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog101.sink.split

if.end82.sw.epilog101_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog101

sw.bb89:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog101.sink.split

sw.bb94:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog101.sink.split

sw.epilog101.sink.split:                          ; preds = %sw.bb94, %sw.bb89, %if.end82.sw.epilog101.sink.split_crit_edge
  %.sink745 = phi i8 [ 32, %sw.bb94 ], [ 64, %sw.bb89 ], [ 96, %if.end82.sw.epilog101.sink.split_crit_edge ]
  %157 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %PanelDispCntlReg1, align 4
  %159 = or i8 %158, %.sink745
  store i8 %159, ptr %PanelDispCntlReg1, align 4
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %sw.epilog101.sink.split, %if.end82.sw.epilog101_crit_edge
  %160 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %PanelDispCntlReg1, align 4
  %162 = and i8 %161, 3
  %and104 = zext i8 %162 to i32
  %switch.tableidx = add nsw i32 %and104, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %163 = icmp ult i32 %switch.tableidx, 3
  br i1 %163, label %switch.lookup, label %sw.epilog101.sw.epilog109_crit_edge

sw.epilog101.sw.epilog109_crit_edge:              ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog109

switch.lookup:                                    ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #11
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.neofb_set_par, i32 0, i32 %switch.tableidx
  %164 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %164)
  %switch.load = load i32, ptr %switch.gep, align 4
  %GeneralLockReg107 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 7
  %165 = ptrtoint ptr %GeneralLockReg107 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %switch.masked, ptr %GeneralLockReg107, align 1
  %ProgramVCLK108 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 28
  %166 = ptrtoint ptr %ProgramVCLK108 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %switch.load, ptr %ProgramVCLK108, align 4
  br label %sw.epilog109

sw.epilog109:                                     ; preds = %switch.lookup, %sw.epilog101.sw.epilog109_crit_edge
  %PanelDispCntlReg2 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 15
  %167 = ptrtoint ptr %PanelDispCntlReg2 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %PanelDispCntlReg2, align 1
  %PanelDispCntlReg3 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 16
  %168 = ptrtoint ptr %PanelDispCntlReg3 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %PanelDispCntlReg3, align 2
  %lcd_stretch110 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 42
  %169 = ptrtoint ptr %lcd_stretch110 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %lcd_stretch110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool111.not = icmp eq i32 %170, 0
  br i1 %tobool111.not, label %sw.epilog109.if.end132_crit_edge, label %land.lhs.true

sw.epilog109.if.end132_crit_edge:                 ; preds = %sw.epilog109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

land.lhs.true:                                    ; preds = %sw.epilog109
  %171 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %PanelDispCntlReg1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %172)
  %cmp114 = icmp eq i8 %172, 2
  br i1 %cmp114, label %land.lhs.true116, label %land.lhs.true.if.end132_crit_edge

land.lhs.true.if.end132_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

land.lhs.true116:                                 ; preds = %land.lhs.true
  %173 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %var, align 4
  %NeoPanelWidth = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 38
  %175 = ptrtoint ptr %NeoPanelWidth to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %NeoPanelWidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %176)
  %cmp119.not = icmp eq i32 %174, %176
  br i1 %cmp119.not, label %land.lhs.true116.if.end132_crit_edge, label %if.then121

land.lhs.true116.if.end132_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then121:                                       ; preds = %land.lhs.true116
  %177 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %174, label %if.then121.if.end132_crit_edge [
    i32 320, label %if.then121.sw.bb124_crit_edge
    i32 400, label %if.then121.sw.bb124_crit_edge778
    i32 640, label %if.then121.sw.bb124_crit_edge779
    i32 800, label %if.then121.sw.bb124_crit_edge780
    i32 1024, label %if.then121.sw.bb124_crit_edge781
  ]

if.then121.sw.bb124_crit_edge781:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb124

if.then121.sw.bb124_crit_edge780:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb124

if.then121.sw.bb124_crit_edge779:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb124

if.then121.sw.bb124_crit_edge778:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb124

if.then121.sw.bb124_crit_edge:                    ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb124

if.then121.if.end132_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

sw.bb124:                                         ; preds = %if.then121.sw.bb124_crit_edge, %if.then121.sw.bb124_crit_edge778, %if.then121.sw.bb124_crit_edge779, %if.then121.sw.bb124_crit_edge780, %if.then121.sw.bb124_crit_edge781
  %178 = ptrtoint ptr %PanelDispCntlReg2 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -58, ptr %PanelDispCntlReg2, align 1
  br label %if.end132

if.end132:                                        ; preds = %sw.bb124, %if.then121.if.end132_crit_edge, %land.lhs.true116.if.end132_crit_edge, %land.lhs.true.if.end132_crit_edge, %sw.epilog109.if.end132_crit_edge
  %tobool153.not = phi i1 [ false, %sw.bb124 ], [ true, %if.then121.if.end132_crit_edge ], [ true, %land.lhs.true116.if.end132_crit_edge ], [ true, %land.lhs.true.if.end132_crit_edge ], [ true, %sw.epilog109.if.end132_crit_edge ]
  %PanelVertCenterReg1 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 18
  %PanelVertCenterReg2 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 19
  %PanelVertCenterReg3 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 20
  %PanelVertCenterReg4 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 21
  %PanelVertCenterReg5 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 22
  %PanelHorizCenterReg1 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 23
  %PanelHorizCenterReg2 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 24
  %PanelHorizCenterReg3 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 25
  %PanelHorizCenterReg4 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 26
  %PanelHorizCenterReg5 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 27
  %179 = call ptr @memset(ptr %PanelVertCenterReg1, i32 0, i32 10)
  %180 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %PanelDispCntlReg1, align 4
  %182 = and i8 %181, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool136.not = icmp eq i8 %182, 0
  br i1 %tobool136.not, label %if.end132.if.end199_crit_edge, label %if.then137

if.end132.if.end199_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then137:                                       ; preds = %if.end132
  %183 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %var, align 4
  %NeoPanelWidth140 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 38
  %185 = ptrtoint ptr %NeoPanelWidth140 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %NeoPanelWidth140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %186)
  %cmp141 = icmp eq i32 %184, %186
  br i1 %cmp141, label %if.then137.if.end199_crit_edge, label %if.else144

if.then137.if.end199_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.else144:                                       ; preds = %if.then137
  %187 = ptrtoint ptr %PanelDispCntlReg2 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %PanelDispCntlReg2, align 1
  %189 = or i8 %188, 1
  store i8 %189, ptr %PanelDispCntlReg2, align 1
  %190 = ptrtoint ptr %PanelDispCntlReg3 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %PanelDispCntlReg3, align 2
  %192 = or i8 %191, 16
  store i8 %192, ptr %PanelDispCntlReg3, align 2
  br i1 %tobool153.not, label %if.then154, label %if.else144.if.end167_crit_edge

if.else144.if.end167_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then154:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %var, align 4
  %sub158 = sub i32 %186, %194
  %shr159 = lshr i32 %sub158, 4
  %sub160 = add nsw i32 %shr159, -1
  %NeoPanelHeight = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 39
  %195 = ptrtoint ptr %NeoPanelHeight to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %NeoPanelHeight, align 4
  %197 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %yres, align 4
  %sub163 = sub i32 %196, %198
  %shr164 = lshr i32 %sub163, 1
  %sub165 = add nsw i32 %shr164, -2
  br label %if.end167

if.end167:                                        ; preds = %if.then154, %if.else144.if.end167_crit_edge
  %hoffset.0 = phi i32 [ %sub160, %if.then154 ], [ 0, %if.else144.if.end167_crit_edge ]
  %voffset.0 = phi i32 [ %sub165, %if.then154 ], [ 0, %if.else144.if.end167_crit_edge ]
  %199 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %var, align 4
  %201 = zext i32 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %200, label %if.end167.if.end199_crit_edge [
    i32 320, label %sw.bb170
    i32 400, label %sw.bb175
    i32 640, label %sw.bb180
    i32 800, label %sw.bb185
    i32 1024, label %sw.bb190
  ]

if.end167.if.end199_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

sw.bb170:                                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %conv171 = trunc i32 %hoffset.0 to i8
  %202 = ptrtoint ptr %PanelHorizCenterReg3 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv171, ptr %PanelHorizCenterReg3, align 1
  %conv173 = trunc i32 %voffset.0 to i8
  %203 = ptrtoint ptr %PanelVertCenterReg2 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv173, ptr %PanelVertCenterReg2, align 1
  br label %if.end199

sw.bb175:                                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %conv176 = trunc i32 %hoffset.0 to i8
  %204 = ptrtoint ptr %PanelHorizCenterReg4 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv176, ptr %PanelHorizCenterReg4, align 4
  %conv178 = trunc i32 %voffset.0 to i8
  %205 = ptrtoint ptr %PanelVertCenterReg1 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv178, ptr %PanelVertCenterReg1, align 4
  br label %if.end199

sw.bb180:                                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %conv181 = trunc i32 %hoffset.0 to i8
  %206 = ptrtoint ptr %PanelHorizCenterReg1 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv181, ptr %PanelHorizCenterReg1, align 1
  %conv183 = trunc i32 %voffset.0 to i8
  %207 = ptrtoint ptr %PanelVertCenterReg3 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv183, ptr %PanelVertCenterReg3, align 2
  br label %if.end199

sw.bb185:                                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %conv186 = trunc i32 %hoffset.0 to i8
  %208 = ptrtoint ptr %PanelHorizCenterReg2 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv186, ptr %PanelHorizCenterReg2, align 2
  %conv188 = trunc i32 %voffset.0 to i8
  %209 = ptrtoint ptr %PanelVertCenterReg4 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv188, ptr %PanelVertCenterReg4, align 1
  br label %if.end199

sw.bb190:                                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %conv191 = trunc i32 %hoffset.0 to i8
  %210 = ptrtoint ptr %PanelHorizCenterReg5 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv191, ptr %PanelHorizCenterReg5, align 1
  %conv193 = trunc i32 %voffset.0 to i8
  %211 = ptrtoint ptr %PanelVertCenterReg5 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv193, ptr %PanelVertCenterReg5, align 4
  br label %if.end199

if.end199:                                        ; preds = %sw.bb190, %sw.bb185, %sw.bb180, %sw.bb175, %sw.bb170, %if.end167.if.end199_crit_edge, %if.then137.if.end199_crit_edge, %if.end132.if.end199_crit_edge
  %212 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %var, align 4
  %214 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %yres, align 4
  %216 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %bits_per_pixel, align 4
  %218 = zext i32 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %217, label %if.end199.neoFindMode.exit_crit_edge [
    i32 8, label %if.end199.sw.epilog.i_crit_edge
    i32 16, label %sw.bb1.i
    i32 24, label %sw.bb2.i
  ]

if.end199.sw.epilog.i_crit_edge:                  ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end199.neoFindMode.exit_crit_edge:             ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %neoFindMode.exit

sw.bb1.i:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end199.sw.epilog.i_crit_edge
  %size.0.i = phi i32 [ 3, %sw.bb2.i ], [ 6, %sw.bb1.i ], [ 6, %if.end199.sw.epilog.i_crit_edge ]
  %mode.0.i = phi ptr [ @bios24, %sw.bb2.i ], [ @bios16, %sw.bb1.i ], [ @bios8, %if.end199.sw.epilog.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %sw.epilog.i
  %i.052.i = phi i32 [ 0, %sw.epilog.i ], [ %inc23.i, %for.inc22.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.biosMode, ptr %mode.0.i, i32 %i.052.i
  %219 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %213)
  %cmp3.not.i = icmp sge i32 %220, %213
  call void @__sanitizer_cov_trace_cmp4(i32 %i.052.i, i32 %size.0.i)
  %cmp750.i = icmp slt i32 %i.052.i, %size.0.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp750.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body8.i_crit_edge, label %for.body.i.for.inc22.i_crit_edge

for.body.i.for.inc22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

for.body.i.for.body8.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc.i.for.body8.i_crit_edge, %for.body.i.for.body8.i_crit_edge
  %i.151.i = phi i32 [ %inc.i, %for.inc.i.for.body8.i_crit_edge ], [ %i.052.i, %for.body.i.for.body8.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.biosMode, ptr %mode.0.i, i32 %i.151.i
  %221 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %220)
  %cmp11.not.i = icmp eq i32 %222, %220
  br i1 %cmp11.not.i, label %if.end.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %i.151.i, -1
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %for.body8.i
  %y_res.i = getelementptr %struct.biosMode, ptr %mode.0.i, i32 %i.151.i, i32 1
  %223 = ptrtoint ptr %y_res.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %y_res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %215)
  %cmp16.not.i = icmp slt i32 %224, %215
  br i1 %cmp16.not.i, label %for.inc.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %if.end.i
  %inc.i = add i32 %i.151.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %size.0.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc22.i_crit_edge, label %for.inc.i.for.body8.i_crit_edge

for.inc.i.for.body8.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.inc.i.for.inc22.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %for.inc.i.for.inc22.i_crit_edge, %for.body.i.for.inc22.i_crit_edge
  %i.2.i = phi i32 [ %i.052.i, %for.body.i.for.inc22.i_crit_edge ], [ %size.0.i, %for.inc.i.for.inc22.i_crit_edge ]
  %inc23.i = add i32 %i.2.i, 1
  %cmp.i = icmp slt i32 %inc23.i, %size.0.i
  br i1 %cmp.i, label %for.inc22.i.for.body.i_crit_edge, label %for.end24.i

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end24.i:                                      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub25.i = add nsw i32 %size.0.i, -1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end24.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.then12.i
  %sub25.sink.i = phi i32 [ %sub25.i, %for.end24.i ], [ %sub.i, %if.then12.i ], [ %i.151.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %mode27.i = getelementptr %struct.biosMode, ptr %mode.0.i, i32 %sub25.sink.i, i32 2
  %225 = ptrtoint ptr %mode27.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mode27.i, align 4
  br label %neoFindMode.exit

neoFindMode.exit:                                 ; preds = %cleanup.sink.split.i, %if.end199.neoFindMode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end199.neoFindMode.exit_crit_edge ], [ %226, %cleanup.sink.split.i ]
  %conv207 = trunc i32 %retval.0.i to i8
  %biosMode = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 13
  %227 = ptrtoint ptr %biosMode to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv207, ptr %biosMode, align 1
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %228 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %229
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc15.i.for.cond4.preheader.i_crit_edge, %neoFindMode.exit
  %f_best_diff.167.i = phi i32 [ 524287, %neoFindMode.exit ], [ %f_best_diff.4.i, %for.inc15.i.for.cond4.preheader.i_crit_edge ]
  %d_best.165.i = phi i32 [ 0, %neoFindMode.exit ], [ %d_best.4.i, %for.inc15.i.for.cond4.preheader.i_crit_edge ]
  %n_best.164.i = phi i32 [ 0, %neoFindMode.exit ], [ %n_best.4.i, %for.inc15.i.for.cond4.preheader.i_crit_edge ]
  %d.062.i = phi i32 [ 0, %neoFindMode.exit ], [ %add7.i, %for.inc15.i.for.cond4.preheader.i_crit_edge ]
  %add7.i = add nuw nsw i32 %d.062.i, 1
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i.for.cond4.i_crit_edge, %for.cond4.preheader.i
  %n_best.2.i = phi i32 [ %n_best.3.i, %for.body6.i.for.cond4.i_crit_edge ], [ %n_best.164.i, %for.cond4.preheader.i ]
  %d_best.2.i = phi i32 [ %d_best.3.i, %for.body6.i.for.cond4.i_crit_edge ], [ %d_best.165.i, %for.cond4.preheader.i ]
  %f_best_diff.2.i = phi i32 [ %231, %for.body6.i.for.cond4.i_crit_edge ], [ %f_best_diff.167.i, %for.cond4.preheader.i ]
  %n.0.i = phi i32 [ %add.i718, %for.body6.i.for.cond4.i_crit_edge ], [ 0, %for.cond4.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %n.0.i)
  %exitcond.not.i717 = icmp eq i32 %n.0.i, 128
  br i1 %exitcond.not.i717, label %for.cond4.i.for.inc15.i_crit_edge, label %for.body6.i

for.cond4.i.for.inc15.i_crit_edge:                ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i

for.body6.i:                                      ; preds = %for.cond4.i
  %add.i718 = add nuw nsw i32 %n.0.i, 1
  %mul.i = mul nuw nsw i32 %add.i718, 14318
  %div.udiv.i = udiv i32 %mul.i, %add7.i
  %sub.i719 = sub nsw i32 %div.udiv.i, %div
  %230 = tail call i32 @llvm.abs.i32(i32 %sub.i719, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %f_best_diff.2.i)
  %cmp10.not.i = icmp sgt i32 %230, %f_best_diff.2.i
  %n_best.3.i = select i1 %cmp10.not.i, i32 %n_best.2.i, i32 %n.0.i
  %d_best.3.i = select i1 %cmp10.not.i, i32 %d_best.2.i, i32 %d.062.i
  %231 = tail call i32 @llvm.smin.i32(i32 %230, i32 %f_best_diff.2.i) #9
  %cmp11.i = icmp ugt i32 %div.udiv.i, %div
  br i1 %cmp11.i, label %for.body6.i.for.inc15.i_crit_edge, label %for.body6.i.for.cond4.i_crit_edge

for.body6.i.for.cond4.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.i

for.body6.i.for.inc15.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %for.body6.i.for.inc15.i_crit_edge, %for.cond4.i.for.inc15.i_crit_edge
  %n_best.4.i = phi i32 [ %n_best.3.i, %for.body6.i.for.inc15.i_crit_edge ], [ %n_best.2.i, %for.cond4.i.for.inc15.i_crit_edge ]
  %d_best.4.i = phi i32 [ %d_best.3.i, %for.body6.i.for.inc15.i_crit_edge ], [ %d_best.2.i, %for.cond4.i.for.inc15.i_crit_edge ]
  %f_best_diff.4.i = phi i32 [ %231, %for.body6.i.for.inc15.i_crit_edge ], [ %f_best_diff.2.i, %for.cond4.i.for.inc15.i_crit_edge ]
  %exitcond73.not.i = icmp eq i32 %add7.i, 32
  br i1 %exitcond73.not.i, label %for.inc15.i.for.cond4.preheader.1.i_crit_edge, label %for.inc15.i.for.cond4.preheader.i_crit_edge

for.inc15.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader.i

for.inc15.i.for.cond4.preheader.1.i_crit_edge:    ; preds = %for.inc15.i
  br label %for.cond4.preheader.1.i

for.cond4.preheader.1.i:                          ; preds = %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge, %for.inc15.i.for.cond4.preheader.1.i_crit_edge
  %f_best_diff.167.1.i = phi i32 [ %f_best_diff.4.1.i, %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge ], [ %f_best_diff.4.i, %for.inc15.i.for.cond4.preheader.1.i_crit_edge ]
  %f_best.166.1.i = phi i32 [ %f_best.4.1.i, %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge ], [ 0, %for.inc15.i.for.cond4.preheader.1.i_crit_edge ]
  %d_best.165.1.i = phi i32 [ %d_best.4.1.i, %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge ], [ %d_best.4.i, %for.inc15.i.for.cond4.preheader.1.i_crit_edge ]
  %n_best.164.1.i = phi i32 [ %n_best.4.1.i, %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge ], [ %n_best.4.i, %for.inc15.i.for.cond4.preheader.1.i_crit_edge ]
  %d.062.1.i = phi i32 [ %add7.1.i, %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge ], [ 0, %for.inc15.i.for.cond4.preheader.1.i_crit_edge ]
  %add7.1.i = add nuw nsw i32 %d.062.1.i, 1
  br label %for.cond4.1.i

for.cond4.1.i:                                    ; preds = %if.end.1.i.for.cond4.1.i_crit_edge, %for.cond4.preheader.1.i
  %n_best.2.1.i = phi i32 [ %n_best.3.1.i, %if.end.1.i.for.cond4.1.i_crit_edge ], [ %n_best.164.1.i, %for.cond4.preheader.1.i ]
  %d_best.2.1.i = phi i32 [ %d_best.3.1.i, %if.end.1.i.for.cond4.1.i_crit_edge ], [ %d_best.165.1.i, %for.cond4.preheader.1.i ]
  %f_best.2.1.i = phi i32 [ %f_best.3.1.i, %if.end.1.i.for.cond4.1.i_crit_edge ], [ %f_best.166.1.i, %for.cond4.preheader.1.i ]
  %f_best_diff.2.1.i = phi i32 [ %f_best_diff.3.1.i, %if.end.1.i.for.cond4.1.i_crit_edge ], [ %f_best_diff.167.1.i, %for.cond4.preheader.1.i ]
  %n.0.1.i = phi i32 [ %add.1.i, %if.end.1.i.for.cond4.1.i_crit_edge ], [ 0, %for.cond4.preheader.1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %n.0.1.i)
  %exitcond.1.not.i = icmp eq i32 %n.0.1.i, 128
  br i1 %exitcond.1.not.i, label %for.cond4.1.i.for.inc15.1.i_crit_edge, label %for.body6.1.i

for.cond4.1.i.for.inc15.1.i_crit_edge:            ; preds = %for.cond4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.1.i

for.body6.1.i:                                    ; preds = %for.cond4.1.i
  %add.1.i = add nuw nsw i32 %n.0.1.i, 1
  %mul.1.i = mul nuw nsw i32 %add.1.i, 14318
  %div.udiv.1.i = udiv i32 %mul.1.i, %add7.1.i
  %232 = lshr i32 %div.udiv.1.i, 1
  %sub.1.i = sub nsw i32 %232, %div
  %233 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 true) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %f_best_diff.2.1.i)
  %cmp10.not.1.i = icmp sgt i32 %233, %f_best_diff.2.1.i
  br i1 %cmp10.not.1.i, label %for.body6.1.i.if.end.1.i_crit_edge, label %if.then.1.i

for.body6.1.i.if.end.1.i_crit_edge:               ; preds = %for.body6.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.body6.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.body6.1.i.if.end.1.i_crit_edge
  %n_best.3.1.i = phi i32 [ %n.0.1.i, %if.then.1.i ], [ %n_best.2.1.i, %for.body6.1.i.if.end.1.i_crit_edge ]
  %d_best.3.1.i = phi i32 [ %d.062.1.i, %if.then.1.i ], [ %d_best.2.1.i, %for.body6.1.i.if.end.1.i_crit_edge ]
  %f_best.3.1.i = phi i32 [ 1, %if.then.1.i ], [ %f_best.2.1.i, %for.body6.1.i.if.end.1.i_crit_edge ]
  %f_best_diff.3.1.i = phi i32 [ %233, %if.then.1.i ], [ %f_best_diff.2.1.i, %for.body6.1.i.if.end.1.i_crit_edge ]
  %cmp11.1.i = icmp ugt i32 %232, %div
  br i1 %cmp11.1.i, label %if.end.1.i.for.inc15.1.i_crit_edge, label %if.end.1.i.for.cond4.1.i_crit_edge

if.end.1.i.for.cond4.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.1.i

if.end.1.i.for.inc15.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.1.i

for.inc15.1.i:                                    ; preds = %if.end.1.i.for.inc15.1.i_crit_edge, %for.cond4.1.i.for.inc15.1.i_crit_edge
  %n_best.4.1.i = phi i32 [ %n_best.3.1.i, %if.end.1.i.for.inc15.1.i_crit_edge ], [ %n_best.2.1.i, %for.cond4.1.i.for.inc15.1.i_crit_edge ]
  %d_best.4.1.i = phi i32 [ %d_best.3.1.i, %if.end.1.i.for.inc15.1.i_crit_edge ], [ %d_best.2.1.i, %for.cond4.1.i.for.inc15.1.i_crit_edge ]
  %f_best.4.1.i = phi i32 [ %f_best.3.1.i, %if.end.1.i.for.inc15.1.i_crit_edge ], [ %f_best.2.1.i, %for.cond4.1.i.for.inc15.1.i_crit_edge ]
  %f_best_diff.4.1.i = phi i32 [ %f_best_diff.3.1.i, %if.end.1.i.for.inc15.1.i_crit_edge ], [ %f_best_diff.2.1.i, %for.cond4.1.i.for.inc15.1.i_crit_edge ]
  %exitcond73.1.not.i = icmp eq i32 %add7.1.i, 32
  br i1 %exitcond73.1.not.i, label %for.inc18.1.i, label %for.inc15.1.i.for.cond4.preheader.1.i_crit_edge

for.inc15.1.i.for.cond4.preheader.1.i_crit_edge:  ; preds = %for.inc15.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader.1.i

for.inc18.1.i:                                    ; preds = %for.inc15.1.i
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %234 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %accel.i, align 4
  %.off.i = add i32 %235, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %for.inc18.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %f_best.0.tr.i = trunc i32 %f_best.4.1.i to i8
  %conv34.i = shl i8 %f_best.0.tr.i, 7
  %VCLK3NumeratorHigh.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 30
  %236 = ptrtoint ptr %VCLK3NumeratorHigh.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv34.i, ptr %VCLK3NumeratorHigh.i, align 1
  br label %neoCalcVCLK.exit

if.else.i:                                        ; preds = %for.inc18.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl35.i = shl i32 %f_best.4.1.i, 7
  %or.i = or i32 %shl35.i, %n_best.4.1.i
  br label %neoCalcVCLK.exit

neoCalcVCLK.exit:                                 ; preds = %if.else.i, %if.then33.i
  %conv36.sink.in.i = phi i32 [ %n_best.4.1.i, %if.then33.i ], [ %or.i, %if.else.i ]
  %conv36.sink.i = trunc i32 %conv36.sink.in.i to i8
  %237 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 29
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv36.sink.i, ptr %237, align 4
  %conv39.i = trunc i32 %d_best.4.1.i to i8
  %VCLK3Denominator.i = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 31
  %239 = ptrtoint ptr %VCLK3Denominator.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv39.i, ptr %VCLK3Denominator.i, align 2
  %240 = ptrtoint ptr %MiscOutReg.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %MiscOutReg.i, align 4
  %242 = or i8 %241, 12
  store i8 %242, ptr %MiscOutReg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 21) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !151
  %GeneralLockReg212 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 7
  %243 = ptrtoint ptr %GeneralLockReg212 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %GeneralLockReg212, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 10) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %244) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -112) #9, !srcloc !151
  %245 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %246 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %accel.i, align 4
  %switch.tableidx762 = add i32 %247, -90
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx762)
  %248 = icmp ult i32 %switch.tableidx762, 9
  br i1 %248, label %switch.lookup761, label %neoCalcVCLK.exit.sw.epilog234_crit_edge

neoCalcVCLK.exit.sw.epilog234_crit_edge:          ; preds = %neoCalcVCLK.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog234

switch.lookup761:                                 ; preds = %neoCalcVCLK.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep763 = getelementptr inbounds [9 x i8], ptr @switch.table.neofb_set_par.66, i32 0, i32 %switch.tableidx762
  %249 = ptrtoint ptr %switch.gep763 to i32
  call void @__asan_load1_noabort(i32 %249)
  %switch.load764 = load i8, ptr %switch.gep763, align 1
  %switch.gep765 = getelementptr inbounds [9 x i8], ptr @switch.table.neofb_set_par.67, i32 0, i32 %switch.tableidx762
  %250 = ptrtoint ptr %switch.gep765 to i32
  call void @__asan_load1_noabort(i32 %250)
  %switch.load766 = load i8, ptr %switch.gep765, align 1
  %251 = and i8 %245, %switch.load764
  %ExtColorModeSelect228 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 12
  %252 = ptrtoint ptr %ExtColorModeSelect228 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %ExtColorModeSelect228, align 2
  %254 = and i8 %253, %switch.load766
  %or232704 = or i8 %254, %251
  br label %sw.epilog234

sw.epilog234:                                     ; preds = %switch.lookup761, %neoCalcVCLK.exit.sw.epilog234_crit_edge
  %temp.0 = phi i8 [ %245, %neoCalcVCLK.exit.sw.epilog234_crit_edge ], [ %or232704, %switch.lookup761 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -112) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %temp.0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 37) #9, !srcloc !151
  %255 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %256 = and i8 %255, 57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 37) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %256) #9, !srcloc !151
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.epilog234
  %__ms.0731 = phi i32 [ 200, %sw.epilog234 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0731, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 214748000) #9
  %tobool239.not = icmp eq i32 %dec, 0
  br i1 %tobool239.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  %258 = ptrtoint ptr %MiscOutReg.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %MiscOutReg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %259) #9, !srcloc !151
  %260 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx18.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %261) #9, !srcloc !151
  %262 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx20.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %263) #9, !srcloc !151
  %264 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx22.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 3) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %265) #9, !srcloc !151
  %266 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx24.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %267) #9, !srcloc !151
  %268 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx136.i, align 1
  %270 = and i8 %269, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %270) #9, !srcloc !151
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %while.end
  %i.12.i = phi i32 [ 0, %while.end ], [ %inc12.i, %for.body7.i.for.body7.i_crit_edge ]
  %conv8.i = trunc i32 %i.12.i to i8
  %arrayidx10.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 3, i32 %i.12.i
  %271 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx10.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 %conv8.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %272) #9, !srcloc !151
  %inc12.i = add nuw nsw i32 %i.12.i, 1
  %exitcond.not.i722 = icmp eq i32 %inc12.i, 25
  br i1 %exitcond.not.i722, label %for.body17.preheader.i, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i

for.body17.preheader.i:                           ; preds = %for.body7.i
  %273 = ptrtoint ptr %Graphics.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %Graphics.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %274) #9, !srcloc !151
  %arrayidx19.1.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 1
  %275 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx19.1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %276) #9, !srcloc !151
  %arrayidx19.2.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 2
  %277 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx19.2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 2) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %278) #9, !srcloc !151
  %arrayidx19.3.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 3
  %279 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx19.3.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 3) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %280) #9, !srcloc !151
  %arrayidx19.4.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 5, i32 4
  %281 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx19.4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %282) #9, !srcloc !151
  %283 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx174.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %284) #9, !srcloc !151
  %285 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx176.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %286) #9, !srcloc !151
  %287 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx178.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 7) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %288) #9, !srcloc !151
  %289 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx180.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 8) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %290) #9, !srcloc !151
  %291 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !151
  store i1 true, ptr @paletteEnabled, align 4
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.body17.preheader.i
  %i.34.i = phi i32 [ 0, %for.body17.preheader.i ], [ %inc30.i, %for.body26.i.for.body26.i_crit_edge ]
  %conv27.i = trunc i32 %i.34.i to i8
  %arrayidx28.i = getelementptr %struct.neofb_par, ptr %1, i32 0, i32 6, i32 %i.34.i
  %292 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx28.i, align 1
  %.b.i.i = load i1, ptr @paletteEnabled, align 4
  %294 = and i8 %conv27.i, -33
  %masksel.i.i = select i1 %.b.i.i, i8 0, i8 32
  %index.addr.0.i.i = or i8 %masksel.i.i, %294
  %295 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %index.addr.0.i.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %293) #9, !srcloc !151
  %inc30.i = add nuw nsw i32 %i.34.i, 1
  %exitcond6.not.i = icmp eq i32 %inc30.i, 21
  br i1 %exitcond6.not.i, label %vgaHWRestore.exit, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26.i

vgaHWRestore.exit:                                ; preds = %for.body26.i
  %296 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #9, !srcloc !151
  store i1 false, ptr @paletteEnabled, align 4
  %297 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %bits_per_pixel, align 4
  %299 = zext i32 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %299, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %298, label %vgaHWRestore.exit.sw.epilog297_crit_edge [
    i32 8, label %sw.bb242
    i32 16, label %sw.bb244
    i32 24, label %sw.bb267
  ]

vgaHWRestore.exit.sw.epilog297_crit_edge:         ; preds = %vgaHWRestore.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

sw.bb242:                                         ; preds = %vgaHWRestore.exit
  call void @__sanitizer_cov_trace_pc() #11
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %300 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 3, ptr %visual, align 4
  br label %sw.epilog297

sw.bb244:                                         ; preds = %vgaHWRestore.exit
  %visual246 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %301 = ptrtoint ptr %visual246 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 2, ptr %visual246, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %sw.bb244
  %i.0733 = phi i32 [ 0, %sw.bb244 ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %conv249 = trunc i32 %i.0733 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv249) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %conv254 = shl i8 %conv249, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv254) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv249) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv254) #9, !srcloc !151
  %inc = add nuw nsw i32 %i.0733, 1
  %exitcond737.not = icmp eq i32 %inc, 64
  br i1 %exitcond737.not, label %do.body.sw.epilog297_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.sw.epilog297_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

sw.bb267:                                         ; preds = %vgaHWRestore.exit
  %visual269 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %302 = ptrtoint ptr %visual269 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 2, ptr %visual269, align 4
  br label %do.body274

do.body274:                                       ; preds = %do.body274.do.body274_crit_edge, %sw.bb267
  %i.1732 = phi i32 [ 0, %sw.bb267 ], [ %inc295, %do.body274.do.body274_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %conv277 = trunc i32 %i.1732 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv277) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv277) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv277) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv277) #9, !srcloc !151
  %inc295 = add nuw nsw i32 %i.1732, 1
  %exitcond.not = icmp eq i32 %inc295, 256
  br i1 %exitcond.not, label %do.body274.sw.epilog297_crit_edge, label %do.body274.do.body274_crit_edge

do.body274.do.body274_crit_edge:                  ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body274

do.body274.sw.epilog297_crit_edge:                ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog297

sw.epilog297:                                     ; preds = %do.body274.sw.epilog297_crit_edge, %do.body.sw.epilog297_crit_edge, %sw.bb242, %vgaHWRestore.exit.sw.epilog297_crit_edge
  %303 = ptrtoint ptr %ExtCRTDispAddr to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %ExtCRTDispAddr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 14) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %304) #9, !srcloc !151
  %ExtCRTOffset299 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 9
  %305 = ptrtoint ptr %ExtCRTOffset299 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %ExtCRTOffset299, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 15) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %306) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 16) #9, !srcloc !151
  %307 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %308 = and i8 %307, 15
  %309 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %141, align 4
  %311 = and i8 %310, -16
  %or308705 = or i8 %311, %308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 16) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %or308705) #9, !srcloc !151
  %312 = ptrtoint ptr %SysIfaceCntl2 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %SysIfaceCntl2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %313) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 21) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 22) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  %314 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %315 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %accel.i, align 4
  %switch.tableidx768 = add i32 %316, -90
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx768)
  %317 = icmp ult i32 %switch.tableidx768, 9
  br i1 %317, label %switch.lookup767, label %sw.epilog297.sw.epilog344_crit_edge

sw.epilog297.sw.epilog344_crit_edge:              ; preds = %sw.epilog297
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog344

switch.lookup767:                                 ; preds = %sw.epilog297
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep769 = getelementptr inbounds [9 x i8], ptr @switch.table.neofb_set_par.68, i32 0, i32 %switch.tableidx768
  %318 = ptrtoint ptr %switch.gep769 to i32
  call void @__asan_load1_noabort(i32 %318)
  %switch.load770 = load i8, ptr %switch.gep769, align 1
  %switch.gep771 = getelementptr inbounds [9 x i8], ptr @switch.table.neofb_set_par.69, i32 0, i32 %switch.tableidx768
  %319 = ptrtoint ptr %switch.gep771 to i32
  call void @__asan_load1_noabort(i32 %319)
  %switch.load772 = load i8, ptr %switch.gep771, align 1
  %320 = and i8 %314, %switch.load770
  %321 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %PanelDispCntlReg1, align 4
  %323 = and i8 %322, %switch.load772
  %or342706 = or i8 %323, %320
  br label %sw.epilog344

sw.epilog344:                                     ; preds = %switch.lookup767, %sw.epilog297.sw.epilog344_crit_edge
  %temp.1 = phi i8 [ %314, %sw.epilog297.sw.epilog344_crit_edge ], [ %or342706, %switch.lookup767 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %temp.1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 37) #9, !srcloc !151
  %324 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %325 = and i8 %324, 56
  %326 = ptrtoint ptr %PanelDispCntlReg2 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %PanelDispCntlReg2, align 1
  %328 = and i8 %327, -57
  %or353707 = or i8 %328, %325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 37) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %or353707) #9, !srcloc !151
  %329 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %accel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %330)
  %cmp357.not = icmp eq i32 %330, 90
  br i1 %cmp357.not, label %sw.epilog344.if.end370_crit_edge, label %if.then359

sw.epilog344.if.end370_crit_edge:                 ; preds = %sw.epilog344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end370

if.then359:                                       ; preds = %sw.epilog344
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 48) #9, !srcloc !151
  %331 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %332 = and i8 %331, -17
  %333 = ptrtoint ptr %PanelDispCntlReg3 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %PanelDispCntlReg3, align 2
  %335 = and i8 %334, 16
  %or368709 = or i8 %335, %332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 48) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %or368709) #9, !srcloc !151
  br label %if.end370

if.end370:                                        ; preds = %if.then359, %sw.epilog344.if.end370_crit_edge
  %336 = ptrtoint ptr %PanelVertCenterReg1 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %PanelVertCenterReg1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 40) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %337) #9, !srcloc !151
  %338 = ptrtoint ptr %PanelVertCenterReg2 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %PanelVertCenterReg2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 41) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %339) #9, !srcloc !151
  %340 = ptrtoint ptr %PanelVertCenterReg3 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %PanelVertCenterReg3, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 42) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %341) #9, !srcloc !151
  %342 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %accel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %343)
  %cmp376.not = icmp eq i32 %343, 90
  br i1 %cmp376.not, label %if.end370.if.end390_crit_edge, label %if.end383

if.end370.if.end390_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end390

if.end383:                                        ; preds = %if.end370
  %344 = ptrtoint ptr %PanelVertCenterReg4 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %PanelVertCenterReg4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 50) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %345) #9, !srcloc !151
  %346 = ptrtoint ptr %PanelHorizCenterReg1 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %PanelHorizCenterReg1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 51) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %347) #9, !srcloc !151
  %348 = ptrtoint ptr %PanelHorizCenterReg2 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %PanelHorizCenterReg2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 52) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %349) #9, !srcloc !151
  %350 = ptrtoint ptr %PanelHorizCenterReg3 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %PanelHorizCenterReg3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 53) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %351) #9, !srcloc !151
  %352 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %.pr = load i32, ptr %accel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %.pr)
  %cmp386 = icmp eq i32 %.pr, 94
  br i1 %cmp386, label %if.then388, label %if.end383.if.end390_crit_edge

if.end383.if.end390_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end390

if.then388:                                       ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #11
  %353 = ptrtoint ptr %PanelHorizCenterReg4 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %PanelHorizCenterReg4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 54) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %354) #9, !srcloc !151
  br label %if.end390

if.end390:                                        ; preds = %if.then388, %if.end383.if.end390_crit_edge, %if.end370.if.end390_crit_edge
  %355 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %accel.i, align 4
  %.off713 = add i32 %356, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off713)
  %switch714 = icmp ult i32 %.off713, 4
  br i1 %switch714, label %if.then409, label %if.end390.if.end413_crit_edge

if.end390.if.end413_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end413

if.then409:                                       ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #11
  %357 = ptrtoint ptr %PanelHorizCenterReg4 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %PanelHorizCenterReg4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 54) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %358) #9, !srcloc !151
  %359 = ptrtoint ptr %PanelVertCenterReg5 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %PanelVertCenterReg5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 55) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %360) #9, !srcloc !151
  %361 = ptrtoint ptr %PanelHorizCenterReg5 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %PanelHorizCenterReg5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 56) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %362) #9, !srcloc !151
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %if.end390.if.end413_crit_edge
  %ProgramVCLK414 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 28
  %363 = ptrtoint ptr %ProgramVCLK414 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %ProgramVCLK414, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool415.not = icmp eq i32 %364, 0
  br i1 %tobool415.not, label %if.end413.if.end454_crit_edge, label %land.lhs.true416

if.end413.if.end454_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end454

land.lhs.true416:                                 ; preds = %if.end413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -101) #9, !srcloc !151
  %365 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %366 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %237, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %365, i8 %367)
  %cmp420.not = icmp eq i8 %365, %367
  br i1 %cmp420.not, label %lor.lhs.false422, label %land.lhs.true416.if.then438_crit_edge

land.lhs.true416.if.then438_crit_edge:            ; preds = %land.lhs.true416
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then438

lor.lhs.false422:                                 ; preds = %land.lhs.true416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -97) #9, !srcloc !151
  %368 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %369 = ptrtoint ptr %VCLK3Denominator.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %VCLK3Denominator.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %368, i8 %370)
  %cmp426.not = icmp eq i8 %368, %370
  br i1 %cmp426.not, label %lor.lhs.false428, label %lor.lhs.false422.if.then438_crit_edge

lor.lhs.false422.if.then438_crit_edge:            ; preds = %lor.lhs.false422
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then438

lor.lhs.false428:                                 ; preds = %lor.lhs.false422
  br i1 %switch714, label %land.lhs.true430, label %lor.lhs.false428.if.end454_crit_edge

lor.lhs.false428.if.end454_crit_edge:             ; preds = %lor.lhs.false428
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end454

land.lhs.true430:                                 ; preds = %lor.lhs.false428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -113) #9, !srcloc !151
  %371 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %VCLK3NumeratorHigh = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 30
  %372 = ptrtoint ptr %VCLK3NumeratorHigh to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %VCLK3NumeratorHigh, align 1
  %374 = xor i8 %373, %371
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %374)
  %cmp436.not = icmp ult i8 %374, 16
  br i1 %cmp436.not, label %land.lhs.true430.if.end454_crit_edge, label %if.then441.critedge

land.lhs.true430.if.end454_crit_edge:             ; preds = %land.lhs.true430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end454

if.then438:                                       ; preds = %lor.lhs.false422.if.then438_crit_edge, %land.lhs.true416.if.then438_crit_edge
  %375 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %237, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -101) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %376) #9, !srcloc !151
  br i1 %switch714, label %if.then438.if.then441_crit_edge, label %if.then438.if.end452_crit_edge

if.then438.if.end452_crit_edge:                   ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end452

if.then438.if.then441_crit_edge:                  ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then441

if.then441.critedge:                              ; preds = %land.lhs.true430
  call void @__sanitizer_cov_trace_pc() #11
  %377 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %237, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -101) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %378) #9, !srcloc !151
  br label %if.then441

if.then441:                                       ; preds = %if.then441.critedge, %if.then438.if.then441_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -113) #9, !srcloc !151
  %379 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %380 = and i8 %379, 15
  %VCLK3NumeratorHigh446 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 30
  %381 = ptrtoint ptr %VCLK3NumeratorHigh446 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %VCLK3NumeratorHigh446, align 1
  %383 = and i8 %382, -16
  %or450708 = or i8 %383, %380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -113) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %or450708) #9, !srcloc !151
  br label %if.end452

if.end452:                                        ; preds = %if.then441, %if.then438.if.end452_crit_edge
  %384 = ptrtoint ptr %VCLK3Denominator.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %VCLK3Denominator.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -97) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %385) #9, !srcloc !151
  br label %if.end454

if.end454:                                        ; preds = %if.end452, %land.lhs.true430.if.end454_crit_edge, %lor.lhs.false428.if.end454_crit_edge, %if.end413.if.end454_crit_edge
  %386 = ptrtoint ptr %biosMode to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %biosMode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool456.not = icmp eq i8 %387, 0
  br i1 %tobool456.not, label %if.end454.if.end459_crit_edge, label %if.then457

if.end454.if.end459_crit_edge:                    ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end459

if.then457:                                       ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 35) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %387) #9, !srcloc !151
  br label %if.end459

if.end459:                                        ; preds = %if.then457, %if.end454.if.end459_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 -109) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 -64) #9, !srcloc !151
  %388 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %accel.i, align 4
  %.off715 = add i32 %389, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off715)
  %switch716 = icmp ult i32 %.off715, 4
  br i1 %switch716, label %if.then479, label %if.end459.if.end481_crit_edge

if.end459.if.end481_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end481

if.then479:                                       ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #11
  %390 = ptrtoint ptr %VerticalExt to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %VerticalExt, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 112) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %391) #9, !srcloc !151
  br label %if.end481

if.end481:                                        ; preds = %if.then479, %if.end459.if.end481_crit_edge
  tail call fastcc void @vgaHWProtect(i32 noundef 0)
  tail call fastcc void @neoLock(ptr noundef %1)
  %392 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %xres_virtual.i, align 4
  %394 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %bits_per_pixel, align 4
  %shr486 = lshr i32 %395, 3
  %mul487 = mul i32 %shr486, %393
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %396 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %mul487, ptr %line_length, align 4
  %397 = ptrtoint ptr %accel.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %accel.i, align 4
  %.off = add i32 %398, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb491, label %if.end481.cleanup_crit_edge

if.end481.cleanup_crit_edge:                      ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb491:                                         ; preds = %if.end481
  %399 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %par1, align 4
  %neo22002.i = getelementptr inbounds %struct.neofb_par, ptr %400, i32 0, i32 37
  %401 = ptrtoint ptr %neo22002.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %neo22002.i, align 4
  %403 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %402) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %404 = and i32 %403, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not1.i.i = icmp eq i32 %404, 0
  br i1 %tobool.not1.i.i, label %sw.bb491.neo2200_sync.exit.i_crit_edge, label %sw.bb491.do.end.i.i_crit_edge

sw.bb491.do.end.i.i_crit_edge:                    ; preds = %sw.bb491
  br label %do.end.i.i

sw.bb491.neo2200_sync.exit.i_crit_edge:           ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_sync.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %sw.bb491.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !166
  %405 = ptrtoint ptr %neo22002.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %neo22002.i, align 4
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %406) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %408 = and i32 %407, 16777216
  %tobool.not.i.i = icmp eq i32 %408, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.neo2200_sync.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i.neo2200_sync.exit.i_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_sync.exit.i

neo2200_sync.exit.i:                              ; preds = %do.end.i.i.neo2200_sync.exit.i_crit_edge, %sw.bb491.neo2200_sync.exit.i_crit_edge
  %409 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %bits_per_pixel, align 4
  %411 = zext i32 %410 to i64
  call void @__sanitizer_cov_trace_switch(i64 %411, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %410, label %do.end.i [
    i32 8, label %sw.bb.i
    i32 15, label %neo2200_sync.exit.i.sw.bb3.i_crit_edge
    i32 16, label %neo2200_sync.exit.i.sw.bb3.i_crit_edge782
    i32 24, label %sw.bb5.i
  ]

neo2200_sync.exit.i.sw.bb3.i_crit_edge782:        ; preds = %neo2200_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

neo2200_sync.exit.i.sw.bb3.i_crit_edge:           ; preds = %neo2200_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %neo2200_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %412 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %xres_virtual.i, align 4
  br label %do.body9.i

sw.bb3.i:                                         ; preds = %neo2200_sync.exit.i.sw.bb3.i_crit_edge, %neo2200_sync.exit.i.sw.bb3.i_crit_edge782
  %414 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %xres_virtual.i, align 4
  %mul.i724 = shl i32 %415, 1
  br label %do.body9.i

sw.bb5.i:                                         ; preds = %neo2200_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %416 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %xres_virtual.i, align 4
  %mul7.i = mul i32 %417, 3
  br label %do.body9.i

do.end.i:                                         ; preds = %neo2200_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  br label %cleanup

do.body9.i:                                       ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i
  %bltMod.0.i = phi i32 [ 3, %sw.bb5.i ], [ 2, %sw.bb3.i ], [ 1, %sw.bb.i ]
  %pitch.0.i = phi i32 [ %mul7.i, %sw.bb5.i ], [ %mul.i724, %sw.bb3.i ], [ %413, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %402, i32 %bltMod.0.i) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %shl15.i = shl i32 %pitch.0.i, 16
  %or.i725 = or i32 %shl15.i, %pitch.0.i
  %418 = tail call i32 @llvm.bswap.i32(i32 %or.i725) #9
  %pitch16.i = getelementptr inbounds %struct.anon.86, ptr %402, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pitch16.i, i32 %418) #9, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %do.body9.i, %do.end.i, %if.end481.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %fb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %regno)
  %cmp.not = icmp ule i32 %1, %regno
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp1 = icmp ugt i32 %regno, 255
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp2 = icmp ult i32 %3, 9
  br i1 %cmp2, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %regno to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %shr = lshr i32 %red, 10
  %conv6 = trunc i32 %shr to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv6) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %shr10 = lshr i32 %green, 10
  %conv11 = trunc i32 %shr10 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv11) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %shr15 = lshr i32 %blue, 10
  %conv16 = trunc i32 %shr15 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv16) #9, !srcloc !151
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp18 = icmp ult i32 %regno, 16
  br i1 %cmp18, label %if.then20, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then20:                                        ; preds = %if.else
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %if.then20.return_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb28
  ]

if.then20.return_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %red, 63488
  %and23 = lshr i32 %green, 5
  %shr24 = and i32 %and23, 2016
  %or = or i32 %shr24, %and
  %and25 = lshr i32 %blue, 11
  %shr26 = and i32 %and25, 31
  %or27 = or i32 %or, %shr26
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %5 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %regno
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or27, ptr %arrayidx, align 4
  br label %return

sw.bb28:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %and29 = shl i32 %red, 8
  %shl = and i32 %and29, 16711680
  %and30 = and i32 %green, 65280
  %or31 = or i32 %shl, %and30
  %and32 = lshr i32 %blue, 8
  %shr33 = and i32 %and32, 255
  %or34 = or i32 %or31, %shr33
  %pseudo_palette35 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette35, align 4
  %arrayidx36 = getelementptr i32, ptr %9, i32 %regno
  %10 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or34, ptr %arrayidx36, align 4
  br label %return

return:                                           ; preds = %sw.bb28, %sw.bb, %if.then20.return_crit_edge, %if.else.return_crit_edge, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 1, %if.then20.return_crit_edge ], [ 0, %if.else.return_crit_edge ], [ 0, %sw.bb28 ], [ 0, %sw.bb ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %3 = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %3) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 38) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call fastcc void @neoLock(ptr noundef %1)
  %PanelDispCntlRegRead = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %PanelDispCntlRegRead to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %PanelDispCntlRegRead, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = and i8 %4, 3
  %PanelDispCntlReg1 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %PanelDispCntlReg1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %PanelDispCntlReg1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank_mode)
  %tobool3.not = icmp eq i32 %blank_mode, 0
  %conv4 = zext i1 %tobool3.not to i8
  %9 = ptrtoint ptr %PanelDispCntlRegRead to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %PanelDispCntlRegRead, align 1
  %10 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %blank_mode, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb6
    i32 2, label %sw.bb7
    i32 1, label %sw.bb8
    i32 0, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %PanelDispCntlReg19 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %PanelDispCntlReg19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %PanelDispCntlReg19, align 4
  %or = or i8 %12, %4
  %and11 = and i8 %or, 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %PanelDispCntlReg113 = getelementptr inbounds %struct.neofb_par, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %PanelDispCntlReg113 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %PanelDispCntlReg113, align 4
  %or1550 = or i8 %14, %4
  %15 = and i8 %or1550, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb7, %sw.bb6, %if.end.sw.epilog_crit_edge
  %seqflags.0 = phi i8 [ 0, %sw.bb12 ], [ 32, %sw.bb8 ], [ 32, %sw.bb7 ], [ 32, %sw.bb6 ], [ 32, %if.end.sw.epilog_crit_edge ]
  %lcdflags.0 = phi i8 [ %15, %sw.bb12 ], [ %and11, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %dpmsflags.0 = phi i8 [ -128, %sw.bb12 ], [ -128, %sw.bb8 ], [ -112, %sw.bb7 ], [ -96, %sw.bb6 ], [ -80, %if.end.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %17 = and i8 %16, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 38) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !151
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %19 = and i8 %18, -33
  %or20 = or i8 %19, %seqflags.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or20) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %21 = and i8 %20, -3
  %or25 = or i8 %21, %lcdflags.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %or25) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #9, !srcloc !151
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %23 = and i8 %22, 15
  %or31 = or i8 %dpmsflags.0, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %or31) #9, !srcloc !151
  tail call fastcc void @neoLock(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %add = add i32 %mul, %7
  %shr = lshr i32 %add, 2
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %add5 = add i32 %9, 7
  %div26 = lshr i32 %add5, 3
  %mul6 = mul i32 %div26, %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %11 = and i8 %10, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %11) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 38) #9, !srcloc !151
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %and = lshr i32 %mul6, 8
  %conv = trunc i32 %and to i8
  %tobool.not.i.i = icmp eq ptr %13, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 12) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i = getelementptr i8, ptr %13, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 %conv) #9, !srcloc !151
  br label %vga_wcrt.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 12) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv) #9, !srcloc !151
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv10 = trunc i32 %mul6 to i8
  %tobool.not.i.i27 = icmp eq ptr %15, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i27, label %if.else.i5.i31, label %if.then.i4.i30

if.then.i4.i30:                                   ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i28 = getelementptr i8, ptr %15, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i28, i8 13) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i29 = getelementptr i8, ptr %15, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i29, i8 %conv10) #9, !srcloc !151
  br label %vga_wcrt.exit32

if.else.i5.i31:                                   ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 13) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv10) #9, !srcloc !151
  br label %vga_wcrt.exit32

vga_wcrt.exit32:                                  ; preds = %if.else.i5.i31, %if.then.i4.i30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 14) #9, !srcloc !151
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = lshr i32 %mul6, 16
  %20 = and i8 %16, -16
  %21 = trunc i32 %19 to i8
  %22 = and i8 %21, 15
  %conv16 = or i8 %20, %22
  %tobool.not.i.i33 = icmp eq ptr %18, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i33, label %if.else.i5.i37, label %if.then.i4.i36

if.then.i4.i36:                                   ; preds = %vga_wcrt.exit32
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i34 = getelementptr i8, ptr %18, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i34, i8 14) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i35 = getelementptr i8, ptr %18, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i35, i8 %conv16) #9, !srcloc !151
  br label %vga_wgfx.exit

if.else.i5.i37:                                   ; preds = %vga_wcrt.exit32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 14) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv16) #9, !srcloc !151
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i37, %if.then.i4.i36
  tail call fastcc void @neoLock(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neofb_fillrect(ptr noundef %info, ptr noundef %rect) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel, align 4
  %.off = add i32 %1, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1.i, align 4
  %4 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rect, align 4
  %dy.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %6 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dy.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual.i, align 4
  %rop2.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %10 = ptrtoint ptr %rop2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rop2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %neo2200.i.i.i = getelementptr inbounds %struct.neofb_par, ptr %3, i32 0, i32 37
  %12 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %neo2200.i.i.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not1.i.i.i, label %sw.bb.neo2200_wait_fifo.exit.i_crit_edge, label %sw.bb.do.end.i.i.i_crit_edge

sw.bb.do.end.i.i.i_crit_edge:                     ; preds = %sw.bb
  br label %do.end.i.i.i

sw.bb.neo2200_wait_fifo.exit.i_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_wait_fifo.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %sw.bb.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !166
  %16 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %neo2200.i.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %19 = and i32 %18, 16777216
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.neo2200_wait_fifo.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

do.end.i.i.i.neo2200_wait_fifo.exit.i_crit_edge:  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_wait_fifo.exit.i

neo2200_wait_fifo.exit.i:                         ; preds = %do.end.i.i.i.neo2200_wait_fifo.exit.i_crit_edge, %sw.bb.neo2200_wait_fifo.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %or.i = select i1 %tobool.not.i, i32 -2012479480, i32 -2012872696
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %21 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %neo2200.i.i.i, align 4
  %bltCntl.i = getelementptr inbounds %struct.anon.86, ptr %22, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bltCntl.i, i32 %20) #9, !srcloc !168
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %24, label %neo2200_wait_fifo.exit.i.neo2200_fillrect.exit_crit_edge [
    i32 8, label %do.body4.i
    i32 16, label %neo2200_wait_fifo.exit.i.do.body9.i_crit_edge
    i32 24, label %neo2200_wait_fifo.exit.i.do.body9.i_crit_edge4
  ]

neo2200_wait_fifo.exit.i.do.body9.i_crit_edge4:   ; preds = %neo2200_wait_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i

neo2200_wait_fifo.exit.i.do.body9.i_crit_edge:    ; preds = %neo2200_wait_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i

neo2200_wait_fifo.exit.i.neo2200_fillrect.exit_crit_edge: ; preds = %neo2200_wait_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_fillrect.exit

do.body4.i:                                       ; preds = %neo2200_wait_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %color.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %26 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %color.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %neo2200.i.i.i, align 4
  %fgColor.i = getelementptr inbounds %struct.anon.86, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fgColor.i, i32 %28) #9, !srcloc !168
  br label %neo2200_fillrect.exit

do.body9.i:                                       ; preds = %neo2200_wait_fifo.exit.i.do.body9.i_crit_edge, %neo2200_wait_fifo.exit.i.do.body9.i_crit_edge4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %31 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pseudo_palette.i, align 4
  %color12.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %33 = ptrtoint ptr %color12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %color12.i, align 4
  %arrayidx.i = getelementptr i32, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %neo2200.i.i.i, align 4
  %fgColor14.i = getelementptr inbounds %struct.anon.86, ptr %39, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fgColor14.i, i32 %37) #9, !srcloc !168
  br label %neo2200_fillrect.exit

neo2200_fillrect.exit:                            ; preds = %do.body9.i, %do.body4.i, %neo2200_wait_fifo.exit.i.neo2200_fillrect.exit_crit_edge
  %mul.i = mul i32 %9, %7
  %add.i = add i32 %mul.i, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel.i, align 4
  %add20.i = add i32 %41, 7
  %shr.i = lshr i32 %add20.i, 3
  %mul21.i = mul i32 %shr.i, %add.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %mul21.i) #9
  %43 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %neo2200.i.i.i, align 4
  %dstStart.i = getelementptr inbounds %struct.anon.86, ptr %44, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dstStart.i, i32 %42) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %height.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height.i, align 4
  %shl.i = shl i32 %46, 16
  %width.i = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %47 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width.i, align 4
  %and.i = and i32 %48, 65535
  %or26.i = or i32 %and.i, %shl.i
  %49 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #9
  %50 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %neo2200.i.i.i, align 4
  %xyExt.i = getelementptr inbounds %struct.anon.86, ptr %51, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xyExt.i, i32 %49) #9, !srcloc !168
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %neo2200_fillrect.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neofb_copyarea(ptr noundef %info, ptr noundef %area) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel, align 4
  %.off = add i32 %1, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %sx1.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %2 = ptrtoint ptr %sx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sx1.i, align 4
  %sy2.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %4 = ptrtoint ptr %sy2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sy2.i, align 4
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %area, align 4
  %dy4.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %8 = ptrtoint ptr %dy4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy4.i, align 4
  %par5.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %10 = ptrtoint ptr %par5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.i = icmp ugt i32 %9, %5
  br i1 %cmp.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp6.i = icmp eq i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7.i = icmp ugt i32 %7, %3
  %or.cond.i = select i1 %cmp6.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %height.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  %sub.i = add i32 %13, -1
  %add.i = add i32 %sub.i, %5
  %add10.i = add i32 %sub.i, %9
  %width.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %sub11.i = add i32 %15, -1
  %add12.i = add i32 %sub11.i, %3
  %add15.i = add i32 %sub11.i, %7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %sx.0.i = phi i32 [ %add12.i, %if.then.i ], [ %3, %lor.lhs.false.i.if.end.i_crit_edge ]
  %sy.0.i = phi i32 [ %add.i, %if.then.i ], [ %5, %lor.lhs.false.i.if.end.i_crit_edge ]
  %dx.0.i = phi i32 [ %add15.i, %if.then.i ], [ %7, %lor.lhs.false.i.if.end.i_crit_edge ]
  %dy.0.i = phi i32 [ %add10.i, %if.then.i ], [ %9, %lor.lhs.false.i.if.end.i_crit_edge ]
  %bltCntl.0.i = phi i32 [ -2012479469, %if.then.i ], [ -2012479488, %lor.lhs.false.i.if.end.i_crit_edge ]
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel.i, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %18 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line_length.i, align 4
  %neo2200.i.i.i = getelementptr inbounds %struct.neofb_par, ptr %11, i32 0, i32 37
  %20 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %neo2200.i.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not1.i.i.i, label %if.end.i.neo2200_copyarea.exit_crit_edge, label %if.end.i.do.end.i.i.i_crit_edge

if.end.i.do.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  br label %do.end.i.i.i

if.end.i.neo2200_copyarea.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_copyarea.exit

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %if.end.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !166
  %24 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %neo2200.i.i.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %27 = and i32 %26, 16777216
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.neo2200_copyarea.exit_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

do.end.i.i.i.neo2200_copyarea.exit_crit_edge:     ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_copyarea.exit

neo2200_copyarea.exit:                            ; preds = %do.end.i.i.i.neo2200_copyarea.exit_crit_edge, %if.end.i.neo2200_copyarea.exit_crit_edge
  %shr.i = lshr i32 %17, 3
  %mul21.i = mul i32 %shr.i, %dx.0.i
  %mul24.i = mul i32 %19, %dy.0.i
  %add25.i = add i32 %mul21.i, %mul24.i
  %mul.i = mul i32 %shr.i, %sx.0.i
  %mul16.i = mul i32 %19, %sy.0.i
  %add17.i = add i32 %mul.i, %mul16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %bltCntl.0.i) #9
  %29 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %neo2200.i.i.i, align 4
  %bltCntl26.i = getelementptr inbounds %struct.anon.86, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bltCntl26.i, i32 %28) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %add17.i) #9
  %32 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %neo2200.i.i.i, align 4
  %srcStart.i = getelementptr inbounds %struct.anon.86, ptr %33, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srcStart.i, i32 %31) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %add25.i) #9
  %35 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %neo2200.i.i.i, align 4
  %dstStart.i = getelementptr inbounds %struct.anon.86, ptr %36, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dstStart.i, i32 %34) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %height38.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %37 = ptrtoint ptr %height38.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height38.i, align 4
  %shl.i = shl i32 %38, 16
  %width39.i = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %39 = ptrtoint ptr %width39.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width39.i, align 4
  %and.i = and i32 %40, 65535
  %or40.i = or i32 %and.i, %shl.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #9
  %42 = ptrtoint ptr %neo2200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %neo2200.i.i.i, align 4
  %xyExt.i = getelementptr inbounds %struct.anon.86, ptr %43, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xyExt.i, i32 %41) #9, !srcloc !168
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %neo2200_copyarea.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neofb_imageblit(ptr noundef %info, ptr noundef %image) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel, align 4
  %.off = add i32 %1, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1.i, align 4
  %width.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %depth.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %6 = ptrtoint ptr %depth.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %depth.i, align 4
  %conv.i = zext i8 %7 to i32
  %mul.i = mul i32 %5, %conv.i
  %add.i = add i32 %mul.i, 7
  %shr.i = lshr i32 %add.i, 3
  %scan_align2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %scan_align2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_align2.i, align 4
  %sub.i = add i32 %9, -1
  %buf_align4.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %buf_align4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_align4.i, align 4
  %sub5.i = add i32 %11, -1
  %add6.i = add i32 %sub.i, %shr.i
  %neg.i = sub i32 0, %9
  %and.i = and i32 %add6.i, %neg.i
  %height.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  %mul7.i = mul i32 %and.i, %13
  %add8.i = add i32 %sub5.i, %mul7.i
  %neg9.i = sub i32 0, %11
  %and10.i = and i32 %add8.i, %neg9.i
  %neo2200.i.i = getelementptr inbounds %struct.neofb_par, ptr %3, i32 0, i32 37
  %14 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %neo2200.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not1.i.i, label %sw.bb.neo2200_sync.exit.i_crit_edge, label %sw.bb.do.end.i.i_crit_edge

sw.bb.do.end.i.i_crit_edge:                       ; preds = %sw.bb
  br label %do.end.i.i

sw.bb.neo2200_sync.exit.i_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_sync.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %sw.bb.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !166
  %18 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %neo2200.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %21 = and i32 %20, 16777216
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.neo2200_sync.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i.neo2200_sync.exit.i_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neo2200_sync.exit.i

neo2200_sync.exit.i:                              ; preds = %do.end.i.i.neo2200_sync.exit.i_crit_edge, %sw.bb.neo2200_sync.exit.i_crit_edge
  %22 = ptrtoint ptr %depth.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp.i = icmp eq i8 %23, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %neo2200_sync.exit.i
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %25)
  %cmp14.i = icmp eq i32 %25, 24
  br i1 %cmp14.i, label %land.lhs.true.i, label %if.then.i.if.end29.i_crit_edge

if.then.i.if.end29.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %cmp17.i = icmp ult i32 %27, 16
  br i1 %cmp17.i, label %if.then19.i, label %land.lhs.true.i.if.end29.i_crit_edge

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %sw.epilog

if.else.i:                                        ; preds = %neo2200_sync.exit.i
  %conv12.i = zext i8 %23 to i32
  %bits_per_pixel23.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %28 = ptrtoint ptr %bits_per_pixel23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits_per_pixel23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv12.i)
  %cmp24.i = icmp eq i32 %29, %conv12.i
  br i1 %cmp24.i, label %if.else.i.if.end29.i_crit_edge, label %if.else27.i

if.else.i.if.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %sw.epilog

if.end29.i:                                       ; preds = %if.else.i.if.end29.i_crit_edge, %land.lhs.true.i.if.end29.i_crit_edge, %if.then.i.if.end29.i_crit_edge
  %bltCntl_flags.0.i = phi i32 [ -2146697024, %land.lhs.true.i.if.end29.i_crit_edge ], [ -2146697024, %if.then.i.if.end29.i_crit_edge ], [ -2146697088, %if.else.i.if.end29.i_crit_edge ]
  %bits_per_pixel31.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %bits_per_pixel31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bits_per_pixel31.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %31, label %if.end29.i.do.body51.i_crit_edge [
    i32 8, label %do.body.i
    i32 16, label %if.end29.i.do.body37.i_crit_edge
    i32 24, label %if.end29.i.do.body37.i_crit_edge4
  ]

if.end29.i.do.body37.i_crit_edge4:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37.i

if.end29.i.do.body37.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37.i

if.end29.i.do.body51.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51.i

do.body.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %fg_color.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %33 = ptrtoint ptr %fg_color.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fg_color.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %neo2200.i.i, align 4
  %fgColor.i = getelementptr inbounds %struct.anon.86, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fgColor.i, i32 %35) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void @arm_heavy_mb() #9
  %bg_color.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %38 = ptrtoint ptr %bg_color.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bg_color.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %neo2200.i.i, align 4
  %bgColor.i = getelementptr inbounds %struct.anon.86, ptr %42, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bgColor.i, i32 %40) #9, !srcloc !168
  br label %do.body51.i

do.body37.i:                                      ; preds = %if.end29.i.do.body37.i_crit_edge, %if.end29.i.do.body37.i_crit_edge4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %43 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pseudo_palette.i, align 4
  %fg_color40.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %45 = ptrtoint ptr %fg_color40.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fg_color40.i, align 4
  %arrayidx.i = getelementptr i32, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %50 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %neo2200.i.i, align 4
  %fgColor42.i = getelementptr inbounds %struct.anon.86, ptr %51, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fgColor42.i, i32 %49) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pseudo_palette.i, align 4
  %bg_color47.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %54 = ptrtoint ptr %bg_color47.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bg_color47.i, align 4
  %arrayidx48.i = getelementptr i32, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx48.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  %59 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %neo2200.i.i, align 4
  %bgColor50.i = getelementptr inbounds %struct.anon.86, ptr %60, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bgColor50.i, i32 %58) #9, !srcloc !168
  br label %do.body51.i

do.body51.i:                                      ; preds = %do.body37.i, %do.body.i, %if.end29.i.do.body51.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %bltCntl_flags.0.i) #9
  %62 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %neo2200.i.i, align 4
  %bltCntl.i = getelementptr inbounds %struct.anon.86, ptr %63, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bltCntl.i, i32 %61) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %neo2200.i.i, align 4
  %srcStart.i = getelementptr inbounds %struct.anon.86, ptr %65, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srcStart.i, i32 0) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %image, align 4
  %and63.i = and i32 %67, 65535
  %68 = ptrtoint ptr %bits_per_pixel31.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bits_per_pixel31.i, align 4
  %shr66.i = lshr i32 %69, 3
  %mul67.i = mul i32 %shr66.i, %and63.i
  %dy.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %70 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dy.i, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %72 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %line_length.i, align 4
  %mul68.i = mul i32 %73, %71
  %add69.i = add i32 %mul68.i, %mul67.i
  %74 = tail call i32 @llvm.bswap.i32(i32 %add69.i) #9
  %75 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %neo2200.i.i, align 4
  %dstStart.i = getelementptr inbounds %struct.anon.86, ptr %76, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dstStart.i, i32 %74) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height.i, align 4
  %shl.i = shl i32 %78, 16
  %79 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %width.i, align 4
  %and76.i = and i32 %80, 65535
  %or77.i = or i32 %and76.i, %shl.i
  %81 = tail call i32 @llvm.bswap.i32(i32 %or77.i) #9
  %82 = ptrtoint ptr %neo2200.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %neo2200.i.i, align 4
  %xyExt.i = getelementptr inbounds %struct.anon.86, ptr %83, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xyExt.i, i32 %81) #9, !srcloc !168
  %mmio_vbase.i = getelementptr inbounds %struct.neofb_par, ptr %3, i32 0, i32 34
  %84 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %85, i32 1048576
  %data.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %86 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %87, i32 noundef %and10.i) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.body51.i, %if.else27.i, %if.then19.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neofb_sync(ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accel, align 4
  %.off = add i32 %1, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1.i, align 4
  %neo2200.i = getelementptr inbounds %struct.neofb_par, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %neo2200.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neo2200.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not1.i = icmp eq i32 %7, 0
  br i1 %tobool.not1.i, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  br label %do.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !166
  %8 = ptrtoint ptr %neo2200.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %neo2200.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %11 = and i32 %10, 16777216
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end.i.sw.epilog_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @save_vga(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_vga(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vgaHWProtect(i32 noundef %on) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !151
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #9, !srcloc !151
  %1 = or i8 %0, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %1) #9, !srcloc !151
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !151
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = and i8 %0, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %3) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !151
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #9, !srcloc !151
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = xor i1 %tobool.not, true
  store i1 %5, ptr @paletteEnabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neoLock(ptr nocapture noundef readonly %state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i = getelementptr i8, ptr %1, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 0) #9, !srcloc !151
  br label %vga_wgfx.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 9) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !151
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i4.i.i, label %if.then.i3.i.i

if.then.i3.i.i:                                   ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 17) #9, !srcloc !151
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %3, i32 981
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i2.i.i) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  br label %vga_rcrt.exit.i

if.else.i4.i.i:                                   ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i4.i.i, %if.then.i3.i.i
  %retval.0.i.i.i = phi i8 [ %4, %if.then.i3.i.i ], [ %5, %if.else.i4.i.i ]
  %6 = or i8 %retval.0.i.i.i, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i5.i = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i5.i, i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.i, i8 %6) #9, !srcloc !151
  br label %vgaHWLock.exit

if.else.i5.i.i:                                   ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %6) #9, !srcloc !151
  br label %vgaHWLock.exit

vgaHWLock.exit:                                   ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !124, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_neofb__305_2215_neofb_init6, !1, !"__initcall__kmod_neofb__305_2215_neofb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/neofb.c", i32 2215, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/neofb.c", i32 2208, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/neofb.c", i32 2182, i32 38}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/neofb.c", i32 2186, i32 26}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/neofb.c", i32 2188, i32 31}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/neofb.c", i32 2190, i32 31}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/neofb.c", i32 2192, i32 31}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/neofb.c", i32 2194, i32 31}
!16 = distinct !{null, !17, !"internal", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/neofb.c", i32 80, i32 13}
!18 = distinct !{null, !19, !"external", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/neofb.c", i32 81, i32 13}
!20 = distinct !{null, !21, !"nostretch", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/neofb.c", i32 83, i32 13}
!22 = distinct !{null, !23, !"nopciburst", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/neofb.c", i32 84, i32 13}
!24 = distinct !{null, !25, !"libretto", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/neofb.c", i32 82, i32 13}
!26 = !{ptr @mode_option, !27, !"mode_option", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/neofb.c", i32 85, i32 14}
!28 = !{ptr @neofb_driver, !29, !"neofb_driver", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/neofb.c", i32 2163, i32 26}
!30 = !{ptr @neofb_devices, !31, !"neofb_devices", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/neofb.c", i32 2130, i32 35}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/neofb.c", i32 2061, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @neofb_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @neofb_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/neofb.c", i32 2080, i32 2}
!40 = !{ptr @neofb_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @neofb_probe._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/neofb.c", i32 2093, i32 2}
!44 = !{ptr @neofb_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @neofb_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/neofb.c", i32 1951, i32 5}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/neofb.c", i32 1955, i32 5}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/neofb.c", i32 1959, i32 5}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/neofb.c", i32 1963, i32 5}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/neofb.c", i32 1967, i32 5}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/neofb.c", i32 1971, i32 5}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/neofb.c", i32 1978, i32 5}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/neofb.c", i32 1985, i32 5}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/neofb.c", i32 1992, i32 5}
!64 = !{ptr @neofb_ops, !65, !"neofb_ops", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/neofb.c", i32 1612, i32 28}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/neofb.c", i32 595, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @neofb_check_var._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @neofb_check_var._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/neofb.c", i32 627, i32 3}
!73 = !{ptr @neofb_check_var._entry.27, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @neofb_check_var._entry_ptr.29, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/neofb.c", i32 681, i32 3}
!77 = !{ptr @neofb_check_var._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @neofb_check_var._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"paletteEnabled", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/neofb.c", i32 391, i32 12}
!81 = !{ptr @bios8, !82, !"bios8", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/neofb.c", i32 111, i32 17}
!83 = !{ptr @bios16, !84, !"bios16", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/neofb.c", i32 120, i32 17}
!85 = !{ptr @bios24, !86, !"bios24", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/neofb.c", i32 129, i32 17}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/neofb.c", i32 537, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @neo2200_accel_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @neo2200_accel_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/neofb.c", i32 1672, i32 7}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/neofb.c", i32 1674, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @neo_map_mmio._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @neo_map_mmio._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/neofb.c", i32 1680, i32 3}
!101 = !{ptr @neo_map_mmio._entry.38, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @neo_map_mmio._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/neofb.c", i32 1685, i32 3}
!105 = !{ptr @neo_map_mmio._entry.41, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @neo_map_mmio._entry_ptr.43, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/neofb.c", i32 1780, i32 3}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @neo_scan_monitor._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @neo_scan_monitor._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/neofb.c", i32 1820, i32 3}
!115 = !{ptr @neo_scan_monitor._entry.47, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @neo_scan_monitor._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/neofb.c", i32 1833, i32 2}
!119 = !{ptr @neo_scan_monitor._entry.50, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @neo_scan_monitor._entry_ptr.52, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mode800x480, !126, !"mode800x480", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/neofb.c", i32 1629, i32 28}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/neofb.c", i32 1714, i32 7}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/neofb.c", i32 1716, i32 3}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @neo_map_video._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @neo_map_video._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/neofb.c", i32 1723, i32 3}
!136 = !{ptr @neo_map_video._entry.60, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @neo_map_video._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/neofb.c", i32 1728, i32 3}
!140 = !{ptr @neo_map_video._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @neo_map_video._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 6266911}
!152 = !{i64 2153802967}
!153 = !{i64 6267306}
!154 = !{i64 2153800982}
!155 = !{i64 2156292196}
!156 = !{i64 2156292519}
!157 = !{i64 2156292837}
!158 = !{i64 2156293160}
!159 = !{i64 2156293480}
!160 = !{i64 2156293798}
!161 = !{i64 2156294116}
!162 = !{i64 2156294434}
!163 = !{i64 6267526}
!164 = !{i64 2156282606}
!165 = !{i64 2156282881}
!166 = !{i64 2156282723}
!167 = !{i64 2156285061}
!168 = !{i64 6267108}
!169 = !{i64 2156285493}
!170 = !{i64 2156295251}
!171 = !{i64 2156295577}
!172 = !{i64 2156295905}
!173 = !{i64 2156296232}
!174 = !{i64 2156263892}
!175 = !{i64 2156296761}
!176 = !{i64 2156297285}
!177 = !{i64 2156297750}
!178 = !{i64 2156298316}
!179 = !{i64 2156298876}
!180 = !{i64 2156299458}
!181 = !{i64 2156299870}
!182 = !{i64 2156300271}
!183 = !{i64 2156300711}
!184 = !{i64 2156301257}
!185 = !{i64 2156301704}
!186 = !{i64 2156302185}
!187 = !{i64 2156302768}
!188 = !{i64 2156303403}
!189 = !{i64 2156304029}
!190 = !{i64 2156304515}
!191 = !{i64 2156305230}
!192 = !{i64 2156263512}
