; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/viafbdev.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/viafbdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.viafb_pm_hooks = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.viafb_shared = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.tmds_setting_information, %struct.lvds_setting_information, %struct.lvds_setting_information, %struct.chip_information, i32, i32, ptr }
%struct.tmds_setting_information = type { i32, i32, i32, i32 }
%struct.lvds_setting_information = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }
%struct.viafb_dev = type { ptr, i32, ptr, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.IODATA = type { i8, i8, i8 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.anon.86 = type { [8192 x i8], [2048 x i32] }
%union.anon.87 = type { %struct.viafb_ioctl_setting }
%struct.viafb_ioctl_setting = type { i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, [35 x i32], %struct.viafb_ioctl_lcd_attribute }
%struct.viafb_ioctl_lcd_attribute = type { i32, i32, i32 }
%struct.viafb_ioctl_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.viafb_ioctl_samm = type { i32, i32, i32, i32, i32 }
%struct.device_t = type { i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.viafb_driver_version = type { i32, i32, i32, i32 }
%struct._panel_size_pos_info = type { i32, i32, i32 }

@viafbinfo = external dso_local local_unnamed_addr global ptr, align 4
@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@viafb_dual_fb = external dso_local local_unnamed_addr global i32, align 4
@viafb_SAMM_ON = external dso_local global i32, align 4
@viafb_ops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @viafb_open, ptr @viafb_release, ptr null, ptr null, ptr @viafb_check_var, ptr @viafb_set_par, ptr @viafb_setcolreg, ptr null, ptr @viafb_blank, ptr @viafb_pan_display, ptr @viafb_fillrect, ptr @viafb_copyarea, ptr @viafb_imageblit, ptr @viafb_cursor, ptr @viafb_sync, ptr @viafb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pseudo_pal = internal global { [17 x i32], [60 x i8] } zeroinitializer, align 32
@viafb_accel = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@viafb_second_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_second_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_mode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@viafb_mode1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@viafb_second_xres = external dso_local global i32, align 4
@viafb_second_yres = external dso_local global i32, align 4
@viafb_bpp = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@viafb_refresh = external dso_local global i32, align 4
@viafbinfo1 = external dso_local local_unnamed_addr global ptr, align 4
@viaparinfo1 = external dso_local local_unnamed_addr global ptr, align 4
@viafb_bpp1 = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@viafb_refresh1 = external dso_local global i32, align 4
@viafb_primary_dev = external dso_local local_unnamed_addr global i32, align 4
@viafb_fb_pm_hooks = internal global { %struct.viafb_pm_hooks, [44 x i8] } { %struct.viafb_pm_hooks { %struct.list_head zeroinitializer, ptr @viafb_suspend, ptr @viafb_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@viafb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016VIA Graphics Integration Chipset framebuffer %d.%d initializing\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"viafb_init\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/via/viafbdev.c\00", [61 x i8] zeroinitializer }, align 32
@viafb_init._entry_ptr = internal global ptr @viafb_init._entry, section ".printk_index", align 4
@i2c_bus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016viafb: Probing I2C bus 0x26\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_bus_probe\00", [18 x i8] zeroinitializer }, align 32
@i2c_bus_probe._entry_ptr = internal global ptr @i2c_bus_probe._entry, section ".printk_index", align 4
@i2c_bus_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016viafb: Probing I2C bus 0x31\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_bus_probe._entry_ptr.7 = internal global ptr @i2c_bus_probe._entry.5, section ".printk_index", align 4
@i2c_bus_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016viafb: Probing I2C bus 0x2C\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_bus_probe._entry_ptr.10 = internal global ptr @i2c_bus_probe._entry.8, section ".printk_index", align 4
@i2c_bus_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016viafb: Finished I2C bus probing\00", [62 x i8] zeroinitializer }, align 32
@i2c_bus_probe._entry_ptr.13 = internal global ptr @i2c_bus_probe._entry.11, section ".printk_index", align 4
@viafb_lcd_port = internal global { ptr, [28 x i8] } { ptr @.str.19, [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVP0\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVP1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DFP_HIGHLOW\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DFP_HIGH\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DFP_LOW\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@viafb_dvi_port = internal global { ptr, [28 x i8] } { ptr @.str.19, [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viafb\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvp0\00", [27 x i8] zeroinitializer }, align 32
@viafb_dvp0_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_dvp0_proc_open, ptr @seq_read, ptr null, ptr @viafb_dvp0_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvp1\00", [27 x i8] zeroinitializer }, align 32
@viafb_dvp1_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_dvp1_proc_open, ptr @seq_read, ptr null, ptr @viafb_dvp1_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dfph\00", [27 x i8] zeroinitializer }, align 32
@viafb_dfph_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_dfph_proc_open, ptr @seq_read, ptr null, ptr @viafb_dfph_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dfpl\00", [27 x i8] zeroinitializer }, align 32
@viafb_dfpl_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_dfpl_proc_open, ptr @seq_read, ptr null, ptr @viafb_dfpl_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt1636\00", [25 x i8] zeroinitializer }, align 32
@viafb_vt1636_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_vt1636_proc_open, ptr @seq_read, ptr null, ptr @viafb_vt1636_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"supported_output_devices\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iga1\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"output_devices\00", [17 x i8] zeroinitializer }, align 32
@viafb_iga1_odev_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_iga1_odev_proc_open, ptr @seq_read, ptr null, ptr @viafb_iga1_odev_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iga2\00", [27 x i8] zeroinitializer }, align 32
@viafb_iga2_odev_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @viafb_iga2_odev_proc_open, ptr @seq_read, ptr null, ptr @viafb_iga2_odev_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%x %x %x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x %x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %x %x\0A\00", [24 x i8] zeroinitializer }, align 32
@supported_odev_map = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 19, i32 244, i32 244, i32 244, i32 244, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240, i32 240], [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viafb_mode1=\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"viafb_mode=\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"viafb_bpp1=\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"viafb_bpp=\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viafb_refresh1=\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"viafb_refresh=\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"viafb_lcd_dsp_method=\00", [42 x i8] zeroinitializer }, align 32
@viafb_lcd_dsp_method = external dso_local global i32, align 4
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"viafb_lcd_panel_id=\00", [44 x i8] zeroinitializer }, align 32
@viafb_lcd_panel_id = external dso_local global i32, align 4
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viafb_accel=\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"viafb_SAMM_ON=\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"viafb_active_dev=\00", [46 x i8] zeroinitializer }, align 32
@viafb_active_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"viafb_display_hardware_layout=\00", [33 x i8] zeroinitializer }, align 32
@viafb_display_hardware_layout = external dso_local global i32, align 4
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"viafb_second_size=\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"viafb_platform_epia_dvi=\00", [39 x i8] zeroinitializer }, align 32
@viafb_platform_epia_dvi = external dso_local global i32, align 4
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"viafb_device_lcd_dualedge=\00", [37 x i8] zeroinitializer }, align 32
@viafb_device_lcd_dualedge = external dso_local global i32, align 4
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"viafb_bus_width=\00", [47 x i8] zeroinitializer }, align 32
@viafb_bus_width = external dso_local global i32, align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viafb_lcd_mode=\00", [16 x i8] zeroinitializer }, align 32
@viafb_lcd_mode = external dso_local global i32, align 4
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viafb_lcd_port=\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viafb_dvi_port=\00", [16 x i8] zeroinitializer }, align 32
@viafb_CRT_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_DVI_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_LCD_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_LCD2_ON = external dso_local local_unnamed_addr global i32, align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CRT+DVI\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DVI+CRT\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CRT+LCD\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LCD+CRT\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DVI+LCD\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LCD+DVI\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LCD+LCD2\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LCD2+LCD\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRT\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVI\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCD\00", [28 x i8] zeroinitializer }, align 32
@viafb_cursor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014viafb_cursor: The cursor is too large %dx%d\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viafb_cursor\00", [19 x i8] zeroinitializer }, align 32
@viafb_cursor._entry_ptr = internal global ptr @viafb_cursor._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.viafb_ioctl.driver_name = private unnamed_addr constant [6 x i8] c"viafb\00", align 1
@viafb_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014viafb_ioctl: Please avoid this interface as it is unstable and might change or vanish at any time!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"viafb_ioctl\00", [20 x i8] zeroinitializer }, align 32
@viafb_ioctl._entry_ptr = internal global ptr @viafb_ioctl._entry, section ".printk_index", align 4
@viafb_hotplug = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_Xres = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_Yres = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_refresh = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_bpp = external dso_local local_unnamed_addr global i32, align 4
@switch.table.viafb_blank = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\02\01\03", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 15, i64 30]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [29 x i64] [i64 27, i64 32, i64 1447641345, i64 1447641346, i64 1447641347, i64 1447641348, i64 1447641349, i64 1447641351, i64 1447641352, i64 1447641353, i64 1447641355, i64 1447641362, i64 1447641363, i64 1447641365, i64 1447641368, i64 1447641369, i64 1447641370, i64 1447641378, i64 1447641380, i64 1447641381, i64 1447641382, i64 1447641392, i64 1447641393, i64 1447641395, i64 1447641396, i64 1447641397, i64 1447641398, i64 1447641399, i64 1447641400]
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"viafb_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2043, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"pseudo_pal\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 20, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"viafb_accel\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 31, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"viafb_second_size\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 29, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"viafb_second_offset\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 28, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"viafb_mode\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 23, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"viafb_mode1\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 24, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"viafb_bpp\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 25, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"viafb_bpp1\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 26, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"viafb_fb_pm_hooks\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1688, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2032, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1698, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1702, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1707, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1711, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"viafb_lcd_port\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 37, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1064, i32 24 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1066, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1068, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1070, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1072, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 37, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant [15 x i8] c"viafb_dvi_port\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 38, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1571, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1576, i32 15 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"viafb_dvp0_proc_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1176, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1577, i32 15 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"viafb_dvp1_proc_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1240, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1578, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"viafb_dfph_proc_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1274, i32 30 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1579, i32 15 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"viafb_dfpl_proc_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1308, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1582, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant [22 x i8] c"viafb_vt1636_proc_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1443, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1586, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1588, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1590, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"viafb_iga1_odev_proc_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1520, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1592, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"viafb_iga2_odev_proc_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1559, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1120, i32 16 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1143, i32 25 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 156, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1252, i32 16 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1327, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1340, i32 17 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"supported_odev_map\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 54, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1936, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1940, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1942, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1944, i32 33 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1947, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1950, i32 33 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1953, i32 33 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1956, i32 33 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1960, i32 33 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1964, i32 33 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1967, i32 33 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1970, i32 33 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"viafb_active_dev\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 34, i32 14 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1973, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1977, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1981, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1986, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1990, i32 33 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1993, i32 33 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1996, i32 33 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1998, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1006, i32 39 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1011, i32 39 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1016, i32 39 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1021, i32 39 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1026, i32 39 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1031, i32 39 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1036, i32 39 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1040, i32 39 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1044, i32 39 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1048, i32 39 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1052, i32 39 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 794, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [38 x i8] c"../drivers/video/fbdev/via/viafbdev.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 399, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [25 x i8] c"switch.table.viafb_blank\00", align 1
@llvm.compiler.used = appending global [102 x ptr] [ptr @i2c_bus_probe._entry, ptr @i2c_bus_probe._entry.11, ptr @i2c_bus_probe._entry.5, ptr @i2c_bus_probe._entry.8, ptr @i2c_bus_probe._entry_ptr, ptr @i2c_bus_probe._entry_ptr.10, ptr @i2c_bus_probe._entry_ptr.13, ptr @i2c_bus_probe._entry_ptr.7, ptr @viafb_cursor._entry, ptr @viafb_cursor._entry_ptr, ptr @viafb_exit, ptr @viafb_init._entry, ptr @viafb_init._entry_ptr, ptr @viafb_ioctl._entry, ptr @viafb_ioctl._entry_ptr, ptr @viafb_ops, ptr @pseudo_pal, ptr @viafb_accel, ptr @viafb_second_size, ptr @viafb_second_offset, ptr @viafb_mode, ptr @viafb_mode1, ptr @viafb_bpp, ptr @viafb_bpp1, ptr @viafb_fb_pm_hooks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @viafb_lcd_port, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @viafb_dvi_port, ptr @.str.21, ptr @.str.22, ptr @viafb_dvp0_proc_ops, ptr @.str.23, ptr @viafb_dvp1_proc_ops, ptr @.str.24, ptr @viafb_dfph_proc_ops, ptr @.str.25, ptr @viafb_dfpl_proc_ops, ptr @.str.26, ptr @viafb_vt1636_proc_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @viafb_iga1_odev_proc_ops, ptr @.str.30, ptr @viafb_iga2_odev_proc_ops, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @supported_odev_map, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @viafb_active_dev, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @switch.table.viafb_blank], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pseudo_pal to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_accel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_second_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_second_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_mode1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_bpp1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_fb_pm_hooks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_lcd_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_dvi_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_dvp0_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_dvp1_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_dfph_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_dfpl_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_vt1636_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_iga1_odev_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_iga2_odev_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_odev_map to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_active_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_cursor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_blank to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_fb_pci_probe(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  %ptr.i = alloca ptr, align 4
  %default_var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %default_var) #14
  %0 = call ptr @memset(ptr %default_var, i32 0, i32 160)
  %1 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call = tail call ptr @framebuffer_alloc(i32 noundef 236, ptr noundef %dev) #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  store ptr %call, ptr @viafbinfo, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  store ptr %4, ptr @viaparinfo, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 48
  %shared = getelementptr inbounds %struct.viafb_par, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %shared, align 4
  %vdev3 = getelementptr i8, ptr %4, i32 68
  %6 = ptrtoint ptr %vdev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vdev, ptr %vdev3, align 4
  %vram_addr = getelementptr inbounds %struct.viafb_par, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %vram_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %vram_addr, align 4
  %8 = load ptr, ptr @viaparinfo, align 4
  %shared4 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %shared4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared4, align 4
  %tmds_setting_info = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 9
  %tmds_setting_info5 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 8
  %11 = ptrtoint ptr %tmds_setting_info5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tmds_setting_info, ptr %tmds_setting_info5, align 4
  %lvds_setting_info = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 10
  %lvds_setting_info7 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 9
  %12 = ptrtoint ptr %lvds_setting_info7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lvds_setting_info, ptr %lvds_setting_info7, align 4
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 11
  %lvds_setting_info29 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 10
  %13 = ptrtoint ptr %lvds_setting_info29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lvds_setting_info2, ptr %lvds_setting_info29, align 4
  %chip_info = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 12
  %chip_info11 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 11
  %14 = ptrtoint ptr %chip_info11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chip_info, ptr %chip_info11, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  %call1.i = tail call ptr @viafb_find_i2c_adapter(i32 noundef 0) #14
  %call2.i = tail call ptr @via_aux_probe(ptr noundef %call1.i) #14
  %i2c_26.i = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %i2c_26.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.i, ptr %i2c_26.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #17
  %call7.i = tail call ptr @viafb_find_i2c_adapter(i32 noundef 1) #14
  %call8.i = tail call ptr @via_aux_probe(ptr noundef %call7.i) #14
  %i2c_31.i = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 7
  %16 = ptrtoint ptr %i2c_31.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i, ptr %i2c_31.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #17
  %call13.i = tail call ptr @viafb_find_i2c_adapter(i32 noundef 3) #14
  %call14.i = tail call ptr @via_aux_probe(ptr noundef %call13.i) #14
  %i2c_2C.i = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 8
  %17 = ptrtoint ptr %i2c_2C.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call14.i, ptr %i2c_2C.i, align 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %18 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  store i32 1, ptr @viafb_SAMM_ON, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %19 = load ptr, ptr @viafb_lcd_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %20 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip_info.i, align 4
  %output_interface.i = getelementptr inbounds %struct.chip_information, ptr %22, i32 0, i32 4, i32 2
  tail call fastcc void @parse_port(ptr noundef %19, ptr noundef %output_interface.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %23 = load ptr, ptr @viaparinfo, align 4
  %chip_info1.i = getelementptr inbounds %struct.viafb_par, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %chip_info1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info1.i, align 4
  %output_interface2.i = getelementptr inbounds %struct.chip_information, ptr %25, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %output_interface2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %output_interface2.i, align 4
  %27 = load ptr, ptr @viafb_dvi_port, align 4
  %28 = load ptr, ptr %chip_info1.i, align 4
  %output_interface.i172 = getelementptr inbounds %struct.chip_information, ptr %28, i32 0, i32 3, i32 2
  tail call fastcc void @parse_port(ptr noundef %27, ptr noundef %output_interface.i172) #14
  %chip_type = getelementptr inbounds %struct.viafb_dev, ptr %vdev, i32 0, i32 1
  %29 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_type, align 4
  tail call void @viafb_init_chip_info(i32 noundef %30) #14
  %fbmem_start = getelementptr inbounds %struct.viafb_dev, ptr %vdev, i32 0, i32 4
  %31 = ptrtoint ptr %fbmem_start to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fbmem_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %33 = load ptr, ptr @viaparinfo, align 4
  %fbmem = getelementptr inbounds %struct.viafb_par, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %fbmem to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %fbmem, align 4
  %fbmem_len = getelementptr inbounds %struct.viafb_dev, ptr %vdev, i32 0, i32 5
  %35 = ptrtoint ptr %fbmem_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fbmem_len, align 4
  %memsize = getelementptr inbounds %struct.viafb_par, ptr %33, i32 0, i32 3
  %37 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %memsize, align 4
  %fbmem_free = getelementptr inbounds %struct.viafb_par, ptr %33, i32 0, i32 4
  %38 = ptrtoint ptr %fbmem_free to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %fbmem_free, align 4
  %fbmem_used = getelementptr inbounds %struct.viafb_par, ptr %33, i32 0, i32 5
  %39 = ptrtoint ptr %fbmem_used to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fbmem_used, align 4
  %fbmem17 = getelementptr inbounds %struct.viafb_dev, ptr %vdev, i32 0, i32 6
  %40 = ptrtoint ptr %fbmem17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fbmem17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %42 = load ptr, ptr @viafbinfo, align 4
  %43 = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 25
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %43, align 4
  %engine_start = getelementptr inbounds %struct.viafb_dev, ptr %vdev, i32 0, i32 9
  %45 = ptrtoint ptr %engine_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %engine_start, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 7, i32 10
  %47 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %mmio_start, align 4
  %engine_len = getelementptr inbounds %struct.viafb_dev, ptr %vdev, i32 0, i32 10
  %48 = ptrtoint ptr %engine_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %engine_len, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 7, i32 11
  %50 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %mmio_len, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 1
  %51 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %node, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 20
  %52 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @viafb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 2
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8192, ptr %flags, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 27
  %54 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @pseudo_pal, ptr %pseudo_palette, align 4
  %55 = load i32, ptr @viafb_accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool19.not = icmp eq i32 %55, 0
  br i1 %tobool19.not, label %if.end15.if.else_crit_edge, label %land.lhs.true

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %call20 = tail call i32 @viafb_setup_engine(ptr noundef %42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end15.if.else_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else, %land.lhs.true.if.end27_crit_edge
  %.sink212 = phi i32 [ 2, %if.else ], [ 1792, %land.lhs.true.if.end27_crit_edge ]
  %.sink = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true.if.end27_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %56 = load ptr, ptr @viafbinfo, align 4
  %flags24 = getelementptr inbounds %struct.fb_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags24, align 4
  %or25 = or i32 %58, %.sink212
  store i32 %or25, ptr %flags24, align 4
  %accel_flags26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %default_var, i32 0, i32 16
  %59 = ptrtoint ptr %accel_flags26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %accel_flags26, align 4
  %60 = load i32, ptr @viafb_second_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool28.not = icmp ne i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp = icmp slt i32 %60, 8
  %or.cond = and i1 %tobool28.not, %cmp
  br i1 %or.cond, label %if.then30, label %if.else33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %61 = load ptr, ptr @viaparinfo, align 4
  %fbmem_free31 = getelementptr inbounds %struct.viafb_par, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %fbmem_free31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fbmem_free31, align 4
  %mul32.neg = mul i32 %60, -1048576
  %sub = add i32 %63, %mul32.neg
  br label %if.end38

if.else33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  store i32 8, ptr @viafb_second_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %64 = load ptr, ptr @viaparinfo, align 4
  %fbmem_free34 = getelementptr inbounds %struct.viafb_par, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %fbmem_free34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fbmem_free34, align 4
  %sub37 = add i32 %66, -8388608
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.then30
  %storemerge = phi i32 [ %sub37, %if.else33 ], [ %sub, %if.then30 ]
  store i32 %storemerge, ptr @viafb_second_offset, align 4
  %67 = load ptr, ptr @viafb_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %68 = load ptr, ptr @viaparinfo, align 4
  %shared39 = getelementptr inbounds %struct.viafb_par, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %shared39 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %shared39, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i) #14
  %73 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr.i, align 4, !annotation !200
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.i

if.then.i:                                        ; preds = %if.end38
  %74 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %if.then.i.parse_mode.exit_crit_edge [
    i32 16, label %if.then1.i
    i32 32, label %if.then3.i
  ]

if.then.i.parse_mode.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_mode.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %i2c_26.i173 = getelementptr inbounds %struct.viafb_shared, ptr %70, i32 0, i32 6
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %i2c_31.i174 = getelementptr inbounds %struct.viafb_shared, ptr %70, i32 0, i32 7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then1.i
  %i2c_31.sink.i = phi ptr [ %i2c_31.i174, %if.then3.i ], [ %i2c_26.i173, %if.then1.i ]
  %75 = ptrtoint ptr %i2c_31.sink.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_31.sink.i, align 4
  %call5.i = tail call ptr @via_aux_get_preferred_mode(ptr noundef %76) #14
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end6.i.parse_mode.exit_crit_edge, label %if.then8.i

if.end6.i.parse_mode.exit_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_mode.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %xres9.i = getelementptr inbounds %struct.fb_videomode, ptr %call5.i, i32 0, i32 2
  %77 = ptrtoint ptr %xres9.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xres9.i, align 4
  %yres10.i = getelementptr inbounds %struct.fb_videomode, ptr %call5.i, i32 0, i32 3
  %79 = ptrtoint ptr %yres10.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %yres10.i, align 4
  br label %parse_mode.exit

if.end13.i:                                       ; preds = %if.end38
  %call14.i175 = call i32 @simple_strtoul(ptr noundef nonnull %67, ptr noundef nonnull %ptr.i, i32 noundef 10) #14
  %81 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptr.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %84)
  %cmp15.not.i = icmp eq i8 %84, 120
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.parse_mode.exit_crit_edge

if.end13.i.parse_mode.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_mode.exit

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx19.i = getelementptr i8, ptr %82, i32 1
  %call20.i = call i32 @simple_strtoul(ptr noundef %arrayidx19.i, ptr noundef nonnull %ptr.i, i32 noundef 10) #14
  br label %parse_mode.exit

parse_mode.exit:                                  ; preds = %if.end18.i, %if.end13.i.parse_mode.exit_crit_edge, %if.then8.i, %if.end6.i.parse_mode.exit_crit_edge, %if.then.i.parse_mode.exit_crit_edge
  %default_xres.1 = phi i32 [ %call14.i175, %if.end18.i ], [ %call14.i175, %if.end13.i.parse_mode.exit_crit_edge ], [ %78, %if.then8.i ], [ 640, %if.end6.i.parse_mode.exit_crit_edge ], [ 640, %if.then.i.parse_mode.exit_crit_edge ]
  %default_yres.0 = phi i32 [ %call20.i, %if.end18.i ], [ -1, %if.end13.i.parse_mode.exit_crit_edge ], [ %80, %if.then8.i ], [ 480, %if.end6.i.parse_mode.exit_crit_edge ], [ 480, %if.then.i.parse_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %85 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp41 = icmp eq i32 %85, 1
  br i1 %cmp41, label %if.then42, label %parse_mode.exit.if.end45_crit_edge

parse_mode.exit.if.end45_crit_edge:               ; preds = %parse_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then42:                                        ; preds = %parse_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  %86 = load ptr, ptr @viafb_mode1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %87 = load ptr, ptr @viaparinfo, align 4
  %shared43 = getelementptr inbounds %struct.viafb_par, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %shared43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %shared43, align 4
  %iga2_devices = getelementptr inbounds %struct.viafb_shared, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %iga2_devices to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iga2_devices, align 4
  %call44 = call fastcc i32 @parse_mode(ptr noundef %86, i32 noundef %91, ptr noundef nonnull @viafb_second_xres, ptr noundef nonnull @viafb_second_yres)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %parse_mode.exit.if.end45_crit_edge
  %92 = ptrtoint ptr %default_var to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %default_xres.1, ptr %default_var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %default_var, i32 0, i32 1
  %93 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %default_yres.0, ptr %yres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %default_var, i32 0, i32 2
  %94 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %default_xres.1, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %default_var, i32 0, i32 3
  %95 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %default_yres.0, ptr %yres_virtual, align 4
  %96 = load i32, ptr @viafb_bpp, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %default_var, i32 0, i32 6
  %97 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %bits_per_pixel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh to i32))
  %98 = load i32, ptr @viafb_refresh, align 4
  %call48 = call ptr @viafb_get_best_mode(i32 noundef %default_xres.1, i32 noundef %default_yres.0, i32 noundef %98) #14
  call void @viafb_fill_var_timing_info(ptr noundef nonnull %default_var, ptr noundef %call48) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %99 = load ptr, ptr @viafbinfo, align 4
  %fix49 = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %100 = load ptr, ptr @viaparinfo, align 4
  %101 = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 0, i32 4
  %102 = call ptr @memset(ptr %101, i32 0, i32 64)
  %103 = ptrtoint ptr %fix49 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 1449746688, ptr %fix49, align 1
  %fbmem.i = getelementptr inbounds %struct.viafb_par, ptr %100, i32 0, i32 2
  %104 = ptrtoint ptr %fbmem.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fbmem.i, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 1
  %106 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %smem_start.i, align 4
  %fbmem_free.i = getelementptr inbounds %struct.viafb_par, ptr %100, i32 0, i32 4
  %107 = ptrtoint ptr %fbmem_free.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fbmem_free.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 2
  %109 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %smem_len.i, align 4
  %type.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 3
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %type.i, align 4
  %type_aux.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 4
  %111 = ptrtoint ptr %type_aux.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %type_aux.i, align 4
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 5
  %112 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %visual.i, align 4
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 8
  %113 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %ywrapstep.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 6
  %114 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 7
  %115 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %ypanstep.i, align 2
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 7, i32 12
  %116 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 50, ptr %accel.i, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %99, i32 0, i32 6
  %117 = call ptr @memcpy(ptr %var, ptr %default_var, i32 160)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %118 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool50.not = icmp eq i32 %118, 0
  br i1 %tobool50.not, label %if.end45.if.end93_crit_edge, label %if.then51

if.end45.if.end93_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then51:                                        ; preds = %if.end45
  %119 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vdev, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %call54 = call ptr @framebuffer_alloc(i32 noundef 48, ptr noundef %dev53) #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  store ptr %call54, ptr @viafbinfo1, align 4
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.then51.out_fb_release_crit_edge, label %if.end57

if.then51.out_fb_release_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fb_release

if.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %par58 = getelementptr inbounds %struct.fb_info, ptr %call54, i32 0, i32 30
  %121 = ptrtoint ptr %par58 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %par58, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viaparinfo1 to i32))
  store ptr %122, ptr @viaparinfo1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %123 = load ptr, ptr @viaparinfo, align 4
  %124 = call ptr @memcpy(ptr %122, ptr %123, i32 48)
  %125 = load i32, ptr @viafb_second_offset, align 4
  %126 = load ptr, ptr @viaparinfo1, align 4
  %vram_addr59 = getelementptr inbounds %struct.viafb_par, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %vram_addr59 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %125, ptr %vram_addr59, align 4
  %128 = load ptr, ptr @viaparinfo, align 4
  %memsize60 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %memsize60 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %memsize60, align 4
  %sub61 = sub i32 %130, %125
  %memsize62 = getelementptr inbounds %struct.viafb_par, ptr %126, i32 0, i32 3
  %131 = ptrtoint ptr %memsize62 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %sub61, ptr %memsize62, align 4
  store i32 %125, ptr %memsize60, align 4
  %fbmem64 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 2
  %132 = ptrtoint ptr %fbmem64 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fbmem64, align 4
  %add65 = add i32 %133, %125
  %fbmem66 = getelementptr inbounds %struct.viafb_par, ptr %126, i32 0, i32 2
  %134 = ptrtoint ptr %fbmem66 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add65, ptr %fbmem66, align 4
  %fbmem_used67 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 5
  %135 = ptrtoint ptr %fbmem_used67 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %fbmem_used67, align 4
  %fbmem_used68 = getelementptr inbounds %struct.viafb_par, ptr %126, i32 0, i32 5
  %137 = ptrtoint ptr %fbmem_used68 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %fbmem_used68, align 4
  %138 = load i32, ptr %memsize62, align 4
  %sub71 = sub i32 %138, %136
  %fbmem_free72 = getelementptr inbounds %struct.viafb_par, ptr %126, i32 0, i32 4
  %139 = ptrtoint ptr %fbmem_free72 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub71, ptr %fbmem_free72, align 4
  %140 = load i32, ptr %memsize60, align 4
  %fbmem_free74 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 4
  %141 = ptrtoint ptr %fbmem_free74 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %fbmem_free74, align 4
  store i32 0, ptr %fbmem_used67, align 4
  %iga_path = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 6
  %142 = ptrtoint ptr %iga_path to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %iga_path, align 4
  %iga_path76 = getelementptr inbounds %struct.viafb_par, ptr %126, i32 0, i32 6
  %143 = ptrtoint ptr %iga_path76 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 2, ptr %iga_path76, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %144 = load ptr, ptr @viafbinfo1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %145 = load ptr, ptr @viafbinfo, align 4
  %146 = call ptr @memcpy(ptr %144, ptr %145, i32 1116)
  %147 = load ptr, ptr @viaparinfo1, align 4
  %148 = load ptr, ptr @viafbinfo1, align 4
  %par77 = getelementptr inbounds %struct.fb_info, ptr %148, i32 0, i32 30
  %149 = ptrtoint ptr %par77 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %147, ptr %par77, align 4
  %150 = load ptr, ptr @viafbinfo, align 4
  %151 = getelementptr inbounds %struct.fb_info, ptr %150, i32 0, i32 25
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %add.ptr78 = getelementptr i8, ptr %153, i32 %125
  %154 = getelementptr inbounds %struct.fb_info, ptr %148, i32 0, i32 25
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %add.ptr78, ptr %154, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_xres to i32))
  %156 = load i32, ptr @viafb_second_xres, align 4
  %157 = ptrtoint ptr %default_var to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %default_var, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_yres to i32))
  %158 = load i32, ptr @viafb_second_yres, align 4
  %159 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %yres, align 4
  %160 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %156, ptr %xres_virtual, align 4
  %161 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %158, ptr %yres_virtual, align 4
  %162 = load i32, ptr @viafb_bpp1, align 4
  %163 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %bits_per_pixel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh1 to i32))
  %164 = load i32, ptr @viafb_refresh1, align 4
  %call86 = call ptr @viafb_get_best_mode(i32 noundef %156, i32 noundef %158, i32 noundef %164) #14
  call void @viafb_fill_var_timing_info(ptr noundef nonnull %default_var, ptr noundef %call86) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %165 = load ptr, ptr @viafbinfo1, align 4
  %fix87 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo1 to i32))
  %166 = load ptr, ptr @viaparinfo1, align 4
  %167 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 0, i32 4
  %168 = call ptr @memset(ptr %167, i32 0, i32 64)
  %169 = ptrtoint ptr %fix87 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 1449746688, ptr %fix87, align 1
  %fbmem.i176 = getelementptr inbounds %struct.viafb_par, ptr %166, i32 0, i32 2
  %170 = ptrtoint ptr %fbmem.i176 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fbmem.i176, align 4
  %smem_start.i177 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 1
  %172 = ptrtoint ptr %smem_start.i177 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %smem_start.i177, align 4
  %fbmem_free.i178 = getelementptr inbounds %struct.viafb_par, ptr %166, i32 0, i32 4
  %173 = ptrtoint ptr %fbmem_free.i178 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %fbmem_free.i178, align 4
  %smem_len.i179 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 2
  %175 = ptrtoint ptr %smem_len.i179 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %smem_len.i179, align 4
  %type.i180 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 3
  %176 = ptrtoint ptr %type.i180 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %type.i180, align 4
  %type_aux.i181 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 4
  %177 = ptrtoint ptr %type_aux.i181 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %type_aux.i181, align 4
  %visual.i182 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 5
  %178 = ptrtoint ptr %visual.i182 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 2, ptr %visual.i182, align 4
  %ywrapstep.i183 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 8
  %179 = ptrtoint ptr %ywrapstep.i183 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %ywrapstep.i183, align 4
  %xpanstep.i184 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 6
  %180 = ptrtoint ptr %xpanstep.i184 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %xpanstep.i184, align 4
  %ypanstep.i185 = getelementptr inbounds %struct.fb_info, ptr %165, i32 0, i32 7, i32 7
  %181 = ptrtoint ptr %ypanstep.i185 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 1, ptr %ypanstep.i185, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %182 = load ptr, ptr @viafbinfo, align 4
  %accel.i186 = getelementptr inbounds %struct.fb_info, ptr %182, i32 0, i32 7, i32 12
  %183 = ptrtoint ptr %accel.i186 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 50, ptr %accel.i186, align 4
  %call88 = call i32 @viafb_check_var(ptr noundef nonnull %default_var, ptr noundef %165)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %184 = load ptr, ptr @viafbinfo1, align 4
  %var89 = getelementptr inbounds %struct.fb_info, ptr %184, i32 0, i32 6
  %185 = call ptr @memcpy(ptr %var89, ptr %default_var, i32 160)
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %184, i32 0, i32 6, i32 6
  %186 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %187)
  %cmp.i = icmp eq i32 %187, 8
  %cond.i = select i1 %cmp.i, i32 3, i32 2
  %visual.i187 = getelementptr inbounds %struct.fb_info, ptr %184, i32 0, i32 7, i32 5
  %188 = ptrtoint ptr %visual.i187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %cond.i, ptr %visual.i187, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %184, i32 0, i32 6, i32 2
  %189 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %190, %187
  %div7.i = lshr i32 %mul.i, 3
  %add.i = add nuw nsw i32 %div7.i, 7
  %and.i = and i32 %add.i, 1073741816
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %184, i32 0, i32 7, i32 9
  %191 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %and.i, ptr %line_length.i, align 4
  %fix91 = getelementptr inbounds %struct.fb_info, ptr %184, i32 0, i32 7
  %call92 = call i32 @fb_get_color_depth(ptr noundef %var89, ptr noundef %fix91) #14
  %conv = trunc i32 %call92 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo1 to i32))
  %192 = load ptr, ptr @viaparinfo1, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv, ptr %192, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end57, %if.end45.if.end93_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %194 = load ptr, ptr @viafbinfo, align 4
  %var94 = getelementptr inbounds %struct.fb_info, ptr %194, i32 0, i32 6
  %call95 = call i32 @viafb_check_var(ptr noundef %var94, ptr noundef %194)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %195 = load ptr, ptr @viafbinfo, align 4
  %bits_per_pixel.i188 = getelementptr inbounds %struct.fb_info, ptr %195, i32 0, i32 6, i32 6
  %196 = ptrtoint ptr %bits_per_pixel.i188 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %bits_per_pixel.i188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %197)
  %cmp.i189 = icmp eq i32 %197, 8
  %cond.i190 = select i1 %cmp.i189, i32 3, i32 2
  %visual.i191 = getelementptr inbounds %struct.fb_info, ptr %195, i32 0, i32 7, i32 5
  %198 = ptrtoint ptr %visual.i191 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %cond.i190, ptr %visual.i191, align 4
  %xres_virtual.i192 = getelementptr inbounds %struct.fb_info, ptr %195, i32 0, i32 6, i32 2
  %199 = ptrtoint ptr %xres_virtual.i192 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %xres_virtual.i192, align 4
  %mul.i193 = mul i32 %200, %197
  %div7.i194 = lshr i32 %mul.i193, 3
  %add.i195 = add nuw nsw i32 %div7.i194, 7
  %and.i196 = and i32 %add.i195, 1073741816
  %line_length.i197 = getelementptr inbounds %struct.fb_info, ptr %195, i32 0, i32 7, i32 9
  %201 = ptrtoint ptr %line_length.i197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and.i196, ptr %line_length.i197, align 4
  %var96 = getelementptr inbounds %struct.fb_info, ptr %195, i32 0, i32 6
  %fix97 = getelementptr inbounds %struct.fb_info, ptr %195, i32 0, i32 7
  %call98 = call i32 @fb_get_color_depth(ptr noundef %var96, ptr noundef %fix97) #14
  %conv99 = trunc i32 %call98 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %202 = load ptr, ptr @viaparinfo, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv99, ptr %202, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %default_var, i32 0, i32 13
  %204 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %activate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %205 = load ptr, ptr @viafbinfo, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %205, i32 0, i32 12
  %call101 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end93.out_fb1_release_crit_edge

if.end93.out_fb1_release_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fb1_release

if.end104:                                        ; preds = %if.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %206 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool105.not = icmp eq i32 %206, 0
  br i1 %tobool105.not, label %if.end104.if.end118_crit_edge, label %land.lhs.true106

if.end104.if.end118_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

land.lhs.true106:                                 ; preds = %if.end104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %207 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %207)
  %cmp107 = icmp eq i32 %207, 2
  br i1 %cmp107, label %land.lhs.true109, label %land.lhs.true106.if.end118_crit_edge

land.lhs.true106.if.end118_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

land.lhs.true109:                                 ; preds = %land.lhs.true106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %208 = load ptr, ptr @viaparinfo, align 4
  %chip_info110 = getelementptr inbounds %struct.viafb_par, ptr %208, i32 0, i32 11
  %209 = ptrtoint ptr %chip_info110 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %chip_info110, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %212)
  %cmp111 = icmp eq i32 %212, 1
  br i1 %cmp111, label %if.then113, label %land.lhs.true109.if.end118_crit_edge

land.lhs.true109.if.end118_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

if.then113:                                       ; preds = %land.lhs.true109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %213 = load ptr, ptr @viafbinfo1, align 4
  %call114 = call i32 @register_framebuffer(ptr noundef %213) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then113.if.end118_crit_edge, label %if.then113.out_dealloc_cmap_crit_edge

if.then113.out_dealloc_cmap_crit_edge:            ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dealloc_cmap

if.then113.if.end118_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

if.end118:                                        ; preds = %if.then113.if.end118_crit_edge, %land.lhs.true109.if.end118_crit_edge, %land.lhs.true106.if.end118_crit_edge, %if.end104.if.end118_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %214 = load ptr, ptr @viafbinfo, align 4
  %call119 = call i32 @register_framebuffer(ptr noundef %214) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end118.out_fb1_unreg_lcd_cle266_crit_edge

if.end118.out_fb1_unreg_lcd_cle266_crit_edge:     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_fb1_unreg_lcd_cle266

if.end122:                                        ; preds = %if.end118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %215 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool123.not = icmp eq i32 %215, 0
  br i1 %tobool123.not, label %if.end122.if.end136_crit_edge, label %land.lhs.true124

if.end122.if.end136_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

land.lhs.true124:                                 ; preds = %if.end122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %216 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %216)
  %cmp125.not = icmp eq i32 %216, 2
  br i1 %cmp125.not, label %lor.lhs.false, label %land.lhs.true124.if.then131_crit_edge

land.lhs.true124.if.then131_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then131

lor.lhs.false:                                    ; preds = %land.lhs.true124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %217 = load ptr, ptr @viaparinfo, align 4
  %chip_info127 = getelementptr inbounds %struct.viafb_par, ptr %217, i32 0, i32 11
  %218 = ptrtoint ptr %chip_info127 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %chip_info127, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %221)
  %cmp129.not = icmp eq i32 %221, 1
  br i1 %cmp129.not, label %lor.lhs.false.if.end136_crit_edge, label %lor.lhs.false.if.then131_crit_edge

lor.lhs.false.if.then131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then131

lor.lhs.false.if.end136_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

if.then131:                                       ; preds = %lor.lhs.false.if.then131_crit_edge, %land.lhs.true124.if.then131_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %222 = load ptr, ptr @viafbinfo1, align 4
  %call132 = call i32 @register_framebuffer(ptr noundef %222) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then131.if.end136_crit_edge, label %out_fb_unreg

if.then131.if.end136_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

if.end136:                                        ; preds = %if.then131.if.end136_crit_edge, %lor.lhs.false.if.end136_crit_edge, %if.end122.if.end136_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %223 = load ptr, ptr @viaparinfo, align 4
  %shared138 = getelementptr inbounds %struct.viafb_par, ptr %223, i32 0, i32 7
  %224 = ptrtoint ptr %shared138 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %shared138, align 4
  %call.i198 = call ptr @proc_mkdir(ptr noundef nonnull @.str.21, ptr noundef null) #14
  %proc_entry.i = getelementptr inbounds %struct.viafb_shared, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call.i198, ptr %proc_entry.i, align 4
  %tobool.not.i199 = icmp eq ptr %call.i198, null
  br i1 %tobool.not.i199, label %if.end136.viafb_init_proc.exit_crit_edge, label %if.then.i203

if.end136.viafb_init_proc.exit_crit_edge:         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_init_proc.exit

if.then.i203:                                     ; preds = %if.end136
  %call1.i200 = call ptr @proc_create(ptr noundef nonnull @.str.22, i16 noundef zeroext 0, ptr noundef nonnull %call.i198, ptr noundef nonnull @viafb_dvp0_proc_ops) #14
  %call2.i201 = call ptr @proc_create(ptr noundef nonnull @.str.23, i16 noundef zeroext 0, ptr noundef nonnull %call.i198, ptr noundef nonnull @viafb_dvp1_proc_ops) #14
  %call3.i = call ptr @proc_create(ptr noundef nonnull @.str.24, i16 noundef zeroext 0, ptr noundef nonnull %call.i198, ptr noundef nonnull @viafb_dfph_proc_ops) #14
  %call4.i = call ptr @proc_create(ptr noundef nonnull @.str.25, i16 noundef zeroext 0, ptr noundef nonnull %call.i198, ptr noundef nonnull @viafb_dfpl_proc_ops) #14
  %lvds_chip_info.i = getelementptr inbounds %struct.viafb_shared, ptr %225, i32 0, i32 12, i32 4
  %227 = ptrtoint ptr %lvds_chip_info.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %lvds_chip_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %228)
  %cmp.i202 = icmp eq i32 %228, 14
  br i1 %cmp.i202, label %if.then.i203.if.then8.i204_crit_edge, label %lor.lhs.false.i

if.then.i203.if.then8.i204_crit_edge:             ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i204

lor.lhs.false.i:                                  ; preds = %if.then.i203
  %lvds_chip_info2.i = getelementptr inbounds %struct.viafb_shared, ptr %225, i32 0, i32 12, i32 5
  %229 = ptrtoint ptr %lvds_chip_info2.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %lvds_chip_info2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %230)
  %cmp7.i = icmp eq i32 %230, 14
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then8.i204_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i.if.then8.i204_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i204

if.then8.i204:                                    ; preds = %lor.lhs.false.i.if.then8.i204_crit_edge, %if.then.i203.if.then8.i204_crit_edge
  %call9.i = call ptr @proc_create(ptr noundef nonnull @.str.26, i16 noundef zeroext 0, ptr noundef nonnull %call.i198, ptr noundef nonnull @viafb_vt1636_proc_ops) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i204, %lor.lhs.false.i.if.end.i_crit_edge
  %call10.i = call ptr @proc_create_single_data(ptr noundef nonnull @.str.27, i16 noundef zeroext 0, ptr noundef nonnull %call.i198, ptr noundef nonnull @viafb_sup_odev_proc_show, ptr noundef null) #14
  %call11.i = call ptr @proc_mkdir(ptr noundef nonnull @.str.28, ptr noundef nonnull %call.i198) #14
  %iga1_proc_entry.i = getelementptr inbounds %struct.viafb_shared, ptr %225, i32 0, i32 3
  %231 = ptrtoint ptr %iga1_proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call11.i, ptr %iga1_proc_entry.i, align 4
  %call12.i205 = call ptr @proc_create(ptr noundef nonnull @.str.29, i16 noundef zeroext 0, ptr noundef %call11.i, ptr noundef nonnull @viafb_iga1_odev_proc_ops) #14
  %call13.i206 = call ptr @proc_mkdir(ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i198) #14
  %iga2_proc_entry.i = getelementptr inbounds %struct.viafb_shared, ptr %225, i32 0, i32 4
  %232 = ptrtoint ptr %iga2_proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call13.i206, ptr %iga2_proc_entry.i, align 4
  %call14.i207 = call ptr @proc_create(ptr noundef nonnull @.str.29, i16 noundef zeroext 0, ptr noundef %call13.i206, ptr noundef nonnull @viafb_iga2_odev_proc_ops) #14
  br label %viafb_init_proc.exit

viafb_init_proc.exit:                             ; preds = %if.end.i, %if.end136.viafb_init_proc.exit_crit_edge
  call void @viafb_init_dac(i32 noundef 2) #14
  call void @viafb_pm_register(ptr noundef nonnull @viafb_fb_pm_hooks) #14
  br label %cleanup

out_fb_unreg:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %233 = load ptr, ptr @viafbinfo, align 4
  call void @unregister_framebuffer(ptr noundef %233) #14
  br label %out_fb1_unreg_lcd_cle266

out_fb1_unreg_lcd_cle266:                         ; preds = %out_fb_unreg, %if.end118.out_fb1_unreg_lcd_cle266_crit_edge
  %rc.0 = phi i32 [ %call119, %if.end118.out_fb1_unreg_lcd_cle266_crit_edge ], [ %call132, %out_fb_unreg ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %234 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool139.not = icmp eq i32 %234, 0
  br i1 %tobool139.not, label %out_fb1_unreg_lcd_cle266.out_dealloc_cmap_crit_edge, label %land.lhs.true140

out_fb1_unreg_lcd_cle266.out_dealloc_cmap_crit_edge: ; preds = %out_fb1_unreg_lcd_cle266
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dealloc_cmap

land.lhs.true140:                                 ; preds = %out_fb1_unreg_lcd_cle266
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %235 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %235)
  %cmp141 = icmp eq i32 %235, 2
  br i1 %cmp141, label %land.lhs.true143, label %land.lhs.true140.out_dealloc_cmap_crit_edge

land.lhs.true140.out_dealloc_cmap_crit_edge:      ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dealloc_cmap

land.lhs.true143:                                 ; preds = %land.lhs.true140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %236 = load ptr, ptr @viaparinfo, align 4
  %chip_info144 = getelementptr inbounds %struct.viafb_par, ptr %236, i32 0, i32 11
  %237 = ptrtoint ptr %chip_info144 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %chip_info144, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cmp146 = icmp eq i32 %240, 1
  br i1 %cmp146, label %if.then148, label %land.lhs.true143.out_dealloc_cmap_crit_edge

land.lhs.true143.out_dealloc_cmap_crit_edge:      ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dealloc_cmap

if.then148:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %241 = load ptr, ptr @viafbinfo1, align 4
  call void @unregister_framebuffer(ptr noundef %241) #14
  br label %out_dealloc_cmap

out_dealloc_cmap:                                 ; preds = %if.then148, %land.lhs.true143.out_dealloc_cmap_crit_edge, %land.lhs.true140.out_dealloc_cmap_crit_edge, %out_fb1_unreg_lcd_cle266.out_dealloc_cmap_crit_edge, %if.then113.out_dealloc_cmap_crit_edge
  %rc.1 = phi i32 [ %call114, %if.then113.out_dealloc_cmap_crit_edge ], [ %rc.0, %if.then148 ], [ %rc.0, %land.lhs.true143.out_dealloc_cmap_crit_edge ], [ %rc.0, %land.lhs.true140.out_dealloc_cmap_crit_edge ], [ %rc.0, %out_fb1_unreg_lcd_cle266.out_dealloc_cmap_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %242 = load ptr, ptr @viafbinfo, align 4
  %cmap150 = getelementptr inbounds %struct.fb_info, ptr %242, i32 0, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap150) #14
  br label %out_fb1_release

out_fb1_release:                                  ; preds = %out_dealloc_cmap, %if.end93.out_fb1_release_crit_edge
  %rc.2 = phi i32 [ %call101, %if.end93.out_fb1_release_crit_edge ], [ %rc.1, %out_dealloc_cmap ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %243 = load ptr, ptr @viafbinfo1, align 4
  call void @framebuffer_release(ptr noundef %243) #14
  br label %out_fb_release

out_fb_release:                                   ; preds = %out_fb1_release, %if.then51.out_fb_release_crit_edge
  %rc.3 = phi i32 [ %rc.2, %out_fb1_release ], [ -12, %if.then51.out_fb_release_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %244 = load ptr, ptr @viaparinfo, align 4
  %shared151 = getelementptr inbounds %struct.viafb_par, ptr %244, i32 0, i32 7
  %245 = ptrtoint ptr %shared151 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %shared151, align 4
  %i2c_26.i208 = getelementptr inbounds %struct.viafb_shared, ptr %246, i32 0, i32 6
  %247 = ptrtoint ptr %i2c_26.i208 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %i2c_26.i208, align 4
  call void @via_aux_free(ptr noundef %248) #14
  %i2c_31.i209 = getelementptr inbounds %struct.viafb_shared, ptr %246, i32 0, i32 7
  %249 = ptrtoint ptr %i2c_31.i209 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %i2c_31.i209, align 4
  call void @via_aux_free(ptr noundef %250) #14
  %i2c_2C.i210 = getelementptr inbounds %struct.viafb_shared, ptr %246, i32 0, i32 8
  %251 = ptrtoint ptr %i2c_2C.i210 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %i2c_2C.i210, align 4
  call void @via_aux_free(ptr noundef %252) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %253 = load ptr, ptr @viafbinfo, align 4
  call void @framebuffer_release(ptr noundef %253) #14
  br label %cleanup

cleanup:                                          ; preds = %out_fb_release, %viafb_init_proc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %out_fb_release ], [ 0, %viafb_init_proc.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %default_var) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_init_chip_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_setup_engine(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_mode(ptr noundef %str, i32 noundef %devices, ptr nocapture noundef writeonly %xres, ptr nocapture noundef writeonly %yres) unnamed_addr #0 align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #14
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr, align 4, !annotation !200
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %1 = zext i32 %devices to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %devices, label %if.then.if.else11_crit_edge [
    i32 16, label %if.then1
    i32 32, label %if.then3
  ]

if.then.if.else11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else11

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %2 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shared, align 4
  %i2c_26 = getelementptr inbounds %struct.viafb_shared, ptr %4, i32 0, i32 6
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %5 = load ptr, ptr @viaparinfo, align 4
  %shared4 = getelementptr inbounds %struct.viafb_par, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %shared4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared4, align 4
  %i2c_31 = getelementptr inbounds %struct.viafb_shared, ptr %7, i32 0, i32 7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then1
  %i2c_31.sink = phi ptr [ %i2c_31, %if.then3 ], [ %i2c_26, %if.then1 ]
  %8 = ptrtoint ptr %i2c_31.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_31.sink, align 4
  %call5 = tail call ptr @via_aux_get_preferred_mode(ptr noundef %9) #14
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.if.else11_crit_edge, label %if.then8

if.end6.if.else11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %xres9 = getelementptr inbounds %struct.fb_videomode, ptr %call5, i32 0, i32 2
  %10 = ptrtoint ptr %xres9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres9, align 4
  %12 = ptrtoint ptr %xres to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %xres, align 4
  %yres10 = getelementptr inbounds %struct.fb_videomode, ptr %call5, i32 0, i32 3
  %13 = ptrtoint ptr %yres10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres10, align 4
  br label %if.end12

if.else11:                                        ; preds = %if.end6.if.else11_crit_edge, %if.then.if.else11_crit_edge
  %15 = ptrtoint ptr %xres to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 640, ptr %xres, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then8
  %storemerge = phi i32 [ 480, %if.else11 ], [ %14, %if.then8 ]
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %yres, align 4
  br label %cleanup

if.end13:                                         ; preds = %entry
  %call14 = call i32 @simple_strtoul(ptr noundef nonnull %str, ptr noundef nonnull %ptr, i32 noundef 10) #14
  %17 = ptrtoint ptr %xres to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call14, ptr %xres, align 4
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %21)
  %cmp15.not = icmp eq i8 %21, 120
  br i1 %cmp15.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx19 = getelementptr i8, ptr %19, i32 1
  %call20 = call i32 @simple_strtoul(ptr noundef %arrayidx19, ptr noundef nonnull %ptr, i32 noundef 10) #14
  %22 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call20, ptr %yres, align 4
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  %. = select i1 %tobool22.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %if.end13.cleanup_crit_edge ], [ %., %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_fill_var_timing_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @viafb_get_best_mode(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_check_var(ptr noundef %var, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %2 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmode, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %call = tail call ptr @viafb_get_best_mode(i32 noundef %7, i32 noundef %9, i32 noundef 60) #14
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call8 = tail call i32 @fb_get_color_depth(ptr noundef %var, ptr noundef %fix) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %depth.0 = phi i32 [ %call8, %if.end7.if.end11_crit_edge ], [ %11, %if.then10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %depth.0)
  %12 = icmp ugt i32 %depth.0, 32
  br i1 %12, label %if.end11.cleanup_crit_edge, label %if.else

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %13 = zext i32 %depth.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %depth.0, label %if.else26 [
    i32 0, label %if.else.viafb_fill_var_color_info.exit_crit_edge
    i32 15, label %land.lhs.true
    i32 30, label %sw.bb60.i
  ]

if.else.viafb_fill_var_color_info.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_fill_var_color_info.exit

land.lhs.true:                                    ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %14 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %land.lhs.true.sw.bb32.i_crit_edge, label %land.lhs.true20

land.lhs.true.sw.bb32.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb32.i

land.lhs.true20:                                  ; preds = %land.lhs.true
  %iga_path = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %iga_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iga_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp21 = icmp eq i32 %16, 1
  br i1 %cmp21, label %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge, label %land.lhs.true20.sw.bb32.i_crit_edge

land.lhs.true20.sw.bb32.i_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb32.i

land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge: ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_fill_var_color_info.exit

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %depth.0)
  %cmp27 = icmp ult i32 %depth.0, 9
  br i1 %cmp27, label %if.else26.viafb_fill_var_color_info.exit_crit_edge, label %if.else29

if.else26.viafb_fill_var_color_info.exit_crit_edge: ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_fill_var_color_info.exit

if.else29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %depth.0)
  %cmp30 = icmp ult i32 %depth.0, 17
  br i1 %cmp30, label %if.else29.sw.bb32.i_crit_edge, label %if.else29.viafb_fill_var_color_info.exit_crit_edge

if.else29.viafb_fill_var_color_info.exit_crit_edge: ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_fill_var_color_info.exit

if.else29.sw.bb32.i_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb32.i

sw.bb32.i:                                        ; preds = %if.else29.sw.bb32.i_crit_edge, %land.lhs.true20.sw.bb32.i_crit_edge, %land.lhs.true.sw.bb32.i_crit_edge
  br label %viafb_fill_var_color_info.exit

sw.bb60.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_fill_var_color_info.exit

viafb_fill_var_color_info.exit:                   ; preds = %sw.bb60.i, %sw.bb32.i, %if.else29.viafb_fill_var_color_info.exit_crit_edge, %if.else26.viafb_fill_var_color_info.exit_crit_edge, %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge, %if.else.viafb_fill_var_color_info.exit_crit_edge
  %.sink120.i = phi i32 [ 32, %sw.bb60.i ], [ 16, %sw.bb32.i ], [ 8, %if.else26.viafb_fill_var_color_info.exit_crit_edge ], [ 16, %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge ], [ 32, %if.else.viafb_fill_var_color_info.exit_crit_edge ], [ 32, %if.else29.viafb_fill_var_color_info.exit_crit_edge ]
  %.sink119.i = phi i32 [ 20, %sw.bb60.i ], [ 11, %sw.bb32.i ], [ 0, %if.else26.viafb_fill_var_color_info.exit_crit_edge ], [ 10, %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge ], [ 16, %if.else.viafb_fill_var_color_info.exit_crit_edge ], [ 16, %if.else29.viafb_fill_var_color_info.exit_crit_edge ]
  %.sink118.i = phi i32 [ 10, %sw.bb60.i ], [ 5, %sw.bb32.i ], [ 0, %if.else26.viafb_fill_var_color_info.exit_crit_edge ], [ 5, %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge ], [ 8, %if.else.viafb_fill_var_color_info.exit_crit_edge ], [ 8, %if.else29.viafb_fill_var_color_info.exit_crit_edge ]
  %.sink117.i = phi i32 [ 10, %sw.bb60.i ], [ 5, %sw.bb32.i ], [ 8, %if.else26.viafb_fill_var_color_info.exit_crit_edge ], [ 5, %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge ], [ 8, %if.else.viafb_fill_var_color_info.exit_crit_edge ], [ 8, %if.else29.viafb_fill_var_color_info.exit_crit_edge ]
  %.sink116.i = phi i32 [ 10, %sw.bb60.i ], [ 6, %sw.bb32.i ], [ 8, %if.else26.viafb_fill_var_color_info.exit_crit_edge ], [ 5, %land.lhs.true20.viafb_fill_var_color_info.exit_crit_edge ], [ 8, %if.else.viafb_fill_var_color_info.exit_crit_edge ], [ 8, %if.else29.viafb_fill_var_color_info.exit_crit_edge ]
  %grayscale.i135 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %17 = ptrtoint ptr %grayscale.i135 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %grayscale.i135, align 4
  %msb_right.i137 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %msb_right.i137 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %msb_right.i137, align 4
  %msb_right1.i139 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %msb_right1.i139 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %msb_right1.i139, align 4
  %msb_right2.i141 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %20 = call ptr @memset(ptr %msb_right2.i141, i32 0, i32 20)
  %red.i119 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %green.i121 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %blue.i123 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %bits_per_pixel61.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %21 = ptrtoint ptr %bits_per_pixel61.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink120.i, ptr %bits_per_pixel61.i, align 4
  %22 = ptrtoint ptr %red.i119 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink119.i, ptr %red.i119, align 4
  %23 = ptrtoint ptr %green.i121 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink118.i, ptr %green.i121, align 4
  %24 = ptrtoint ptr %blue.i123 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %blue.i123, align 4
  %length69.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %length69.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink117.i, ptr %length69.i, align 4
  %length71.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %length71.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink116.i, ptr %length71.i, align 4
  %length73.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %length73.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink117.i, ptr %length73.i, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %28 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres_virtual, align 4
  %30 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp40 = icmp ult i32 %29, %31
  br i1 %cmp40, label %if.then42, label %viafb_fill_var_color_info.exit.if.end45_crit_edge

viafb_fill_var_color_info.exit.if.end45_crit_edge: ; preds = %viafb_fill_var_color_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then42:                                        ; preds = %viafb_fill_var_color_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xres_virtual, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %viafb_fill_var_color_info.exit.if.end45_crit_edge
  %33 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xres_virtual, align 4
  %35 = ptrtoint ptr %bits_per_pixel61.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bits_per_pixel61.i, align 4
  %mul = mul i32 %36, %34
  %div107 = lshr i32 %mul, 3
  %add = add nuw nsw i32 %div107, 7
  %and48 = and i32 %add, 1073741816
  call void @__sanitizer_cov_trace_const_cmp4(i32 16376, i32 %and48)
  %cmp49 = icmp ugt i32 %and48, 16376
  br i1 %cmp49, label %if.end45.cleanup_crit_edge, label %lor.lhs.false51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false51:                                  ; preds = %if.end45
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %37 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %yres_virtual, align 4
  %mul52 = mul i32 %38, %and48
  %memsize = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %memsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul52, i32 %40)
  %cmp53 = icmp ugt i32 %mul52, %40
  br i1 %cmp53, label %lor.lhs.false51.cleanup_crit_edge, label %if.end56

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false51
  %41 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %yres, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %43 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %left_margin.i, align 4
  %add.i = add i32 %44, %31
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %45 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %right_margin.i, align 4
  %add1.i = add i32 %add.i, %46
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %47 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hsync_len.i, align 4
  %add2.i = add i32 %add1.i, %48
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %49 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %upper_margin.i, align 4
  %add3.i = add i32 %50, %42
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %51 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lower_margin.i, align 4
  %add4.i = add i32 %add3.i, %52
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %53 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vsync_len.i, align 4
  %add5.i = add i32 %add4.i, %54
  %pixclock.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %55 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixclock.i, align 4
  %div.i = udiv i32 1000000000, %56
  %mul.i = mul i32 %div.i, 1000
  %mul6.i = mul i32 %add5.i, %add2.i
  %div7.i = udiv i32 %mul.i, %mul6.i
  %call60 = tail call i32 @viafb_get_refresh(i32 noundef %31, i32 noundef %42, i32 noundef %div7.i) #14
  %57 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %var, align 4
  %59 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %yres, align 4
  %call63 = tail call ptr @viafb_get_best_mode(i32 noundef %58, i32 noundef %60, i32 noundef %call60) #14
  tail call void @viafb_fill_var_timing_info(ptr noundef %var, ptr noundef %call63) #14
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %61 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %accel_flags, align 4
  %and64 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end56.cleanup_crit_edge, label %land.lhs.true66

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.end56
  %shared = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %63 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %engine_mmio, align 4
  %tobool67.not = icmp eq ptr %68, null
  br i1 %tobool67.not, label %if.then68, label %land.lhs.true66.cleanup_crit_edge

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %accel_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %land.lhs.true66.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %lor.lhs.false51.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %lor.lhs.false51.cleanup_crit_edge ], [ -22, %if.end45.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %land.lhs.true66.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_init_dac(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_pm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_fb_pci_remove(ptr nocapture noundef readnone %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %0 = load ptr, ptr @viafbinfo, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %1 = load ptr, ptr @viafbinfo, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %2 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %3 = load ptr, ptr @viafbinfo1, align 4
  tail call void @unregister_framebuffer(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %4 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shared, align 4
  %proc_entry.i = getelementptr inbounds %struct.viafb_shared, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_entry.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.viafb_remove_proc.exit_crit_edge, label %if.end.i

if.end.viafb_remove_proc.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_remove_proc.exit

if.end.i:                                         ; preds = %if.end
  %iga2_proc_entry.i = getelementptr inbounds %struct.viafb_shared, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %iga2_proc_entry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iga2_proc_entry.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.29, ptr noundef %10) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.30, ptr noundef nonnull %8) #14
  %iga1_proc_entry.i = getelementptr inbounds %struct.viafb_shared, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %iga1_proc_entry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iga1_proc_entry.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.29, ptr noundef %12) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.28, ptr noundef nonnull %8) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.27, ptr noundef nonnull %8) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.23, ptr noundef nonnull %8) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.24, ptr noundef nonnull %8) #14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.25, ptr noundef nonnull %8) #14
  %lvds_chip_info.i = getelementptr inbounds %struct.viafb_shared, ptr %6, i32 0, i32 12, i32 4
  %13 = ptrtoint ptr %lvds_chip_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lvds_chip_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %14)
  %cmp.i = icmp eq i32 %14, 14
  br i1 %cmp.i, label %if.end.i.if.then4.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %lvds_chip_info2.i = getelementptr inbounds %struct.viafb_shared, ptr %6, i32 0, i32 12, i32 5
  %15 = ptrtoint ptr %lvds_chip_info2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lvds_chip_info2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %16)
  %cmp3.i = icmp eq i32 %16, 14
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then4.i_crit_edge, label %lor.lhs.false.i.if.end5.i_crit_edge

lor.lhs.false.i.if.end5.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.26, ptr noundef nonnull %8) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %lor.lhs.false.i.if.end5.i_crit_edge
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.21, ptr noundef null) #14
  br label %viafb_remove_proc.exit

viafb_remove_proc.exit:                           ; preds = %if.end5.i, %if.end.viafb_remove_proc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %17 = load ptr, ptr @viaparinfo, align 4
  %shared1 = getelementptr inbounds %struct.viafb_par, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared1, align 4
  %i2c_26.i = getelementptr inbounds %struct.viafb_shared, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %i2c_26.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_26.i, align 4
  tail call void @via_aux_free(ptr noundef %21) #14
  %i2c_31.i = getelementptr inbounds %struct.viafb_shared, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %i2c_31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_31.i, align 4
  tail call void @via_aux_free(ptr noundef %23) #14
  %i2c_2C.i = getelementptr inbounds %struct.viafb_shared, ptr %19, i32 0, i32 8
  %24 = ptrtoint ptr %i2c_2C.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_2C.i, align 4
  tail call void @via_aux_free(ptr noundef %25) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %26 = load ptr, ptr @viafbinfo, align 4
  tail call void @framebuffer_release(ptr noundef %26) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %27 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not = icmp eq i32 %27, 0
  br i1 %tobool2.not, label %viafb_remove_proc.exit.if.end4_crit_edge, label %if.then3

viafb_remove_proc.exit.if.end4_crit_edge:         ; preds = %viafb_remove_proc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %viafb_remove_proc.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %28 = load ptr, ptr @viafbinfo1, align 4
  tail call void @framebuffer_release(ptr noundef %28) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %viafb_remove_proc.exit.if.end4_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %dummy_x = alloca i32, align 4
  %dummy_y = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_x) #14
  %0 = ptrtoint ptr %dummy_x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dummy_x, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_y) #14
  %1 = ptrtoint ptr %dummy_y to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dummy_y, align 4, !annotation !200
  %call = tail call fastcc i32 @viafb_setup() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @viafb_mode, align 4
  %call1 = call fastcc i32 @parse_mode(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %dummy_x, ptr noundef nonnull %dummy_y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %dummy_x to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dummy_x, align 4
  %5 = ptrtoint ptr %dummy_y to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dummy_y, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh to i32))
  %7 = load i32, ptr @viafb_refresh, align 4
  %call2 = tail call ptr @viafb_get_best_mode(i32 noundef %4, i32 noundef %6, i32 noundef %7) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr @viafb_mode1, align 4
  %call5 = call fastcc i32 @parse_mode(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %dummy_x, ptr noundef nonnull %dummy_y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %9 = ptrtoint ptr %dummy_x to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dummy_x, align 4
  %11 = ptrtoint ptr %dummy_y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dummy_y, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh1 to i32))
  %13 = load i32, ptr @viafb_refresh1, align 4
  %call8 = tail call ptr @viafb_get_best_mode(i32 noundef %10, i32 noundef %12, i32 noundef %13) #14
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %14 = load i32, ptr @viafb_bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %15 = icmp ugt i32 %14, 32
  br i1 %15, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %16 = load i32, ptr @viafb_bpp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %17 = icmp ugt i32 %16, 32
  br i1 %17, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false18

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call fastcc i32 @parse_active_dev() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 4) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_y) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_x) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @viafb_setup() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #14
  %0 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %options, align 4, !annotation !200
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.21, ptr noundef nonnull %options) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call5220 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.39) #14
  %cmp.not221 = icmp eq ptr %call5220, null
  br i1 %cmp.not221, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call5222 = phi ptr [ %call5, %while.cond.backedge.while.body_crit_edge ], [ %call5220, %while.cond.preheader.while.body_crit_edge ]
  %5 = ptrtoint ptr %call5222 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call5222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %while.body.while.cond.backedge_crit_edge, label %if.end8

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end8:                                          ; preds = %while.body
  %call9 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(13) @.str.40, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.while.cond.backedge.sink.split_crit_edge, label %if.else

if.end8.while.cond.backedge.sink.split_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.sink.split

if.else:                                          ; preds = %if.end8
  %call13 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(12) @.str.41, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else.while.cond.backedge.sink.split_crit_edge, label %if.else18

if.else.while.cond.backedge.sink.split_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.sink.split

if.else18:                                        ; preds = %if.else
  %call19 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(12) @.str.42, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else27

if.then21:                                        ; preds = %if.else18
  %add.ptr22 = getelementptr i8, ptr %call5222, i32 11
  %call23 = call i32 @kstrtouint(ptr noundef %add.ptr22, i32 noundef 0, ptr noundef nonnull @viafb_bpp1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then21.cleanup_crit_edge, label %if.then21.while.cond.backedge_crit_edge

if.then21.while.cond.backedge_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else27:                                        ; preds = %if.else18
  %call28 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(11) @.str.43, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.else36

if.then30:                                        ; preds = %if.else27
  %add.ptr31 = getelementptr i8, ptr %call5222, i32 10
  %call32 = call i32 @kstrtouint(ptr noundef %add.ptr31, i32 noundef 0, ptr noundef nonnull @viafb_bpp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then30.cleanup_crit_edge, label %if.then30.while.cond.backedge_crit_edge

if.then30.while.cond.backedge_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else36:                                        ; preds = %if.else27
  %call37 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(16) @.str.44, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.else45

if.then39:                                        ; preds = %if.else36
  %add.ptr40 = getelementptr i8, ptr %call5222, i32 15
  %call41 = call i32 @kstrtoint(ptr noundef %add.ptr40, i32 noundef 0, ptr noundef nonnull @viafb_refresh1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then39.cleanup_crit_edge, label %if.then39.while.cond.backedge_crit_edge

if.then39.while.cond.backedge_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else45:                                        ; preds = %if.else36
  %call46 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(15) @.str.45, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.else54

if.then48:                                        ; preds = %if.else45
  %add.ptr49 = getelementptr i8, ptr %call5222, i32 14
  %call50 = call i32 @kstrtoint(ptr noundef %add.ptr49, i32 noundef 0, ptr noundef nonnull @viafb_refresh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then48.cleanup_crit_edge, label %if.then48.while.cond.backedge_crit_edge

if.then48.while.cond.backedge_crit_edge:          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else54:                                        ; preds = %if.else45
  %call55 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(22) @.str.46, i32 noundef 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %if.else63

if.then57:                                        ; preds = %if.else54
  %add.ptr58 = getelementptr i8, ptr %call5222, i32 21
  %call59 = call i32 @kstrtoint(ptr noundef %add.ptr58, i32 noundef 0, ptr noundef nonnull @viafb_lcd_dsp_method) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then57.cleanup_crit_edge, label %if.then57.while.cond.backedge_crit_edge

if.then57.while.cond.backedge_crit_edge:          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else63:                                        ; preds = %if.else54
  %call64 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(20) @.str.47, i32 noundef 19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.else72

if.then66:                                        ; preds = %if.else63
  %add.ptr67 = getelementptr i8, ptr %call5222, i32 19
  %call68 = call i32 @kstrtoint(ptr noundef %add.ptr67, i32 noundef 0, ptr noundef nonnull @viafb_lcd_panel_id) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then66.cleanup_crit_edge, label %if.then66.while.cond.backedge_crit_edge

if.then66.while.cond.backedge_crit_edge:          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else72:                                        ; preds = %if.else63
  %call73 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(13) @.str.48, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.else81

if.then75:                                        ; preds = %if.else72
  %add.ptr76 = getelementptr i8, ptr %call5222, i32 12
  %call77 = call i32 @kstrtoint(ptr noundef %add.ptr76, i32 noundef 0, ptr noundef nonnull @viafb_accel) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then75.cleanup_crit_edge, label %if.then75.while.cond.backedge_crit_edge

if.then75.while.cond.backedge_crit_edge:          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else81:                                        ; preds = %if.else72
  %call82 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(15) @.str.49, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %if.else90

if.then84:                                        ; preds = %if.else81
  %add.ptr85 = getelementptr i8, ptr %call5222, i32 14
  %call86 = call i32 @kstrtoint(ptr noundef %add.ptr85, i32 noundef 0, ptr noundef nonnull @viafb_SAMM_ON) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then84.cleanup_crit_edge, label %if.then84.while.cond.backedge_crit_edge

if.then84.while.cond.backedge_crit_edge:          ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else90:                                        ; preds = %if.else81
  %call91 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(18) @.str.50, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.else90.while.cond.backedge.sink.split_crit_edge, label %if.else96

if.else90.while.cond.backedge.sink.split_crit_edge: ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.sink.split

if.else96:                                        ; preds = %if.else90
  %call97 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(31) @.str.51, i32 noundef 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.else105

if.then99:                                        ; preds = %if.else96
  %add.ptr100 = getelementptr i8, ptr %call5222, i32 30
  %call101 = call i32 @kstrtoint(ptr noundef %add.ptr100, i32 noundef 0, ptr noundef nonnull @viafb_display_hardware_layout) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then99.cleanup_crit_edge, label %if.then99.while.cond.backedge_crit_edge

if.then99.while.cond.backedge_crit_edge:          ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else105:                                       ; preds = %if.else96
  %call106 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(19) @.str.52, i32 noundef 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %if.else114

if.then108:                                       ; preds = %if.else105
  %add.ptr109 = getelementptr i8, ptr %call5222, i32 18
  %call110 = call i32 @kstrtoint(ptr noundef %add.ptr109, i32 noundef 0, ptr noundef nonnull @viafb_second_size) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then108.cleanup_crit_edge, label %if.then108.while.cond.backedge_crit_edge

if.then108.while.cond.backedge_crit_edge:         ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else114:                                       ; preds = %if.else105
  %call115 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(25) @.str.53, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then117, label %if.else123

if.then117:                                       ; preds = %if.else114
  %add.ptr118 = getelementptr i8, ptr %call5222, i32 24
  %call119 = call i32 @kstrtoint(ptr noundef %add.ptr118, i32 noundef 0, ptr noundef nonnull @viafb_platform_epia_dvi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.then117.cleanup_crit_edge, label %if.then117.while.cond.backedge_crit_edge

if.then117.while.cond.backedge_crit_edge:         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else123:                                       ; preds = %if.else114
  %call124 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(27) @.str.54, i32 noundef 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then126, label %if.else132

if.then126:                                       ; preds = %if.else123
  %add.ptr127 = getelementptr i8, ptr %call5222, i32 26
  %call128 = call i32 @kstrtoint(ptr noundef %add.ptr127, i32 noundef 0, ptr noundef nonnull @viafb_device_lcd_dualedge) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then126.cleanup_crit_edge, label %if.then126.while.cond.backedge_crit_edge

if.then126.while.cond.backedge_crit_edge:         ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then126.cleanup_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else132:                                       ; preds = %if.else123
  %call133 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(17) @.str.55, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.else141

if.then135:                                       ; preds = %if.else132
  %add.ptr136 = getelementptr i8, ptr %call5222, i32 16
  %call137 = call i32 @kstrtoint(ptr noundef %add.ptr136, i32 noundef 0, ptr noundef nonnull @viafb_bus_width) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then135.cleanup_crit_edge, label %if.then135.while.cond.backedge_crit_edge

if.then135.while.cond.backedge_crit_edge:         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else141:                                       ; preds = %if.else132
  %call142 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(16) @.str.56, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %if.else150

if.then144:                                       ; preds = %if.else141
  %add.ptr145 = getelementptr i8, ptr %call5222, i32 15
  %call146 = call i32 @kstrtoint(ptr noundef %add.ptr145, i32 noundef 0, ptr noundef nonnull @viafb_lcd_mode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then144.cleanup_crit_edge, label %if.then144.while.cond.backedge_crit_edge

if.then144.while.cond.backedge_crit_edge:         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else150:                                       ; preds = %if.else141
  %call151 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(16) @.str.57, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else150.while.cond.backedge.sink.split_crit_edge, label %if.else156

if.else150.while.cond.backedge.sink.split_crit_edge: ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.sink.split

if.else156:                                       ; preds = %if.else150
  %call157 = call i32 @strncmp(ptr noundef nonnull %call5222, ptr noundef nonnull dereferenceable(16) @.str.58, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.else156.while.cond.backedge.sink.split_crit_edge, label %if.else156.while.cond.backedge_crit_edge

if.else156.while.cond.backedge_crit_edge:         ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.else156.while.cond.backedge.sink.split_crit_edge: ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %if.else156.while.cond.backedge.sink.split_crit_edge, %if.else150.while.cond.backedge.sink.split_crit_edge, %if.else90.while.cond.backedge.sink.split_crit_edge, %if.else.while.cond.backedge.sink.split_crit_edge, %if.end8.while.cond.backedge.sink.split_crit_edge
  %.sink = phi i32 [ 12, %if.end8.while.cond.backedge.sink.split_crit_edge ], [ 11, %if.else.while.cond.backedge.sink.split_crit_edge ], [ 17, %if.else90.while.cond.backedge.sink.split_crit_edge ], [ 15, %if.else150.while.cond.backedge.sink.split_crit_edge ], [ 15, %if.else156.while.cond.backedge.sink.split_crit_edge ]
  %viafb_mode1.sink = phi ptr [ @viafb_mode1, %if.end8.while.cond.backedge.sink.split_crit_edge ], [ @viafb_mode, %if.else.while.cond.backedge.sink.split_crit_edge ], [ @viafb_active_dev, %if.else90.while.cond.backedge.sink.split_crit_edge ], [ @viafb_lcd_port, %if.else150.while.cond.backedge.sink.split_crit_edge ], [ @viafb_dvi_port, %if.else156.while.cond.backedge.sink.split_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call5222, i32 %.sink
  %call12 = call noalias ptr @kstrdup(ptr noundef %add.ptr, i32 noundef 3264) #14
  %7 = ptrtoint ptr %viafb_mode1.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %viafb_mode1.sink, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %if.else156.while.cond.backedge_crit_edge, %if.then144.while.cond.backedge_crit_edge, %if.then135.while.cond.backedge_crit_edge, %if.then126.while.cond.backedge_crit_edge, %if.then117.while.cond.backedge_crit_edge, %if.then108.while.cond.backedge_crit_edge, %if.then99.while.cond.backedge_crit_edge, %if.then84.while.cond.backedge_crit_edge, %if.then75.while.cond.backedge_crit_edge, %if.then66.while.cond.backedge_crit_edge, %if.then57.while.cond.backedge_crit_edge, %if.then48.while.cond.backedge_crit_edge, %if.then39.while.cond.backedge_crit_edge, %if.then30.while.cond.backedge_crit_edge, %if.then21.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call5 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.39) #14
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.then144.cleanup_crit_edge, %if.then135.cleanup_crit_edge, %if.then126.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %if.then108.cleanup_crit_edge, %if.then99.cleanup_crit_edge, %if.then84.cleanup_crit_edge, %if.then75.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ -22, %if.then30.cleanup_crit_edge ], [ -22, %if.then39.cleanup_crit_edge ], [ -22, %if.then48.cleanup_crit_edge ], [ -22, %if.then57.cleanup_crit_edge ], [ -22, %if.then66.cleanup_crit_edge ], [ -22, %if.then75.cleanup_crit_edge ], [ -22, %if.then84.cleanup_crit_edge ], [ -22, %if.then99.cleanup_crit_edge ], [ -22, %if.then108.cleanup_crit_edge ], [ -22, %if.then117.cleanup_crit_edge ], [ -22, %if.then126.cleanup_crit_edge ], [ -22, %if.then135.cleanup_crit_edge ], [ -22, %if.then144.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #14
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @parse_active_dev() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 0, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  store i32 0, ptr @viafb_DVI_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 0, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  store i32 0, ptr @viafb_LCD2_ON, align 4
  %0 = load ptr, ptr @viafb_active_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 1, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  store i32 0, ptr @viafb_SAMM_ON, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.59) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 1, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  store i32 1, ptr @viafb_DVI_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 1, ptr @viafb_primary_dev, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %call4 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.60) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 1, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  store i32 1, ptr @viafb_DVI_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 8, ptr @viafb_primary_dev, align 4
  br label %return

if.else7:                                         ; preds = %if.else3
  %call8 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.61) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 1, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 1, ptr @viafb_primary_dev, align 4
  br label %return

if.else11:                                        ; preds = %if.else7
  %call12 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.62) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 1, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 2, ptr @viafb_primary_dev, align 4
  br label %return

if.else15:                                        ; preds = %if.else11
  %call16 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.63) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  store i32 1, ptr @viafb_DVI_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 8, ptr @viafb_primary_dev, align 4
  br label %return

if.else19:                                        ; preds = %if.else15
  %call20 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.64) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  store i32 1, ptr @viafb_DVI_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 2, ptr @viafb_primary_dev, align 4
  br label %return

if.else23:                                        ; preds = %if.else19
  %call24 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(9) @.str.65) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  store i32 1, ptr @viafb_LCD2_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 2, ptr @viafb_primary_dev, align 4
  br label %return

if.else27:                                        ; preds = %if.else23
  %call28 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(9) @.str.66) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  store i32 1, ptr @viafb_LCD2_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  store i32 64, ptr @viafb_primary_dev, align 4
  br label %return

if.else31:                                        ; preds = %if.else27
  %call32 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.67) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  store i32 1, ptr @viafb_CRT_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  store i32 0, ptr @viafb_SAMM_ON, align 4
  br label %return

if.else35:                                        ; preds = %if.else31
  %call36 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.68) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  store i32 1, ptr @viafb_DVI_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  store i32 0, ptr @viafb_SAMM_ON, align 4
  br label %return

if.else39:                                        ; preds = %if.else35
  %call40 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.69) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.else39.return_crit_edge

if.else39.return_crit_edge:                       ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 1, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  store i32 0, ptr @viafb_SAMM_ON, align 4
  br label %return

return:                                           ; preds = %if.then42, %if.else39.return_crit_edge, %if.then38, %if.then34, %if.then30, %if.then26, %if.then22, %if.then18, %if.then14, %if.then10, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.else39.return_crit_edge ], [ 0, %if.then2 ], [ 0, %if.then10 ], [ 0, %if.then18 ], [ 0, %if.then26 ], [ 0, %if.then34 ], [ 0, %if.then42 ], [ 0, %if.then38 ], [ 0, %if.then30 ], [ 0, %if.then22 ], [ 0, %if.then14 ], [ 0, %if.then6 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @viafb_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @via_aux_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @viafb_find_i2c_adapter(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @parse_port(ptr nocapture noundef readonly %opt_str, ptr nocapture noundef writeonly %output_interface) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %opt_str, ptr noundef nonnull dereferenceable(5) @.str.14, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %opt_str, ptr noundef nonnull dereferenceable(5) @.str.15, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end20_crit_edge, label %if.else4

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(ptr noundef %opt_str, ptr noundef nonnull dereferenceable(12) @.str.16, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else4.if.end20_crit_edge, label %if.else8

if.else4.if.end20_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 @strncmp(ptr noundef %opt_str, ptr noundef nonnull dereferenceable(9) @.str.17, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else8.if.end20_crit_edge, label %if.else12

if.else8.if.end20_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 @strncmp(ptr noundef %opt_str, ptr noundef nonnull dereferenceable(8) @.str.18, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %. = select i1 %tobool14.not, i32 5, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.else8.if.end20_crit_edge, %if.else4.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end20_crit_edge ], [ 3, %if.else.if.end20_crit_edge ], [ 6, %if.else4.if.end20_crit_edge ], [ 4, %if.else8.if.end20_crit_edge ], [ %., %if.else12 ]
  %0 = ptrtoint ptr %output_interface to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %output_interface, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @via_aux_get_preferred_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_get_refresh(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_sup_odev_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %chip_info = getelementptr inbounds %struct.viafb_shared, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_info, align 4
  %arrayidx = getelementptr [14 x i32], ptr @supported_odev_map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  tail call void @via_odev_to_seq(ptr noundef %m, i32 noundef %6) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dvp0_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_dvp0_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dvp0_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  %pbuf = alloca ptr, align 4
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #14
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg_val, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %2, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !202

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %4 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !203
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %buffer, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !202

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i53 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %2, %if.end.if.then11.i.i_crit_edge ], [ %2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %2, %res.0.i.i53
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i53)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %sub = add nsw i32 %2, -1
  %arrayidx4 = getelementptr [20 x i8], ptr %buf, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx4, align 1
  %9 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %pbuf, align 4
  %call759 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp8.not60 = icmp eq ptr %call759, null
  br i1 %cmp8.not60, label %if.end3.cleanup_crit_edge, label %if.end3.if.then9_crit_edge

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  br label %if.then9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %for.inc.if.then9_crit_edge, %if.end3.if.then9_crit_edge
  %call762 = phi ptr [ %call7, %for.inc.if.then9_crit_edge ], [ %call759, %if.end3.if.then9_crit_edge ]
  %i.05661 = phi i32 [ %inc, %for.inc.if.then9_crit_edge ], [ 0, %if.end3.if.then9_crit_edge ]
  %call10 = call i32 @kstrtou8(ptr noundef nonnull %call762, i32 noundef 0, ptr noundef nonnull %reg_val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %10 = zext i32 %i.05661 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %i.05661, label %if.end13.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %for.inc.thread
  ]

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_val, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #14, !srcloc !207
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i = and i8 %12, 15
  %and15.i = and i8 %13, -16
  %or.i = or i8 %and15.i, %and1225.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #14, !srcloc !207
  br label %for.inc

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_val, align 1
  %shl = shl i8 %15, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #14, !srcloc !207
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i39 = and i8 %shl, 32
  %and15.i40 = and i8 %16, -33
  %or.i41 = or i8 %and15.i40, %and1225.i39
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i41) #14, !srcloc !207
  %17 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_val, align 1
  %shl17 = shl i8 %18, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #14, !srcloc !207
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i42 = and i8 %shl17, 2
  %and15.i43 = and i8 %19, -3
  %or.i44 = or i8 %and15.i43, %and1225.i42
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i44) #14, !srcloc !207
  br label %for.inc

for.inc.thread:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_val, align 1
  %shl21 = shl i8 %21, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #14, !srcloc !207
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i45 = and i8 %shl21, 16
  %and15.i46 = and i8 %22, -17
  %or.i47 = or i8 %and15.i46, %and1225.i45
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i47) #14, !srcloc !207
  %23 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg_val, align 1
  %shl24 = shl i8 %24, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #14, !srcloc !207
  %25 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i48 = and i8 %shl24, 4
  %and15.i49 = and i8 %25, -5
  %or.i50 = or i8 %and15.i49, %and1225.i48
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i50) #14, !srcloc !207
  br label %cleanup

for.inc:                                          ; preds = %sw.bb14, %sw.bb, %if.end13.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05661, 1
  %call7 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp8.not = icmp eq ptr %call7, null
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.if.then9_crit_edge

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.inc.thread, %if.then9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %count, %for.inc.thread ], [ %count, %if.end3.cleanup_crit_edge ], [ %count, %for.inc.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dvp0_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #14, !srcloc !207
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %1 = lshr i8 %0, 4
  %2 = and i8 %1, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #14, !srcloc !207
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 1
  %or23 = or i8 %5, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #14, !srcloc !207
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #14, !srcloc !207
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 1
  %or1424 = or i8 %11, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #14, !srcloc !207
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %13 = and i8 %12, 15
  %conv20 = zext i8 %13 to i32
  %conv21 = zext i8 %or23 to i32
  %conv22 = zext i8 %or1424 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv22) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dvp1_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_dvp1_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dvp1_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  %pbuf = alloca ptr, align 4
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #14
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg_val, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 20)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %2, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !202

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #14
  %4 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !203
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %buffer, i32 noundef %2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !202

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i38 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %2, %if.end.if.then11.i.i_crit_edge ], [ %2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %2, %res.0.i.i38
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i38)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %sub = add nsw i32 %2, -1
  %arrayidx4 = getelementptr [20 x i8], ptr %buf, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx4, align 1
  %9 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %pbuf, align 4
  %call744 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp8.not45 = icmp eq ptr %call744, null
  br i1 %cmp8.not45, label %if.end3.cleanup_crit_edge, label %if.end3.if.then9_crit_edge

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  br label %if.then9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %for.inc.if.then9_crit_edge, %if.end3.if.then9_crit_edge
  %call747 = phi ptr [ %call7, %for.inc.if.then9_crit_edge ], [ %call744, %if.end3.if.then9_crit_edge ]
  %i.04146 = phi i32 [ %inc, %for.inc.if.then9_crit_edge ], [ 0, %if.end3.if.then9_crit_edge ]
  %call10 = call i32 @kstrtou8(ptr noundef nonnull %call747, i32 noundef 0, ptr noundef nonnull %reg_val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %10 = zext i32 %i.04146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %i.04146, label %if.end13.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %for.inc.thread
  ]

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_val, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #14, !srcloc !207
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i = and i8 %12, 15
  %and15.i = and i8 %13, -16
  %or.i = or i8 %and15.i, %and1225.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #14, !srcloc !207
  br label %for.inc

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_val, align 1
  %shl = shl i8 %15, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 101) #14, !srcloc !207
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i30 = and i8 %shl, 12
  %and15.i31 = and i8 %16, -13
  %or.i32 = or i8 %and15.i31, %and1225.i30
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i32) #14, !srcloc !207
  br label %for.inc

for.inc.thread:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_val, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 101) #14, !srcloc !207
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i33 = and i8 %18, 3
  %and15.i34 = and i8 %19, -4
  %or.i35 = or i8 %and15.i34, %and1225.i33
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i35) #14, !srcloc !207
  br label %cleanup

for.inc:                                          ; preds = %sw.bb14, %sw.bb, %if.end13.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.04146, 1
  %call7 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp8.not = icmp eq ptr %call7, null
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.if.then9_crit_edge

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.inc.thread, %if.then9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %count, %for.inc.thread ], [ %count, %if.end3.cleanup_crit_edge ], [ %count, %for.inc.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dvp1_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #14, !srcloc !207
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %1 = and i8 %0, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 101) #14, !srcloc !207
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %3 = lshr i8 %2, 2
  %4 = and i8 %3, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 101) #14, !srcloc !207
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %6 = and i8 %5, 3
  %conv10 = zext i8 %1 to i32
  %conv11 = zext i8 %4 to i32
  %conv12 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dfph_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_dfph_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dfph_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #14
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val, align 1, !annotation !200
  %call = call i32 @kstrtou8_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %reg_val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg_val, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #14, !srcloc !207
  %3 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i = and i8 %2, 15
  %and15.i = and i8 %3, -16
  %or.i = or i8 %and15.i, %and1225.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #14, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dfph_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #14, !srcloc !207
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %1 = and i8 %0, 15
  %conv2 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %conv2) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dfpl_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_dfpl_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dfpl_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #14
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val, align 1, !annotation !200
  %call = call i32 @kstrtou8_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %reg_val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg_val, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #14, !srcloc !207
  %3 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %and1225.i = and i8 %2, 15
  %and15.i = and i8 %3, -16
  %or.i = or i8 %and15.i, %and1225.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #14, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_dfpl_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #14, !srcloc !207
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  %1 = and i8 %0, 15
  %conv2 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %conv2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_vt1636_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_vt1636_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_vt1636_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %buf = alloca [30 x i8], align 1
  %pbuf = alloca ptr, align 4
  %reg_val = alloca %struct.IODATA, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg_val) #14
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %reg_val, align 4, !annotation !200
  %2 = getelementptr inbounds %struct.IODATA, ptr %reg_val, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !200
  %4 = getelementptr inbounds %struct.IODATA, ptr %reg_val, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 2, !annotation !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 30)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %6, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !202

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #14
  %8 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !203
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %buffer, i32 noundef %6) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !202

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i87 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %6, %if.end.if.then11.i.i_crit_edge ], [ %6, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %6, %res.0.i.i87
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i87)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %sub = add nsw i32 %6, -1
  %arrayidx4 = getelementptr [30 x i8], ptr %buf, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx4, align 1
  %13 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %pbuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %14 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_info, align 4
  %lvds_chip_info = getelementptr inbounds %struct.chip_information, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %lvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cond68 = icmp eq i32 %18, 14
  br i1 %cond68, label %for.body.preheader, label %if.end3.sw.epilog26_crit_edge

if.end3.sw.epilog26_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog26

for.body.preheader:                               ; preds = %if.end3
  %call7 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp8.not = icmp eq ptr %call7, null
  br i1 %cmp8.not, label %for.body.preheader.sw.epilog26_crit_edge, label %if.then9

for.body.preheader.sw.epilog26_crit_edge:         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog26

if.then9:                                         ; preds = %for.body.preheader
  %call10 = call i32 @kstrtou8(ptr noundef nonnull %call7, i32 noundef 0, ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %for.inc

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %if.then9
  %19 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %reg_val, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 15, ptr %2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %21 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %lvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lvds_setting_info, align 4
  %chip_info15 = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 11
  %24 = ptrtoint ptr %chip_info15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info15, align 4
  %lvds_chip_info16 = getelementptr inbounds %struct.chip_information, ptr %25, i32 0, i32 4
  %reg_val.coerce.sroa.0.0.copyload = load i24, ptr %reg_val, align 4
  %reg_val.coerce.sroa.0.0.insert.ext = zext i24 %reg_val.coerce.sroa.0.0.copyload to i32
  %reg_val.coerce.sroa.0.0.insert.shift = shl nuw i32 %reg_val.coerce.sroa.0.0.insert.ext, 8
  %.fca.0.insert72 = insertvalue [1 x i32] poison, i32 %reg_val.coerce.sroa.0.0.insert.shift, 0
  call void @viafb_gpio_i2c_write_mask_lvds(ptr noundef %23, ptr noundef %lvds_chip_info16, [1 x i32] %.fca.0.insert72) #14
  %call7.1 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp8.not.1 = icmp eq ptr %call7.1, null
  br i1 %cmp8.not.1, label %for.inc.sw.epilog26_crit_edge, label %if.then9.1

for.inc.sw.epilog26_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog26

if.then9.1:                                       ; preds = %for.inc
  %call10.1 = call i32 @kstrtou8(ptr noundef nonnull %call7.1, i32 noundef 0, ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp slt i32 %call10.1, 0
  br i1 %cmp11.1, label %if.then9.1.cleanup_crit_edge, label %for.inc.1

if.then9.1.cleanup_crit_edge:                     ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1:                                        ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 9, ptr %reg_val, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 31, ptr %2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %28 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info20.1 = getelementptr inbounds %struct.viafb_par, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %lvds_setting_info20.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lvds_setting_info20.1, align 4
  %chip_info21.1 = getelementptr inbounds %struct.viafb_par, ptr %28, i32 0, i32 11
  %31 = ptrtoint ptr %chip_info21.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip_info21.1, align 4
  %lvds_chip_info22.1 = getelementptr inbounds %struct.chip_information, ptr %32, i32 0, i32 4
  %reg_val.coerce23.sroa.0.0.copyload.1 = load i24, ptr %reg_val, align 4
  %reg_val.coerce23.sroa.0.0.insert.ext.1 = zext i24 %reg_val.coerce23.sroa.0.0.copyload.1 to i32
  %reg_val.coerce23.sroa.0.0.insert.shift.1 = shl nuw i32 %reg_val.coerce23.sroa.0.0.insert.ext.1, 8
  %.fca.0.insert71.1 = insertvalue [1 x i32] poison, i32 %reg_val.coerce23.sroa.0.0.insert.shift.1, 0
  call void @viafb_gpio_i2c_write_mask_lvds(ptr noundef %30, ptr noundef %lvds_chip_info22.1, [1 x i32] %.fca.0.insert71.1) #14
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %for.inc.1, %for.inc.sw.epilog26_crit_edge, %for.body.preheader.sw.epilog26_crit_edge, %if.end3.sw.epilog26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %33 = load ptr, ptr @viaparinfo, align 4
  %chip_info27 = getelementptr inbounds %struct.viafb_par, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %chip_info27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_info27, align 4
  %lvds_chip_info2 = getelementptr inbounds %struct.chip_information, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %lvds_chip_info2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lvds_chip_info2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %37)
  %cond69 = icmp eq i32 %37, 14
  br i1 %cond69, label %for.body32.preheader, label %sw.epilog26.cleanup_crit_edge

sw.epilog26.cleanup_crit_edge:                    ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body32.preheader:                             ; preds = %sw.epilog26
  %call33 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp34.not = icmp eq ptr %call33, null
  br i1 %cmp34.not, label %for.body32.preheader.cleanup_crit_edge, label %if.then35

for.body32.preheader.cleanup_crit_edge:           ; preds = %for.body32.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then35:                                        ; preds = %for.body32.preheader
  %call37 = call i32 @kstrtou8(ptr noundef nonnull %call33, i32 noundef 0, ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then35.cleanup_crit_edge, label %for.inc58

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc58:                                        ; preds = %if.then35
  %38 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %reg_val, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 15, ptr %2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %40 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_par, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %lvds_setting_info2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lvds_setting_info2, align 4
  %chip_info44 = getelementptr inbounds %struct.viafb_par, ptr %40, i32 0, i32 11
  %43 = ptrtoint ptr %chip_info44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip_info44, align 4
  %lvds_chip_info245 = getelementptr inbounds %struct.chip_information, ptr %44, i32 0, i32 5
  %reg_val.coerce46.sroa.0.0.copyload = load i24, ptr %reg_val, align 4
  %reg_val.coerce46.sroa.0.0.insert.ext = zext i24 %reg_val.coerce46.sroa.0.0.copyload to i32
  %reg_val.coerce46.sroa.0.0.insert.shift = shl nuw i32 %reg_val.coerce46.sroa.0.0.insert.ext, 8
  %.fca.0.insert70 = insertvalue [1 x i32] poison, i32 %reg_val.coerce46.sroa.0.0.insert.shift, 0
  call void @viafb_gpio_i2c_write_mask_lvds(ptr noundef %42, ptr noundef %lvds_chip_info245, [1 x i32] %.fca.0.insert70) #14
  %call33.1 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.32) #14
  %cmp34.not.1 = icmp eq ptr %call33.1, null
  br i1 %cmp34.not.1, label %for.inc58.cleanup_crit_edge, label %if.then35.1

for.inc58.cleanup_crit_edge:                      ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then35.1:                                      ; preds = %for.inc58
  %call37.1 = call i32 @kstrtou8(ptr noundef nonnull %call33.1, i32 noundef 0, ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %cmp38.1 = icmp slt i32 %call37.1, 0
  br i1 %cmp38.1, label %if.then35.1.cleanup_crit_edge, label %for.inc58.1

if.then35.1.cleanup_crit_edge:                    ; preds = %if.then35.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc58.1:                                      ; preds = %if.then35.1
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 9, ptr %reg_val, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 31, ptr %2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %47 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info250.1 = getelementptr inbounds %struct.viafb_par, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %lvds_setting_info250.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lvds_setting_info250.1, align 4
  %chip_info51.1 = getelementptr inbounds %struct.viafb_par, ptr %47, i32 0, i32 11
  %50 = ptrtoint ptr %chip_info51.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip_info51.1, align 4
  %lvds_chip_info252.1 = getelementptr inbounds %struct.chip_information, ptr %51, i32 0, i32 5
  %reg_val.coerce53.sroa.0.0.copyload.1 = load i24, ptr %reg_val, align 4
  %reg_val.coerce53.sroa.0.0.insert.ext.1 = zext i24 %reg_val.coerce53.sroa.0.0.copyload.1 to i32
  %reg_val.coerce53.sroa.0.0.insert.shift.1 = shl nuw i32 %reg_val.coerce53.sroa.0.0.insert.ext.1, 8
  %.fca.0.insert.1 = insertvalue [1 x i32] poison, i32 %reg_val.coerce53.sroa.0.0.insert.shift.1, 0
  call void @viafb_gpio_i2c_write_mask_lvds(ptr noundef %49, ptr noundef %lvds_chip_info252.1, [1 x i32] %.fca.0.insert.1) #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc58.1, %if.then35.1.cleanup_crit_edge, %for.inc58.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %for.body32.preheader.cleanup_crit_edge, %sw.epilog26.cleanup_crit_edge, %if.then9.1.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %sw.epilog26.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.then35.cleanup_crit_edge ], [ %count, %for.body32.preheader.cleanup_crit_edge ], [ %count, %for.inc58.cleanup_crit_edge ], [ -22, %if.then35.1.cleanup_crit_edge ], [ %count, %for.inc58.1 ], [ -22, %if.then9.1.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg_val) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_vt1636_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %lvds_chip_info = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %lvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %4)
  %cond = icmp eq i32 %4, 14
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lvds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 9
  %5 = ptrtoint ptr %lvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lvds_setting_info, align 4
  %call = tail call zeroext i8 @viafb_gpio_i2c_read_lvds(ptr noundef %6, ptr noundef %lvds_chip_info, i8 noundef zeroext 8) #14
  %7 = and i8 %call, 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %8 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info4 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %lvds_setting_info4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lvds_setting_info4, align 4
  %chip_info5 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %chip_info5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info5, align 4
  %lvds_chip_info6 = getelementptr inbounds %struct.chip_information, ptr %12, i32 0, i32 4
  %call7 = tail call zeroext i8 @viafb_gpio_i2c_read_lvds(ptr noundef %10, ptr noundef %lvds_chip_info6, i8 noundef zeroext 9) #14
  %13 = and i8 %call7, 31
  %conv11 = zext i8 %7 to i32
  %conv12 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %conv11, i32 noundef %conv12) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %14 = load ptr, ptr @viaparinfo, align 4
  %chip_info13 = getelementptr inbounds %struct.viafb_par, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %chip_info13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_info13, align 4
  %lvds_chip_info214 = getelementptr inbounds %struct.chip_information, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %lvds_chip_info214 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lvds_chip_info214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cond34 = icmp eq i32 %18, 14
  br i1 %cond34, label %sw.bb16, label %sw.epilog.sw.epilog33_crit_edge

sw.epilog.sw.epilog33_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog33

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_par, ptr %14, i32 0, i32 10
  %19 = ptrtoint ptr %lvds_setting_info2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lvds_setting_info2, align 4
  %call19 = tail call zeroext i8 @viafb_gpio_i2c_read_lvds(ptr noundef %20, ptr noundef %lvds_chip_info214, i8 noundef zeroext 8) #14
  %21 = and i8 %call19, 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %22 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info223 = getelementptr inbounds %struct.viafb_par, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %lvds_setting_info223 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lvds_setting_info223, align 4
  %chip_info24 = getelementptr inbounds %struct.viafb_par, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %chip_info24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_info24, align 4
  %lvds_chip_info225 = getelementptr inbounds %struct.chip_information, ptr %26, i32 0, i32 5
  %call26 = tail call zeroext i8 @viafb_gpio_i2c_read_lvds(ptr noundef %24, ptr noundef %lvds_chip_info225, i8 noundef zeroext 9) #14
  %27 = and i8 %call26, 31
  %conv30 = zext i8 %21 to i32
  %conv31 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %conv30, i32 noundef %conv31) #14
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb16, %sw.epilog.sw.epilog33_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @viafb_gpio_i2c_read_lvds(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_gpio_i2c_write_mask_lvds(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_odev_to_seq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_iga1_odev_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_iga1_odev_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_iga1_odev_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %dev_new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_new) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %dev_new to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dev_new, align 4
  %call = call fastcc i32 @odev_update(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %dev_new)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp.not = icmp eq i32 %call, %count
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %dev_new to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_new, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %4, %neg
  %neg1 = xor i32 %4, -1
  %and2 = and i32 %7, %neg1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %8 = load ptr, ptr @viaparinfo, align 4
  %shared3 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %shared3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %10, align 4
  %12 = load ptr, ptr @viaparinfo, align 4
  %shared6 = getelementptr inbounds %struct.viafb_par, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %shared6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shared6, align 4
  %iga2_devices = getelementptr inbounds %struct.viafb_shared, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %iga2_devices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iga2_devices, align 4
  %and7 = and i32 %16, %neg
  store i32 %and7, ptr %iga2_devices, align 4
  tail call void @via_set_state(i32 noundef %and, i8 noundef zeroext 3) #14
  tail call void @via_set_source(i32 noundef %7, i8 noundef zeroext 1) #14
  tail call void @via_set_state(i32 noundef %and2, i8 noundef zeroext 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_new) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_iga1_odev_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  tail call void @via_odev_to_seq(ptr noundef %m, i32 noundef %4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @odev_update(ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef %odev) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #14
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %ptr, align 4
  %2 = add i32 %count, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %2)
  %3 = icmp ult i32 %2, -63
  br i1 %3, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !202

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #14
  %5 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !203
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %buffer, i32 noundef %count) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !202

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i55 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i55
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i55)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %arrayidx4 = getelementptr [64 x i8], ptr %buf, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %11, label %if.end3.if.end19_crit_edge [
    i8 45, label %if.end3.if.then18_crit_edge
    i8 43, label %if.end3.if.then18_crit_edge58
  ]

if.end3.if.then18_crit_edge58:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.end3.if.then18_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then18:                                        ; preds = %if.end3.if.then18_crit_edge, %if.end3.if.then18_crit_edge58
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptr, align 4
  %incdec.ptr = getelementptr i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end3.if.end19_crit_edge
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr, align 4
  %call20 = call i32 @via_parse_odev(ptr noundef %16, ptr noundef nonnull %ptr) #14
  %17 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptr, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp22 = icmp eq i8 %20, 10
  br i1 %cmp22, label %if.then24, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr25 = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr25, ptr %ptr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %22 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptr, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp28.not = icmp eq i8 %25, 0
  br i1 %cmp28.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %26 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %11, label %if.else36 [
    i8 43, label %if.then33
    i8 45, label %if.then35
  ]

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %odev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %odev, align 4
  %or = or i32 %28, %call20
  store i32 %or, ptr %odev, align 4
  br label %cleanup

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %call20, -1
  %29 = ptrtoint ptr %odev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %odev, align 4
  %and = and i32 %30, %neg
  store i32 %and, ptr %odev, align 4
  br label %cleanup

if.else36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %odev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call20, ptr %odev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then35, %if.then33, %if.end26.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ %count, %if.then35 ], [ %count, %if.else36 ], [ %count, %if.then33 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_state(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_source(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_parse_odev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_iga2_odev_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @viafb_iga2_odev_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_iga2_odev_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %dev_new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_new) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %iga2_devices = getelementptr inbounds %struct.viafb_shared, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %iga2_devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iga2_devices, align 4
  %5 = ptrtoint ptr %dev_new to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dev_new, align 4
  %call = call fastcc i32 @odev_update(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %dev_new)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp.not = icmp eq i32 %call, %count
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %dev_new to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_new, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %4, %neg
  %neg1 = xor i32 %4, -1
  %and2 = and i32 %7, %neg1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %8 = load ptr, ptr @viaparinfo, align 4
  %shared3 = getelementptr inbounds %struct.viafb_par, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %shared3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared3, align 4
  %iga2_devices4 = getelementptr inbounds %struct.viafb_shared, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %iga2_devices4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %iga2_devices4, align 4
  %12 = load ptr, ptr %shared3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and7 = and i32 %14, %neg
  store i32 %and7, ptr %12, align 4
  tail call void @via_set_state(i32 noundef %and, i8 noundef zeroext 3) #14
  tail call void @via_set_source(i32 noundef %7, i8 noundef zeroext 2) #14
  tail call void @via_set_state(i32 noundef %and2, i8 noundef zeroext 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_new) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_iga2_odev_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %iga2_devices = getelementptr inbounds %struct.viafb_shared, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %iga2_devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iga2_devices, align 4
  tail call void @via_odev_to_seq(ptr noundef %m, i32 noundef %4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_suspend(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %0 = load ptr, ptr @viafbinfo, align 4
  tail call void @fb_set_suspend(ptr noundef %0, i32 noundef 1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %1 = load ptr, ptr @viafbinfo, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.viafb_sync.exit_crit_edge

entry.viafb_sync.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %viafb_sync.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @viafb_wait_engine_idle(ptr noundef %1) #14
  br label %viafb_sync.exit

viafb_sync.exit:                                  ; preds = %if.then.i, %entry.viafb_sync.exit_crit_edge
  tail call void @console_unlock() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_resume(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %engine_mmio, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @viafb_reset_engine(ptr noundef %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %7 = load ptr, ptr @viafbinfo, align 4
  %call = tail call i32 @viafb_set_par(ptr noundef %7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %8 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %9 = load ptr, ptr @viafbinfo1, align 4
  %call3 = tail call i32 @viafb_set_par(ptr noundef %9)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %10 = load ptr, ptr @viafbinfo, align 4
  tail call void @fb_set_suspend(ptr noundef %10, i32 noundef 0) #14
  tail call void @console_unlock() #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_sync(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @viafb_wait_engine_idle(ptr noundef %info) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_wait_engine_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_reset_engine(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_set_par(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i = icmp eq i32 %3, 8
  %cond.i = select i1 %cmp.i, i32 3, i32 2
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %visual.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %6, %3
  %div7.i = lshr i32 %mul.i, 3
  %add.i = add nuw nsw i32 %div7.i, 7
  %and.i = and i32 %add.i, 1073741816
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %7 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i, ptr %line_length.i, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call = tail call i32 @fb_get_color_depth(ptr noundef %var, ptr noundef %fix) #14
  %conv = trunc i32 %call to i8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %9 = load ptr, ptr @viafbinfo, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var1, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  tail call void @viafb_update_device_setting(i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %16 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %17 = load ptr, ptr @viafbinfo1, align 4
  %var4 = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %var4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %var4, align 4
  %yres7 = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %yres7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres7, align 4
  %bits_per_pixel9 = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %bits_per_pixel9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits_per_pixel9, align 4
  tail call void @viafb_update_device_setting(i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef 1) #14
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %24 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp = icmp eq i32 %24, 1
  br i1 %cmp, label %if.then11, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_xres to i32))
  %25 = load i32, ptr @viafb_second_xres, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_yres to i32))
  %26 = load i32, ptr @viafb_second_yres, align 4
  %27 = load i32, ptr @viafb_bpp1, align 4
  tail call void @viafb_update_device_setting(i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef 1) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else.if.end13_crit_edge, %if.then
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %28 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %left_margin.i, align 4
  %30 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %var, align 4
  %add.i49 = add i32 %31, %29
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %32 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %right_margin.i, align 4
  %add1.i = add i32 %add.i49, %33
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %34 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hsync_len.i, align 4
  %add2.i = add i32 %add1.i, %35
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %36 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %upper_margin.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres.i, align 4
  %add3.i = add i32 %39, %37
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %40 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lower_margin.i, align 4
  %add4.i = add i32 %add3.i, %41
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %42 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vsync_len.i, align 4
  %add5.i = add i32 %add4.i, %43
  %pixclock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %44 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixclock.i, align 4
  %div.i = udiv i32 1000000000, %45
  %mul.i50 = mul i32 %div.i, 1000
  %mul6.i = mul i32 %add5.i, %add2.i
  %div7.i51 = udiv i32 %mul.i50, %mul6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %46 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool16.not = icmp eq i32 %46, 0
  br i1 %tobool16.not, label %if.end13.if.else22_crit_edge, label %land.lhs.true

if.end13.if.else22_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else22

land.lhs.true:                                    ; preds = %if.end13
  %iga_path = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %iga_path to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iga_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp17 = icmp eq i32 %48, 2
  br i1 %cmp17, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.if.else22_crit_edge

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else22

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %if.end13.if.else22_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %land.lhs.true.if.end25_crit_edge
  %viafb_bpp.sink = phi ptr [ @viafb_bpp, %if.else22 ], [ @viafb_bpp1, %land.lhs.true.if.end25_crit_edge ]
  %viafb_refresh.sink = phi ptr [ @viafb_refresh, %if.else22 ], [ @viafb_refresh1, %land.lhs.true.if.end25_crit_edge ]
  %49 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bits_per_pixel.i, align 4
  %51 = ptrtoint ptr %viafb_bpp.sink to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %viafb_bpp.sink, align 4
  %52 = ptrtoint ptr %viafb_refresh.sink to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div7.i51, ptr %viafb_refresh.sink, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %53 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %accel_flags, align 4
  %flags31 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %55 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags31, align 4
  %and29 = and i32 %56, -3
  %and = shl i32 %54, 1
  %57 = and i32 %and, 2
  %58 = or i32 %57, %and29
  %or.sink = xor i32 %58, 2
  store i32 %or.sink, ptr %flags31, align 4
  %call33 = tail call i32 @viafb_setmode() #14
  %59 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %par, align 4
  %vram_addr1.i = getelementptr inbounds %struct.viafb_par, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %vram_addr1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vram_addr1.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %63 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %yoffset.i, align 4
  %65 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %line_length.i, align 4
  %mul.i53 = mul i32 %66, %64
  %add.i54 = add i32 %mul.i53, %62
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %67 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xoffset.i, align 4
  %69 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bits_per_pixel.i, align 4
  %mul3.i = mul i32 %70, %68
  %div15.i = lshr i32 %mul3.i, 3
  %add4.i56 = add i32 %add.i54, %div15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %71 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @via_set_primary_address(i32 noundef %add4.i56) #14
  tail call void @via_set_secondary_address(i32 noundef %add4.i56) #14
  br label %viafb_pan_display.exit

if.else.i:                                        ; preds = %if.end25
  %iga_path.i = getelementptr inbounds %struct.viafb_par, ptr %60, i32 0, i32 6
  %72 = ptrtoint ptr %iga_path.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iga_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i57 = icmp eq i32 %73, 1
  br i1 %cmp.i57, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @via_set_primary_address(i32 noundef %add4.i56) #14
  br label %viafb_pan_display.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @via_set_secondary_address(i32 noundef %add4.i56) #14
  br label %viafb_pan_display.exit

viafb_pan_display.exit:                           ; preds = %if.else6.i, %if.then5.i, %if.then.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_update_device_setting(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_setmode() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %vram_addr1 = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vram_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vram_addr1, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line_length, align 4
  %mul = mul i32 %7, %5
  %add = add i32 %mul, %3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %mul3 = mul i32 %11, %9
  %div15 = lshr i32 %mul3, 3
  %add4 = add i32 %add, %div15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %12 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @via_set_primary_address(i32 noundef %add4) #14
  tail call void @via_set_secondary_address(i32 noundef %add4) #14
  br label %if.end7

if.else:                                          ; preds = %entry
  %iga_path = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %iga_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iga_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @via_set_primary_address(i32 noundef %add4) #14
  br label %if.end7

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @via_set_secondary_address(i32 noundef %add4) #14
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_primary_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_secondary_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_aux_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @viafb_open(ptr nocapture noundef readnone %info, i32 noundef %user) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @viafb_release(ptr nocapture noundef readnone %info, i32 noundef %user) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp1 = icmp ugt i32 %regno, 255
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %4 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %iga_path = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %iga_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iga_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %conv = trunc i32 %regno to i8
  %shr = lshr i32 %red, 8
  %conv5 = trunc i32 %shr to i8
  %shr6 = lshr i32 %green, 8
  %conv7 = trunc i32 %shr6 to i8
  %shr8 = lshr i32 %blue, 8
  %conv9 = trunc i32 %shr8 to i8
  tail call void @viafb_set_primary_color_register(i8 noundef zeroext %conv, i8 noundef zeroext %conv5, i8 noundef zeroext %conv7, i8 noundef zeroext %conv9) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %lor.lhs.false.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %7 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end10.if.then16_crit_edge, label %lor.lhs.false12

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

lor.lhs.false12:                                  ; preds = %if.end10
  %iga_path13 = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %iga_path13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iga_path13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp14 = icmp eq i32 %9, 2
  br i1 %cmp14, label %lor.lhs.false12.if.then16_crit_edge, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  %conv17 = trunc i32 %regno to i8
  %shr18 = lshr i32 %red, 8
  %conv19 = trunc i32 %shr18 to i8
  %shr20 = lshr i32 %green, 8
  %conv21 = trunc i32 %shr20 to i8
  %shr22 = lshr i32 %blue, 8
  %conv23 = trunc i32 %shr22 to i8
  tail call void @viafb_set_secondary_color_register(i8 noundef zeroext %conv17, i8 noundef zeroext %conv19, i8 noundef zeroext %conv21, i8 noundef zeroext %conv23) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp25 = icmp ugt i32 %regno, 15
  br i1 %cmp25, label %if.else.cleanup_crit_edge, label %if.end28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %red29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %sub = sub i32 16, %11
  %shr30 = lshr i32 %red, %sub
  %12 = ptrtoint ptr %red29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %red29, align 4
  %shl = shl i32 %shr30, %13
  %blue34 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length35 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %14 = ptrtoint ptr %length35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length35, align 4
  %sub36 = sub i32 16, %15
  %shr37 = lshr i32 %blue, %sub36
  %16 = ptrtoint ptr %blue34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blue34, align 4
  %shl41 = shl i32 %shr37, %17
  %green43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length44 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %18 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length44, align 4
  %sub45 = sub i32 16, %19
  %shr46 = lshr i32 %green, %sub45
  %20 = ptrtoint ptr %green43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %green43, align 4
  %shl50 = shl i32 %shr46, %21
  %or = or i32 %shl41, %shl
  %or51 = or i32 %or, %shl50
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %22 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %23, i32 %regno
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or51, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.else.cleanup_crit_edge, %if.then16, %lor.lhs.false12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %lor.lhs.false12.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_blank(i32 noundef %blank_mode, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %blank_mode)
  %0 = icmp ult i32 %blank_mode, 5
  br i1 %0, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %blank_mode to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.viafb_blank, i32 0, i32 %blank_mode
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  tail call void @via_set_state(i32 noundef 16, i8 noundef zeroext %switch.load) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @viafb_fillrect(ptr noundef %info, ptr noundef %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %shared1 = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %hw_bitblt = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %hw_bitblt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_bitblt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %14 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %16 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %17
  br label %if.end10

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %color9 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %fg_color.0.in = phi ptr [ %arrayidx, %if.then8 ], [ %color9, %if.else ]
  %18 = ptrtoint ptr %fg_color.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %fg_color.0 = load i32, ptr %fg_color.0.in, align 4
  %rop11 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %19 = ptrtoint ptr %rop11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rop11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp12 = icmp eq i32 %20, 1
  %. = select i1 %cmp12, i8 90, i8 -16
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %engine_mmio, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel, align 4
  %conv = trunc i32 %26 to i8
  %vram_addr = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vram_addr, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %29 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line_length, align 4
  %31 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rect, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %33 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dy, align 4
  %call = tail call i32 %7(ptr noundef %24, i8 noundef zeroext 3, i32 noundef %9, i32 noundef %11, i8 noundef zeroext %conv, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %fg_color.0, i32 noundef 0, i8 noundef zeroext %.) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end10.cleanup_crit_edge, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end10.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @viafb_copyarea(ptr noundef %info, ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %shared1 = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %hw_bitblt = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %hw_bitblt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_bitblt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %engine_mmio, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  %conv = trunc i32 %17 to i8
  %vram_addr = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vram_addr, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line_length, align 4
  %22 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %area, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %24 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dy, align 4
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %26 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sx, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %28 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sy, align 4
  %call = tail call i32 %7(ptr noundef %15, i8 noundef zeroext 1, i32 noundef %9, i32 noundef %11, i8 noundef zeroext %conv, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef null, i32 noundef %19, i32 noundef %21, i32 noundef %27, i32 noundef %29, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end7.cleanup_crit_edge, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end7.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @viafb_imageblit(ptr noundef %info, ptr noundef %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %shared1 = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %hw_bitblt = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %hw_bitblt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_bitblt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not = icmp eq i8 %9, 1
  br i1 %cmp.not, label %if.then15, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp9.not = icmp eq i8 %9, %11
  br i1 %cmp9.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then15:                                        ; preds = %lor.lhs.false3
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %14 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pseudo_palette, align 4
  %fg_color19 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %16 = ptrtoint ptr %fg_color19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fg_color19, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %17
  %bg_color21 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %18 = ptrtoint ptr %bg_color21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bg_color21, align 4
  %arrayidx22 = getelementptr i32, ptr %15, i32 %19
  br label %if.end27.sink.split

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %fg_color23 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color24 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else, %if.then18
  %arrayidx22.sink = phi ptr [ %arrayidx22, %if.then18 ], [ %bg_color24, %if.else ]
  %fg_color.0.ph.in = phi ptr [ %arrayidx, %if.then18 ], [ %fg_color23, %if.else ]
  %20 = ptrtoint ptr %fg_color.0.ph.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %fg_color.0.ph = load i32, ptr %fg_color.0.ph.in, align 4
  %21 = ptrtoint ptr %arrayidx22.sink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22.sink, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge
  %fg_color.0 = phi i32 [ 0, %land.lhs.true.if.end27_crit_edge ], [ %fg_color.0.ph, %if.end27.sink.split ]
  %bg_color.0 = phi i32 [ 0, %land.lhs.true.if.end27_crit_edge ], [ %22, %if.end27.sink.split ]
  %op.0 = phi i8 [ 1, %land.lhs.true.if.end27_crit_edge ], [ 2, %if.end27.sink.split ]
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %engine_mmio, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %31 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits_per_pixel, align 4
  %conv29 = trunc i32 %32 to i8
  %vram_addr = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vram_addr, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %35 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %line_length, align 4
  %37 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %image, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %39 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dy, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %call = tail call i32 %7(ptr noundef %26, i8 noundef zeroext %op.0, i32 noundef %28, i32 noundef %30, i8 noundef zeroext %conv29, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, ptr noundef %42, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %fg_color.0, i32 noundef %bg_color.0, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end27.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_cursor(ptr noundef %info, ptr nocapture noundef readonly %cursor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 4
  %vdev = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine_mmio, align 4
  %chip_info = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_info, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup311_crit_edge

entry.cleanup311_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup311

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %12 = load ptr, ptr @viafbinfo, align 4
  %cmp.not = icmp eq ptr %12, %info
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup311_crit_edge

lor.lhs.false.cleanup311_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup311

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.lor.lhs.false4_crit_edge

if.end.lor.lhs.false4_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false4

land.lhs.true:                                    ; preds = %if.end
  %iga_path = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %iga_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iga_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp3 = icmp eq i32 %14, 2
  br i1 %cmp3, label %land.lhs.true.cleanup311_crit_edge, label %land.lhs.true.lor.lhs.false4_crit_edge

land.lhs.true.lor.lhs.false4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false4

land.lhs.true.cleanup311_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup311

lor.lhs.false4:                                   ; preds = %land.lhs.true.lor.lhs.false4_crit_edge, %if.end.lor.lhs.false4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %15 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false4.cleanup311_crit_edge

lor.lhs.false4.cleanup311_crit_edge:              ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup311

if.end7:                                          ; preds = %lor.lhs.false4
  tail call void @viafb_show_hw_cursor(ptr noundef %info, i32 noundef 1) #14
  %16 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cursor, align 4
  %18 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool9.not = icmp eq i16 %18, 0
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %hot = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %19 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hot, align 4
  %conv11 = zext i16 %20 to i32
  %shl = shl nuw i32 %conv11, 16
  %y = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %y, align 2
  %conv13 = zext i16 %22 to i32
  %add = or i32 %shl, %conv13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  tail call void @arm_heavy_mb() #14
  %23 = tail call i32 @llvm.bswap.i32(i32 %add)
  %add.ptr = getelementptr i8, ptr %7, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #14, !srcloc !214
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %24 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cursor, align 4
  %26 = and i16 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool18.not = icmp eq i16 %26, 0
  br i1 %tobool18.not, label %if.end14.if.end29_crit_edge, label %if.then19

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %image = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yoffset, align 4
  %sub = sub i32 %28, %30
  %31 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %image, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %33 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xoffset, align 4
  %sub22 = sub i32 %32, %34
  %and23 = and i32 %sub, 65535
  %shl24 = shl i32 %sub22, 16
  %or = or i32 %shl24, %and23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr28 = getelementptr i8, ptr %7, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %35) #14, !srcloc !214
  br label %if.end29

if.end29:                                         ; preds = %if.then19, %if.end14.if.end29_crit_edge
  %width = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %37)
  %cmp31 = icmp ult i32 %37, 33
  br i1 %cmp31, label %land.lhs.true33, label %if.else

land.lhs.true33:                                  ; preds = %if.end29
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %39)
  %cmp35 = icmp ult i32 %39, 33
  br i1 %cmp35, label %land.lhs.true33.if.end57_crit_edge, label %land.lhs.true33.land.lhs.true42_crit_edge

land.lhs.true33.land.lhs.true42_crit_edge:        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true42

land.lhs.true33.if.end57_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %37)
  %cmp40 = icmp ult i32 %37, 65
  br i1 %cmp40, label %if.else.land.lhs.true42_crit_edge, label %if.else.do.end51_crit_edge

if.else.do.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

if.else.land.lhs.true42_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.else.land.lhs.true42_crit_edge, %land.lhs.true33.land.lhs.true42_crit_edge
  %height44 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %height44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %41)
  %cmp45 = icmp ult i32 %41, 65
  br i1 %cmp45, label %land.lhs.true42.if.end57_crit_edge, label %land.lhs.true42.do.end51_crit_edge

land.lhs.true42.do.end51_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

land.lhs.true42.if.end57_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

do.end51:                                         ; preds = %land.lhs.true42.do.end51_crit_edge, %if.else.do.end51_crit_edge
  %height55 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %42 = ptrtoint ptr %height55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height55, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %37, i32 noundef %43) #17
  br label %cleanup311

if.end57:                                         ; preds = %land.lhs.true42.if.end57_crit_edge, %land.lhs.true33.if.end57_crit_edge
  %cmp198 = phi i1 [ true, %land.lhs.true33.if.end57_crit_edge ], [ false, %land.lhs.true42.if.end57_crit_edge ]
  %44 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cursor, align 4
  %46 = and i16 %45, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool61.not = icmp eq i16 %46, 0
  br i1 %tobool61.not, label %if.end57.if.end78_crit_edge, label %if.then62

if.end57.if.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr63 = getelementptr i8, ptr %7, i32 720
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #14, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %48 = and i32 %47, -33554433
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %masksel = select i1 %cmp198, i32 2, i32 0
  %temp.0 = or i32 %49, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void @arm_heavy_mb() #14
  %50 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %50) #14, !srcloc !214
  br label %if.end78

if.end78:                                         ; preds = %if.then62, %if.end57.if.end78_crit_edge
  %51 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cursor, align 4
  %53 = and i16 %52, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool82.not = icmp eq i16 %53, 0
  br i1 %tobool82.not, label %if.end78.if.end182_crit_edge, label %if.then83

if.end78.if.end182_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then83:                                        ; preds = %if.end78
  %fg_color85 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %54 = ptrtoint ptr %fg_color85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fg_color85, align 4
  %bg_color87 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %56 = ptrtoint ptr %bg_color87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bg_color87, align 4
  %58 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %9, label %if.else134 [
    i32 6, label %if.then83.if.then99_crit_edge
    i32 11, label %if.then83.if.then99_crit_edge485
    i32 12, label %if.then83.if.then99_crit_edge486
    i32 13, label %if.then83.if.then99_crit_edge487
  ]

if.then83.if.then99_crit_edge487:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

if.then83.if.then99_crit_edge486:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

if.then83.if.then99_crit_edge485:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

if.then83.if.then99_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

if.then99:                                        ; preds = %if.then83.if.then99_crit_edge, %if.then83.if.then99_crit_edge485, %if.then83.if.then99_crit_edge486, %if.then83.if.then99_crit_edge487
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %59 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %red, align 4
  %arrayidx = getelementptr i16, ptr %60, i32 %55
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx, align 2
  %63 = and i16 %62, -64
  %and101 = zext i16 %63 to i32
  %shl102 = shl nuw nsw i32 %and101, 14
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %64 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %green, align 4
  %arrayidx104 = getelementptr i16, ptr %65, i32 %55
  %66 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx104, align 2
  %68 = and i16 %67, -64
  %and106 = zext i16 %68 to i32
  %shl107 = shl nuw nsw i32 %and106, 4
  %or108 = or i32 %shl107, %shl102
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %69 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %blue, align 4
  %arrayidx110 = getelementptr i16, ptr %70, i32 %55
  %71 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx110, align 2
  %73 = lshr i16 %72, 6
  %74 = zext i16 %73 to i32
  %or113 = or i32 %or108, %74
  %arrayidx116 = getelementptr i16, ptr %60, i32 %57
  %75 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx116, align 2
  %77 = and i16 %76, -64
  %and118 = zext i16 %77 to i32
  %shl119 = shl nuw nsw i32 %and118, 14
  %arrayidx122 = getelementptr i16, ptr %65, i32 %57
  %78 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx122, align 2
  %80 = and i16 %79, -64
  %and124 = zext i16 %80 to i32
  %shl125 = shl nuw nsw i32 %and124, 4
  %or126 = or i32 %shl125, %shl119
  br label %do.body174

if.else134:                                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %red136 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %81 = ptrtoint ptr %red136 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %red136, align 4
  %arrayidx137 = getelementptr i16, ptr %82, i32 %55
  %83 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx137, align 2
  %85 = and i16 %84, -256
  %and139 = zext i16 %85 to i32
  %shl140 = shl nuw nsw i32 %and139, 8
  %green142 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %86 = ptrtoint ptr %green142 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %green142, align 4
  %arrayidx143 = getelementptr i16, ptr %87, i32 %55
  %88 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx143, align 2
  %90 = and i16 %89, -256
  %and145 = zext i16 %90 to i32
  %or146 = or i32 %shl140, %and145
  %blue148 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %91 = ptrtoint ptr %blue148 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %blue148, align 4
  %arrayidx149 = getelementptr i16, ptr %92, i32 %55
  %93 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx149, align 2
  %95 = lshr i16 %94, 8
  %96 = zext i16 %95 to i32
  %or153 = or i32 %or146, %96
  %arrayidx156 = getelementptr i16, ptr %82, i32 %57
  %97 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx156, align 2
  %99 = and i16 %98, -256
  %and158 = zext i16 %99 to i32
  %shl159 = shl nuw nsw i32 %and158, 8
  %arrayidx162 = getelementptr i16, ptr %87, i32 %57
  %100 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx162, align 2
  %102 = and i16 %101, -256
  %and164 = zext i16 %102 to i32
  %or165 = or i32 %shl159, %and164
  br label %do.body174

do.body174:                                       ; preds = %if.else134, %if.then99
  %.sink = phi ptr [ %70, %if.then99 ], [ %92, %if.else134 ]
  %.sink478 = phi i16 [ 6, %if.then99 ], [ 8, %if.else134 ]
  %or126.sink = phi i32 [ %or126, %if.then99 ], [ %or165, %if.else134 ]
  %fg_color.0 = phi i32 [ %or113, %if.then99 ], [ %or153, %if.else134 ]
  %arrayidx129 = getelementptr i16, ptr %.sink, i32 %57
  %103 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx129, align 2
  %105 = lshr i16 %104, %.sink478
  %106 = zext i16 %105 to i32
  %or133 = or i32 %or126.sink, %106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  tail call void @arm_heavy_mb() #14
  %107 = tail call i32 @llvm.bswap.i32(i32 %or133)
  %add.ptr177 = getelementptr i8, ptr %7, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %107) #14, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %108 = tail call i32 @llvm.bswap.i32(i32 %fg_color.0)
  %add.ptr181 = getelementptr i8, ptr %7, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %108) #14, !srcloc !214
  br label %if.end182

if.end182:                                        ; preds = %do.body174, %if.end78.if.end182_crit_edge
  %109 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %cursor, align 4
  %111 = and i16 %110, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool186.not = icmp eq i16 %111, 0
  br i1 %tobool186.not, label %if.end182.if.end307_crit_edge, label %if.then187

if.end182.if.end307_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307

if.then187:                                       ; preds = %if.end182
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 2848, i32 noundef 2) #21
  %112 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %width, align 4
  %add191 = add i32 %113, 7
  %shr192 = lshr i32 %add191, 3
  %height194 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %114 = ptrtoint ptr %height194 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %height194, align 4
  %mul = mul i32 %shr192, %115
  %tobool195.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool195.not, label %if.then187.cleanup311_crit_edge, label %if.end197

if.then187.cleanup311_crit_edge:                  ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup311

if.end197:                                        ; preds = %if.then187
  br i1 %cmp198, label %if.end197.for.body_crit_edge, label %if.end197.for.body212_crit_edge

if.end197.for.body212_crit_edge:                  ; preds = %if.end197
  br label %for.body212

if.end197.for.body_crit_edge:                     ; preds = %if.end197
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end197.for.body_crit_edge
  %i.0457 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end197.for.body_crit_edge ]
  %arrayidx203 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %i.0457
  %116 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx203, align 8
  %add205 = or i32 %i.0457, 1
  %arrayidx206 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add205
  %117 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %arrayidx206, align 4
  %inc = add nuw nsw i32 %i.0457, 2
  %cmp201 = icmp ult i32 %i.0457, 2046
  br i1 %cmp201, label %for.body.for.body_crit_edge, label %for.body.if.end228_crit_edge

for.body.if.end228_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end228

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %if.end197.for.body212_crit_edge
  %i.1456 = phi i32 [ %inc226, %for.body212.for.body212_crit_edge ], [ 0, %if.end197.for.body212_crit_edge ]
  %arrayidx214 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %i.1456
  %118 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %arrayidx214, align 16
  %add216 = or i32 %i.1456, 1
  %arrayidx217 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add216
  %119 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %arrayidx217, align 4
  %add219 = or i32 %i.1456, 2
  %arrayidx220 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add219
  %120 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %arrayidx220, align 8
  %add222 = or i32 %i.1456, 3
  %arrayidx223 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add222
  %121 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %arrayidx223, align 4
  %inc226 = add nuw nsw i32 %i.1456, 4
  %cmp210 = icmp ult i32 %i.1456, 2044
  br i1 %cmp210, label %for.body212.for.body212_crit_edge, label %for.body212.if.end228_crit_edge

for.body212.if.end228_crit_edge:                  ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end228

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body212

if.end228:                                        ; preds = %for.body212.if.end228_crit_edge, %for.body.if.end228_crit_edge
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %122 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %rop, align 4
  %124 = zext i16 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %123, label %if.end228.sw.epilog_crit_edge [
    i16 1, label %for.cond230.preheader
    i16 0, label %for.cond240.preheader
  ]

if.end228.sw.epilog_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond240.preheader:                            ; preds = %if.end228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp241458 = icmp sgt i32 %mul, 0
  br i1 %cmp241458, label %for.body243.lr.ph, label %for.cond240.preheader.sw.epilog_crit_edge

for.cond240.preheader.sw.epilog_crit_edge:        ; preds = %for.cond240.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body243.lr.ph:                                ; preds = %for.cond240.preheader
  %mask244 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %125 = ptrtoint ptr %mask244 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mask244, align 4
  br label %for.body243

for.cond230.preheader:                            ; preds = %if.end228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp231460 = icmp sgt i32 %mul, 0
  br i1 %cmp231460, label %for.body233.lr.ph, label %for.cond230.preheader.sw.epilog_crit_edge

for.cond230.preheader.sw.epilog_crit_edge:        ; preds = %for.cond230.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body233.lr.ph:                                ; preds = %for.cond230.preheader
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %127 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mask, align 4
  br label %for.body233

for.body233:                                      ; preds = %for.body233.for.body233_crit_edge, %for.body233.lr.ph
  %i.2461 = phi i32 [ 0, %for.body233.lr.ph ], [ %inc237, %for.body233.for.body233_crit_edge ]
  %arrayidx234 = getelementptr i8, ptr %128, i32 %i.2461
  %129 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx234, align 1
  %arrayidx235 = getelementptr [8192 x i8], ptr %call1.i.i.i, i32 0, i32 %i.2461
  %131 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx235, align 1
  %inc237 = add nuw nsw i32 %i.2461, 1
  %exitcond471.not = icmp eq i32 %inc237, %mul
  br i1 %exitcond471.not, label %for.body233.sw.epilog_crit_edge, label %for.body233.for.body233_crit_edge

for.body233.for.body233_crit_edge:                ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body233

for.body233.sw.epilog_crit_edge:                  ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body243:                                      ; preds = %for.body243.for.body243_crit_edge, %for.body243.lr.ph
  %i.3459 = phi i32 [ 0, %for.body243.lr.ph ], [ %inc249, %for.body243.for.body243_crit_edge ]
  %arrayidx245 = getelementptr i8, ptr %126, i32 %i.3459
  %132 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx245, align 1
  %arrayidx247 = getelementptr [8192 x i8], ptr %call1.i.i.i, i32 0, i32 %i.3459
  %134 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx247, align 1
  %inc249 = add nuw nsw i32 %i.3459, 1
  %exitcond.not = icmp eq i32 %inc249, %mul
  br i1 %exitcond.not, label %for.body243.sw.epilog_crit_edge, label %for.body243.for.body243_crit_edge

for.body243.for.body243_crit_edge:                ; preds = %for.body243
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body243

for.body243.sw.epilog_crit_edge:                  ; preds = %for.body243
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body243.sw.epilog_crit_edge, %for.body233.sw.epilog_crit_edge, %for.cond230.preheader.sw.epilog_crit_edge, %for.cond240.preheader.sw.epilog_crit_edge, %if.end228.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp255465 = icmp sgt i32 %mul, 0
  br i1 %cmp198, label %for.cond254.preheader, label %for.cond273.preheader

for.cond273.preheader:                            ; preds = %sw.epilog
  br i1 %cmp255465, label %for.cond273.preheader.for.body276_crit_edge, label %for.cond273.preheader.if.end302_crit_edge

for.cond273.preheader.if.end302_crit_edge:        ; preds = %for.cond273.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end302

for.cond273.preheader.for.body276_crit_edge:      ; preds = %for.cond273.preheader
  br label %for.body276

for.cond254.preheader:                            ; preds = %sw.epilog
  br i1 %cmp255465, label %for.cond254.preheader.for.body257_crit_edge, label %for.cond254.preheader.if.end302_crit_edge

for.cond254.preheader.if.end302_crit_edge:        ; preds = %for.cond254.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end302

for.cond254.preheader.for.body257_crit_edge:      ; preds = %for.cond254.preheader
  br label %for.body257

for.body257:                                      ; preds = %for.body257.for.body257_crit_edge, %for.cond254.preheader.for.body257_crit_edge
  %j.0467 = phi i32 [ %add268, %for.body257.for.body257_crit_edge ], [ 0, %for.cond254.preheader.for.body257_crit_edge ]
  %i.4466 = phi i32 [ %inc270, %for.body257.for.body257_crit_edge ], [ 0, %for.cond254.preheader.for.body257_crit_edge ]
  %arrayidx259 = getelementptr [8192 x i8], ptr %call1.i.i.i, i32 0, i32 %i.4466
  %135 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %136 to i32
  %arrayidx262 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %j.0467
  %137 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv260, ptr %arrayidx262, align 8
  %neg = xor i32 %conv260, -1
  %add266 = or i32 %j.0467, 1
  %arrayidx267 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add266
  %138 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %neg, ptr %arrayidx267, align 4
  %add268 = add nuw i32 %j.0467, 2
  %inc270 = add nuw nsw i32 %i.4466, 1
  %exitcond473.not = icmp eq i32 %inc270, %mul
  br i1 %exitcond473.not, label %for.body257.if.end302_crit_edge, label %for.body257.for.body257_crit_edge

for.body257.for.body257_crit_edge:                ; preds = %for.body257
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body257

for.body257.if.end302_crit_edge:                  ; preds = %for.body257
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end302

for.body276:                                      ; preds = %for.body276.for.body276_crit_edge, %for.cond273.preheader.for.body276_crit_edge
  %j.1464 = phi i32 [ %add298, %for.body276.for.body276_crit_edge ], [ 0, %for.cond273.preheader.for.body276_crit_edge ]
  %i.5463 = phi i32 [ %inc300, %for.body276.for.body276_crit_edge ], [ 0, %for.cond273.preheader.for.body276_crit_edge ]
  %arrayidx278 = getelementptr [8192 x i8], ptr %call1.i.i.i, i32 0, i32 %i.5463
  %139 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx278, align 1
  %conv279 = zext i8 %140 to i32
  %arrayidx281 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %j.1464
  %141 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv279, ptr %arrayidx281, align 16
  %add283 = or i32 %j.1464, 1
  %arrayidx284 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add283
  %142 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %arrayidx284, align 4
  %neg287 = xor i32 %conv279, -1
  %add289 = or i32 %j.1464, 2
  %arrayidx290 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add289
  %143 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %neg287, ptr %arrayidx290, align 8
  %add296 = or i32 %j.1464, 3
  %arrayidx297 = getelementptr %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1, i32 %add296
  %144 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %arrayidx297, align 4
  %add298 = add i32 %j.1464, 4
  %inc300 = add nuw nsw i32 %i.5463, 1
  %exitcond472.not = icmp eq i32 %inc300, %mul
  br i1 %exitcond472.not, label %for.body276.if.end302_crit_edge, label %for.body276.for.body276_crit_edge

for.body276.for.body276_crit_edge:                ; preds = %for.body276
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body276

for.body276.if.end302_crit_edge:                  ; preds = %for.body276
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end302

if.end302:                                        ; preds = %for.body276.if.end302_crit_edge, %for.body257.if.end302_crit_edge, %for.cond254.preheader.if.end302_crit_edge, %for.cond273.preheader.if.end302_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %145 = load ptr, ptr @viafbinfo, align 4
  %146 = getelementptr inbounds %struct.fb_info, ptr %145, i32 0, i32 25
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %149 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %shared, align 4
  %cursor_vram_addr = getelementptr inbounds %struct.viafb_shared, ptr %150, i32 0, i32 13
  %151 = ptrtoint ptr %cursor_vram_addr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cursor_vram_addr, align 4
  %add.ptr304 = getelementptr i8, ptr %148, i32 %152
  %bak305 = getelementptr inbounds %struct.anon.86, ptr %call1.i.i.i, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %add.ptr304, ptr noundef %bak305, i32 noundef 8192) #14
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #14
  br label %if.end307

if.end307:                                        ; preds = %if.end302, %if.end182.if.end307_crit_edge
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %153 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool308.not = icmp eq i16 %154, 0
  br i1 %tobool308.not, label %if.end307.cleanup311_crit_edge, label %if.then309

if.end307.cleanup311_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup311

if.then309:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @viafb_show_hw_cursor(ptr noundef %info, i32 noundef 0) #14
  br label %cleanup311

cleanup311:                                       ; preds = %if.then309, %if.end307.cleanup311_crit_edge, %if.then187.cleanup311_crit_edge, %do.end51, %lor.lhs.false4.cleanup311_crit_edge, %land.lhs.true.cleanup311_crit_edge, %lor.lhs.false.cleanup311_crit_edge, %entry.cleanup311_crit_edge
  %retval.1 = phi i32 [ -6, %do.end51 ], [ -19, %lor.lhs.false.cleanup311_crit_edge ], [ -19, %entry.cleanup311_crit_edge ], [ -19, %lor.lhs.false4.cleanup311_crit_edge ], [ -19, %land.lhs.true.cleanup311_crit_edge ], [ 0, %if.then309 ], [ 0, %if.end307.cleanup311_crit_edge ], [ -12, %if.then187.cleanup311_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %u = alloca %union.anon.87, align 4
  %state_info = alloca i32, align 4
  %driver_name = alloca [6 x i8], align 1
  %gpu32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %u) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_info) #14
  %0 = ptrtoint ptr %state_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state_info, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %driver_name) #14
  %1 = call ptr @memcpy(ptr %driver_name, ptr @__const.viafb_ioctl.driver_name, i32 6)
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpu32) #14
  %3 = ptrtoint ptr %gpu32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gpu32, align 4, !annotation !200
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #17
  %4 = call ptr @memset(ptr %u, i32 0, i32 184)
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1447641363, label %sw.bb
    i32 1447641345, label %sw.bb3
    i32 1447641346, label %sw.bb10
    i32 1447641347, label %sw.bb12
    i32 1447641348, label %if.end59.i.i414
    i32 1447641349, label %sw.bb37
    i32 1447641351, label %sw.bb65
    i32 1447641352, label %if.end59.i.i450
    i32 1447641353, label %if.end59.i.i473
    i32 1447641355, label %sw.bb133
    i32 1447641362, label %sw.bb195
    i32 1447641365, label %sw.bb200
    i32 1447641368, label %sw.bb205
    i32 1447641369, label %sw.bb224
    i32 1447641370, label %sw.bb243
    i32 1447641378, label %if.end59.i.i547
    i32 1447641381, label %sw.bb273
    i32 1447641380, label %sw.bb279
    i32 1447641382, label %sw.bb288
    i32 1447641392, label %entry.sw.epilog_crit_edge
    i32 1447641393, label %entry.sw.epilog_crit_edge843
    i32 1447641395, label %if.end59.i.i577
    i32 1447641396, label %if.end59.i.i613
    i32 1447641399, label %if.end59.i.i649
    i32 1447641400, label %if.end59.i.i685
    i32 1447641398, label %if.end59.i.i721
    i32 1447641397, label %if.end59.i.i744
  ]

entry.sw.epilog_crit_edge843:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %6 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 60, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %8, i32 noundef 60) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %8, i32 noundef 60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 409) #14
  %10 = tail call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !203
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 256, i32 -1226833921) #14, !srcloc !222
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @viafb_ioctl_get_viafb_info(i32 noundef %arg) #14
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 4
  %call19 = tail call i32 @viafb_ioctl_hotplug(i32 noundef %15, i32 noundef %17, i32 noundef %19) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 415) #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i407 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i407 to ptr
  %cpu_domain.i.i408 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i408) #9, !srcloc !203
  %and.i409 = and i32 %22, -13
  %or.i410 = or i32 %and.i409, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i410) #14, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %call19, i32 -1226833921) #14, !srcloc !223
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #14, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  br label %cleanup

if.end59.i.i414:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i415 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i415, label %if.end59.i.i414.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i414.if.then11.i.i_crit_edge:          ; preds = %if.end59.i.i414
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i414
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i416 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i416)
  %cmp.i6.i417 = icmp eq i32 %asmresult.i.i416, 0
  br i1 %cmp.i6.i417, label %if.end.i.i419, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !202

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i419:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i418 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gpu32, i32 noundef 4) #14
  %25 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !203
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %gpu32, ptr noundef %2, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35, label %if.end.i.i419.if.then11.i.i_crit_edge, !prof !202

if.end.i.i419.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i419
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i419.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i414.if.then11.i.i_crit_edge
  %res.0.i.i772 = phi i32 [ %call1.i.i.i, %if.end.i.i419.if.then11.i.i_crit_edge ], [ 4, %if.end59.i.i414.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i772
  %add.ptr.i.i = getelementptr i8, ptr %gpu32, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i772)
  br label %cleanup

if.end35:                                         ; preds = %if.end.i.i419
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gpu32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool36.not = icmp ne i32 %30, 0
  %cond = zext i1 %tobool36.not to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_hotplug to i32))
  store i32 %cond, ptr @viafb_hotplug, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Xres to i32))
  %31 = load i32, ptr @viafb_hotplug_Xres, align 4
  %32 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %u, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Yres to i32))
  %33 = load i32, ptr @viafb_hotplug_Yres, align 4
  %yres39 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 1
  %34 = ptrtoint ptr %yres39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %yres39, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_refresh to i32))
  %35 = load i32, ptr @viafb_hotplug_refresh, align 4
  %refresh = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 2
  %36 = ptrtoint ptr %refresh to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %refresh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_bpp to i32))
  %37 = load i32, ptr @viafb_hotplug_bpp, align 4
  %bpp = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 3
  %38 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %bpp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %39 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp = icmp eq i32 %39, 1
  br i1 %cmp, label %if.then40, label %sw.bb37.if.end59.i.i424_crit_edge

sw.bb37.if.end59.i.i424_crit_edge:                ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i424

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_xres to i32))
  %40 = load i32, ptr @viafb_second_xres, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_yres to i32))
  %41 = load i32, ptr @viafb_second_yres, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %42 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool41.not = icmp eq i32 %42, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %viafbinfo.val = load ptr, ptr @viafbinfo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %viafbinfo1.val = load ptr, ptr @viafbinfo1, align 4
  %.pn406 = select i1 %tobool41.not, ptr %viafbinfo.val, ptr %viafbinfo1.val
  %cond45.in = getelementptr inbounds %struct.fb_info, ptr %.pn406, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %cond45.in to i32
  call void @__asan_load4_noabort(i32 %43)
  %cond45 = load i32, ptr %cond45.in, align 4
  %cond53.in = getelementptr inbounds %struct.fb_info, ptr %.pn406, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %cond53.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %cond53 = load i32, ptr %cond53.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh1 to i32))
  %45 = load i32, ptr @viafb_refresh1, align 4
  %46 = load i32, ptr @viafb_bpp1, align 4
  br label %if.end59.i.i424

if.end59.i.i424:                                  ; preds = %if.then40, %sw.bb37.if.end59.i.i424_crit_edge
  %.sink841 = phi i32 [ %40, %if.then40 ], [ 0, %sw.bb37.if.end59.i.i424_crit_edge ]
  %.sink840 = phi i32 [ %41, %if.then40 ], [ 0, %sw.bb37.if.end59.i.i424_crit_edge ]
  %.sink839 = phi i32 [ %cond45, %if.then40 ], [ 0, %sw.bb37.if.end59.i.i424_crit_edge ]
  %.sink838 = phi i32 [ %cond53, %if.then40 ], [ 0, %sw.bb37.if.end59.i.i424_crit_edge ]
  %.sink837 = phi i32 [ %45, %if.then40 ], [ 0, %sw.bb37.if.end59.i.i424_crit_edge ]
  %.sink = phi i32 [ %46, %if.then40 ], [ 0, %sw.bb37.if.end59.i.i424_crit_edge ]
  %47 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink841, ptr %47, align 4
  %49 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink840, ptr %49, align 4
  %51 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 6
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink839, ptr %51, align 4
  %53 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 7
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink838, ptr %53, align 4
  %55 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink837, ptr %55, align 4
  %57 = getelementptr inbounds %struct.viafb_ioctl_mode, ptr %u, i32 0, i32 9
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %57, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i425 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i425, label %if.end59.i.i424.cleanup_crit_edge, label %if.end.i.i428

if.end59.i.i424.cleanup_crit_edge:                ; preds = %if.end59.i.i424
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i428:                                    ; preds = %if.end59.i.i424
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 40, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i426 = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i426)
  %cmp.i6.i427 = icmp eq i32 %asmresult.i.i426, 0
  br i1 %cmp.i6.i427, label %copy_to_user.exit433, label %if.end.i.i428.cleanup_crit_edge

if.end.i.i428.cleanup_crit_edge:                  ; preds = %if.end.i.i428
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit433:                             ; preds = %if.end.i.i428
  %call.i.i.i429 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 40) #14
  %call.i12.i.i430 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i430)
  %tobool62.not = icmp eq i32 %call.i12.i.i430, 0
  br i1 %tobool62.not, label %copy_to_user.exit433.sw.epilog_crit_edge, label %copy_to_user.exit433.cleanup_crit_edge

copy_to_user.exit433.cleanup_crit_edge:           ; preds = %copy_to_user.exit433
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit433.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit433
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %60 = load i32, ptr @viafb_SAMM_ON, align 4
  %61 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp66 = icmp eq i32 %60, 1
  br i1 %cmp66, label %if.then67, label %if.else88

if.then67:                                        ; preds = %sw.bb65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %62 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool68.not = icmp eq i32 %62, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %63 = load ptr, ptr @viaparinfo, align 4
  %fbmem_free = getelementptr inbounds %struct.viafb_par, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %fbmem_free to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fbmem_free, align 4
  %size_prim = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 1
  %66 = ptrtoint ptr %size_prim to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size_prim, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo1 to i32))
  %67 = load ptr, ptr @viaparinfo1, align 4
  %fbmem_free70 = getelementptr inbounds %struct.viafb_par, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %fbmem_free70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fbmem_free70, align 4
  br label %if.end87

if.else71:                                        ; preds = %if.then67
  %70 = load i32, ptr @viafb_second_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool72.not = icmp eq i32 %70, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %71 = load ptr, ptr @viaparinfo, align 4
  %fbmem_free81 = getelementptr inbounds %struct.viafb_par, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %fbmem_free81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fbmem_free81, align 4
  br i1 %tobool72.not, label %if.else80, label %if.then73

if.then73:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  %mul75.neg = mul i32 %70, -1048576
  %sub = add i32 %73, %mul75.neg
  %size_prim76 = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 1
  %74 = ptrtoint ptr %size_prim76 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub, ptr %size_prim76, align 4
  %mul78 = shl i32 %70, 20
  br label %if.end87

if.else80:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  %shr = lshr i32 %73, 1
  %size_prim82 = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 1
  %75 = ptrtoint ptr %size_prim82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr, ptr %size_prim82, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else80, %if.then73, %if.then69
  %mul78.sink = phi i32 [ %mul78, %if.then73 ], [ %shr, %if.else80 ], [ %69, %if.then69 ]
  %size_sec79 = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 2
  %76 = ptrtoint ptr %size_sec79 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul78.sink, ptr %size_sec79, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %77 = load ptr, ptr @viaparinfo, align 4
  %fbmem = getelementptr inbounds %struct.viafb_par, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %fbmem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fbmem, align 4
  %mem_base = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 3
  %80 = ptrtoint ptr %mem_base to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %mem_base, align 4
  %81 = load i32, ptr @viafb_second_offset, align 4
  br label %if.end59.i.i437

if.else88:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %82 = load ptr, ptr @viaparinfo, align 4
  %memsize = getelementptr inbounds %struct.viafb_par, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %memsize, align 4
  %fbmem_used = getelementptr inbounds %struct.viafb_par, ptr %82, i32 0, i32 5
  %85 = ptrtoint ptr %fbmem_used to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fbmem_used, align 4
  %sub89 = sub i32 %84, %86
  %size_prim90 = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 1
  %87 = ptrtoint ptr %size_prim90 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub89, ptr %size_prim90, align 4
  %size_sec91 = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 2
  %88 = ptrtoint ptr %size_sec91 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %size_sec91, align 4
  %fbmem92 = getelementptr inbounds %struct.viafb_par, ptr %82, i32 0, i32 2
  %89 = ptrtoint ptr %fbmem92 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fbmem92, align 4
  %mem_base93 = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 3
  %91 = ptrtoint ptr %mem_base93 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %mem_base93, align 4
  br label %if.end59.i.i437

if.end59.i.i437:                                  ; preds = %if.else88, %if.end87
  %.sink842 = phi i32 [ %81, %if.end87 ], [ 0, %if.else88 ]
  %offset_sec = getelementptr inbounds %struct.viafb_ioctl_samm, ptr %u, i32 0, i32 4
  %92 = ptrtoint ptr %offset_sec to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink842, ptr %offset_sec, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i438 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i438, label %if.end59.i.i437.cleanup_crit_edge, label %if.end.i.i441

if.end59.i.i437.cleanup_crit_edge:                ; preds = %if.end59.i.i437
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i441:                                    ; preds = %if.end59.i.i437
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i439 = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i439)
  %cmp.i6.i440 = icmp eq i32 %asmresult.i.i439, 0
  br i1 %cmp.i6.i440, label %copy_to_user.exit446, label %if.end.i.i441.cleanup_crit_edge

if.end.i.i441.cleanup_crit_edge:                  ; preds = %if.end.i.i441
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit446:                             ; preds = %if.end.i.i441
  %call.i.i.i442 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 20) #14
  %call.i12.i.i443 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i443)
  %tobool97.not = icmp eq i32 %call.i12.i.i443, 0
  br i1 %tobool97.not, label %copy_to_user.exit446.sw.epilog_crit_edge, label %copy_to_user.exit446.cleanup_crit_edge

copy_to_user.exit446.cleanup_crit_edge:           ; preds = %copy_to_user.exit446
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit446.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit446
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i450:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i451 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i451, label %if.end59.i.i450.if.then11.i.i467_crit_edge, label %land.lhs.true.i.i454

if.end59.i.i450.if.then11.i.i467_crit_edge:       ; preds = %if.end59.i.i450
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i467

land.lhs.true.i.i454:                             ; preds = %if.end59.i.i450
  %94 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i452 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i452)
  %cmp.i6.i453 = icmp eq i32 %asmresult.i.i452, 0
  br i1 %cmp.i6.i453, label %if.end.i.i464, label %land.lhs.true.i.i454.if.then11.i.i467_crit_edge, !prof !202

land.lhs.true.i.i454.if.then11.i.i467_crit_edge:  ; preds = %land.lhs.true.i.i454
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i467

if.end.i.i464:                                    ; preds = %land.lhs.true.i.i454
  %call.i.i.i455 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gpu32, i32 noundef 4) #14
  %95 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i456 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i456 to ptr
  %cpu_domain.i.i.i.i.i457 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 4
  %97 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i457) #9, !srcloc !203
  %and.i.i.i.i458 = and i32 %97, -13
  %or.i.i.i.i459 = or i32 %and.i.i.i.i458, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i459) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i460 = call i32 @arm_copy_from_user(ptr noundef nonnull %gpu32, ptr noundef %2, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i460)
  %tobool4.not.i.i463 = icmp eq i32 %call1.i.i.i460, 0
  br i1 %tobool4.not.i.i463, label %if.end104, label %if.end.i.i464.if.then11.i.i467_crit_edge, !prof !202

if.end.i.i464.if.then11.i.i467_crit_edge:         ; preds = %if.end.i.i464
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i467

if.then11.i.i467:                                 ; preds = %if.end.i.i464.if.then11.i.i467_crit_edge, %land.lhs.true.i.i454.if.then11.i.i467_crit_edge, %if.end59.i.i450.if.then11.i.i467_crit_edge
  %res.0.i.i462781 = phi i32 [ %call1.i.i.i460, %if.end.i.i464.if.then11.i.i467_crit_edge ], [ 4, %if.end59.i.i450.if.then11.i.i467_crit_edge ], [ 4, %land.lhs.true.i.i454.if.then11.i.i467_crit_edge ]
  %sub.i.i465 = sub i32 4, %res.0.i.i462781
  %add.ptr.i.i466 = getelementptr i8, ptr %gpu32, i32 %sub.i.i465
  %98 = call ptr @memset(ptr %add.ptr.i.i466, i32 0, i32 %res.0.i.i462781)
  br label %cleanup

if.end104:                                        ; preds = %if.end.i.i464
  %99 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %gpu32, align 4
  %and = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  br i1 %tobool105.not, label %if.end104.if.end107_crit_edge, label %if.then106

if.end104.if.end107_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  call void @via_set_state(i32 noundef 16, i8 noundef zeroext 0) #14
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end104.if.end107_crit_edge
  %101 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %gpu32, align 4
  %and108 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end111_crit_edge, label %if.then110

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  call void @viafb_dvi_enable() #14
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end107.if.end111_crit_edge
  %103 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %gpu32, align 4
  %and112 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.sw.epilog_crit_edge, label %if.then114

if.end111.sw.epilog_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  call void @viafb_lcd_enable() #14
  br label %sw.epilog

if.end59.i.i473:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i474 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i474, label %if.end59.i.i473.if.then11.i.i490_crit_edge, label %land.lhs.true.i.i477

if.end59.i.i473.if.then11.i.i490_crit_edge:       ; preds = %if.end59.i.i473
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i490

land.lhs.true.i.i477:                             ; preds = %if.end59.i.i473
  %105 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i475 = extractvalue { i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i475)
  %cmp.i6.i476 = icmp eq i32 %asmresult.i.i475, 0
  br i1 %cmp.i6.i476, label %if.end.i.i487, label %land.lhs.true.i.i477.if.then11.i.i490_crit_edge, !prof !202

land.lhs.true.i.i477.if.then11.i.i490_crit_edge:  ; preds = %land.lhs.true.i.i477
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i490

if.end.i.i487:                                    ; preds = %land.lhs.true.i.i477
  %call.i.i.i478 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gpu32, i32 noundef 4) #14
  %106 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i479 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i479 to ptr
  %cpu_domain.i.i.i.i.i480 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i480) #9, !srcloc !203
  %and.i.i.i.i481 = and i32 %108, -13
  %or.i.i.i.i482 = or i32 %and.i.i.i.i481, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i482) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i483 = call i32 @arm_copy_from_user(ptr noundef nonnull %gpu32, ptr noundef %2, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i483)
  %tobool4.not.i.i486 = icmp eq i32 %call1.i.i.i483, 0
  br i1 %tobool4.not.i.i486, label %if.end120, label %if.end.i.i487.if.then11.i.i490_crit_edge, !prof !202

if.end.i.i487.if.then11.i.i490_crit_edge:         ; preds = %if.end.i.i487
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i490

if.then11.i.i490:                                 ; preds = %if.end.i.i487.if.then11.i.i490_crit_edge, %land.lhs.true.i.i477.if.then11.i.i490_crit_edge, %if.end59.i.i473.if.then11.i.i490_crit_edge
  %res.0.i.i485786 = phi i32 [ %call1.i.i.i483, %if.end.i.i487.if.then11.i.i490_crit_edge ], [ 4, %if.end59.i.i473.if.then11.i.i490_crit_edge ], [ 4, %land.lhs.true.i.i477.if.then11.i.i490_crit_edge ]
  %sub.i.i488 = sub i32 4, %res.0.i.i485786
  %add.ptr.i.i489 = getelementptr i8, ptr %gpu32, i32 %sub.i.i488
  %109 = call ptr @memset(ptr %add.ptr.i.i489, i32 0, i32 %res.0.i.i485786)
  br label %cleanup

if.end120:                                        ; preds = %if.end.i.i487
  %110 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %gpu32, align 4
  %and121 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end124_crit_edge, label %if.then123

if.end120.if.end124_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  call void @via_set_state(i32 noundef 16, i8 noundef zeroext 3) #14
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end120.if.end124_crit_edge
  %112 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %gpu32, align 4
  %and125 = and i32 %113, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end128_crit_edge, label %if.then127

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  call void @viafb_dvi_disable() #14
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end124.if.end128_crit_edge
  %114 = ptrtoint ptr %gpu32 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %gpu32, align 4
  %and129 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.sw.epilog_crit_edge, label %if.then131

if.end128.sw.epilog_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  call void @viafb_lcd_disable() #14
  br label %sw.epilog

sw.bb133:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  %116 = load i32, ptr @viafb_CRT_ON, align 4
  %conv = trunc i32 %116 to i16
  %117 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load = load i16, ptr %u, align 4
  %bf.shl = shl i16 %conv, 15
  %bf.clear = and i16 %bf.load, 255
  %bf.set = or i16 %bf.clear, %bf.shl
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %118 = load i32, ptr @viafb_DVI_ON, align 4
  %conv134 = trunc i32 %118 to i16
  %bf.value136 = shl i16 %conv134, 14
  %bf.shl137 = and i16 %bf.value136, 16384
  %bf.set139 = or i16 %bf.shl137, %bf.set
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %119 = load i32, ptr @viafb_LCD_ON, align 4
  %conv140 = trunc i32 %119 to i16
  %bf.value142 = shl i16 %conv140, 13
  %bf.shl143 = and i16 %bf.value142, 8192
  %bf.set145 = or i16 %bf.set139, %bf.shl143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %120 = load i32, ptr @viafb_SAMM_ON, align 4
  %conv146 = trunc i32 %120 to i16
  %bf.value148 = shl i16 %conv146, 12
  %bf.shl149 = and i16 %bf.value148, 4096
  %bf.set151 = or i16 %bf.set145, %bf.shl149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %121 = load i32, ptr @viafb_primary_dev, align 4
  %conv152 = trunc i32 %121 to i16
  %primary_dev = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 1
  %122 = ptrtoint ptr %primary_dev to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv152, ptr %primary_dev, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_dsp_method to i32))
  %123 = load i32, ptr @viafb_lcd_dsp_method, align 4
  %conv153 = trunc i32 %123 to i16
  %bf.value155 = shl i16 %conv153, 11
  %bf.shl156 = and i16 %bf.value155, 2048
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_panel_id to i32))
  %124 = load i32, ptr @viafb_lcd_panel_id, align 4
  %conv159 = trunc i32 %124 to i8
  %lcd_panel_id = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 2
  %125 = ptrtoint ptr %lcd_panel_id to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv159, ptr %lcd_panel_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_mode to i32))
  %126 = load i32, ptr @viafb_lcd_mode, align 4
  %127 = trunc i32 %126 to i16
  %bf.value162 = shl i16 %127, 10
  %bf.shl163 = and i16 %bf.value162, 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Xres to i32))
  %128 = load i32, ptr @viafb_hotplug_Xres, align 4
  %conv166 = trunc i32 %128 to i16
  %xres167 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 3
  %129 = ptrtoint ptr %xres167 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv166, ptr %xres167, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Yres to i32))
  %130 = load i32, ptr @viafb_hotplug_Yres, align 4
  %conv168 = trunc i32 %130 to i16
  %yres169 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 4
  %131 = ptrtoint ptr %yres169 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv168, ptr %yres169, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_xres to i32))
  %132 = load i32, ptr @viafb_second_xres, align 4
  %conv170 = trunc i32 %132 to i16
  %xres1 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 5
  %133 = ptrtoint ptr %xres1 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv170, ptr %xres1, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_yres to i32))
  %134 = load i32, ptr @viafb_second_yres, align 4
  %conv171 = trunc i32 %134 to i16
  %yres1 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 6
  %135 = ptrtoint ptr %yres1 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv171, ptr %yres1, align 4
  %136 = load i32, ptr @viafb_bpp, align 4
  %conv172 = trunc i32 %136 to i16
  %bpp173 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 8
  %137 = ptrtoint ptr %bpp173 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv172, ptr %bpp173, align 4
  %138 = load i32, ptr @viafb_bpp1, align 4
  %conv174 = trunc i32 %138 to i16
  %bpp1 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 10
  %139 = ptrtoint ptr %bpp1 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv174, ptr %bpp1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh to i32))
  %140 = load i32, ptr @viafb_refresh, align 4
  %conv175 = trunc i32 %140 to i16
  %refresh176 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 7
  %141 = ptrtoint ptr %refresh176 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv175, ptr %refresh176, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh1 to i32))
  %142 = load i32, ptr @viafb_refresh1, align 4
  %conv177 = trunc i32 %142 to i16
  %refresh1 = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 9
  %143 = ptrtoint ptr %refresh1 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv177, ptr %refresh1, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_platform_epia_dvi to i32))
  %144 = load i32, ptr @viafb_platform_epia_dvi, align 4
  %conv178 = trunc i32 %144 to i16
  %bf.value180 = shl i16 %conv178, 9
  %bf.shl181 = and i16 %bf.value180, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_device_lcd_dualedge to i32))
  %145 = load i32, ptr @viafb_device_lcd_dualedge, align 4
  %conv184 = trunc i32 %145 to i16
  %bf.value186 = shl i16 %conv184, 8
  %bf.shl187 = and i16 %bf.value186, 256
  %bf.clear164.masked.masked = or i16 %bf.shl156, %bf.set151
  %bf.clear182.masked = or i16 %bf.shl163, %bf.clear164.masked.masked
  %bf.clear188 = or i16 %bf.shl181, %bf.clear182.masked
  %bf.set189 = or i16 %bf.clear188, %bf.shl187
  store i16 %bf.set189, ptr %u, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_bus_width to i32))
  %146 = load i32, ptr @viafb_bus_width, align 4
  %conv190 = trunc i32 %146 to i16
  %bus_width = getelementptr inbounds %struct.device_t, ptr %u, i32 0, i32 12
  %147 = ptrtoint ptr %bus_width to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv190, ptr %bus_width, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i497 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i497, label %sw.bb133.cleanup_crit_edge, label %if.end.i.i500

sw.bb133.cleanup_crit_edge:                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i500:                                    ; preds = %sw.bb133
  %148 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 26, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i498 = extractvalue { i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i498)
  %cmp.i6.i499 = icmp eq i32 %asmresult.i.i498, 0
  br i1 %cmp.i6.i499, label %copy_to_user.exit505, label %if.end.i.i500.cleanup_crit_edge

if.end.i.i500.cleanup_crit_edge:                  ; preds = %if.end.i.i500
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit505:                             ; preds = %if.end.i.i500
  %call.i.i.i501 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 26) #14
  %call.i12.i.i502 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i502)
  %tobool192.not = icmp eq i32 %call.i12.i.i502, 0
  br i1 %tobool192.not, label %copy_to_user.exit505.sw.epilog_crit_edge, label %copy_to_user.exit505.cleanup_crit_edge

copy_to_user.exit505.cleanup_crit_edge:           ; preds = %copy_to_user.exit505
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit505.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit505
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb195:                                         ; preds = %entry
  %149 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2, ptr %u, align 4
  %iKernelNum = getelementptr inbounds %struct.viafb_driver_version, ptr %u, i32 0, i32 1
  %150 = ptrtoint ptr %iKernelNum to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 6, ptr %iKernelNum, align 4
  %iOSNum = getelementptr inbounds %struct.viafb_driver_version, ptr %u, i32 0, i32 2
  %151 = ptrtoint ptr %iOSNum to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %iOSNum, align 4
  %iMinorNum = getelementptr inbounds %struct.viafb_driver_version, ptr %u, i32 0, i32 3
  %152 = ptrtoint ptr %iMinorNum to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 4, ptr %iMinorNum, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i510 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i510, label %sw.bb195.cleanup_crit_edge, label %if.end.i.i513

sw.bb195.cleanup_crit_edge:                       ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i513:                                    ; preds = %sw.bb195
  %153 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i511 = extractvalue { i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i511)
  %cmp.i6.i512 = icmp eq i32 %asmresult.i.i511, 0
  br i1 %cmp.i6.i512, label %copy_to_user.exit518, label %if.end.i.i513.cleanup_crit_edge

if.end.i.i513.cleanup_crit_edge:                  ; preds = %if.end.i.i513
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit518:                             ; preds = %if.end.i.i513
  %call.i.i.i514 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 16) #14
  %call.i12.i.i515 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i515)
  %tobool197.not = icmp eq i32 %call.i12.i.i515, 0
  br i1 %tobool197.not, label %copy_to_user.exit518.sw.epilog_crit_edge, label %copy_to_user.exit518.cleanup_crit_edge

copy_to_user.exit518.cleanup_crit_edge:           ; preds = %copy_to_user.exit518
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit518.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit518
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb200:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  %154 = load i32, ptr @viafb_CRT_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp.i = icmp eq i32 %154, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb200.if.end.i_crit_edge

sw.bb200.if.end.i_crit_edge:                      ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #16
  %device_status.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 1
  %155 = ptrtoint ptr %device_status.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 1, ptr %device_status.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb200.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %156 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp1.i = icmp eq i32 %156, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %device_status3.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 1
  %157 = ptrtoint ptr %device_status3.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %device_status3.i, align 2
  %159 = or i16 %158, 8
  store i16 %159, ptr %device_status3.i, align 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %160 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp6.i = icmp eq i32 %160, 1
  br i1 %cmp6.i, label %if.then8.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %device_status9.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 1
  %161 = ptrtoint ptr %device_status9.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %device_status9.i, align 2
  %163 = or i16 %162, 2
  store i16 %163, ptr %device_status9.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end13.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %164 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp14.i = icmp eq i32 %164, 1
  br i1 %cmp14.i, label %if.then16.i, label %if.end13.i.if.end21.i_crit_edge

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %device_status17.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 1
  %165 = ptrtoint ptr %device_status17.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %device_status17.i, align 2
  %167 = or i16 %166, 64
  store i16 %167, ptr %device_status17.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end21.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %168 = load i32, ptr @viafb_SAMM_ON, align 4
  %conv22.i = trunc i32 %168 to i16
  %samm_status.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 4
  %169 = ptrtoint ptr %samm_status.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv22.i, ptr %samm_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i.i = icmp eq i32 %168, 0
  br i1 %tobool.not.i.i, label %if.end21.i.retrieve_device_setting.exit_crit_edge, label %if.then.i.i764

if.end21.i.retrieve_device_setting.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retrieve_device_setting.exit

if.then.i.i764:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool1.not.i.i = icmp eq i32 %154, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i764.if.end5.i.i_crit_edge, label %if.then2.i.i765

if.then.i.i764.if.end5.i.i_crit_edge:             ; preds = %if.then.i.i764
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then2.i.i765:                                  ; preds = %if.then.i.i764
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %170 = load ptr, ptr @viaparinfo, align 4
  %shared.i.i = getelementptr inbounds %struct.viafb_par, ptr %170, i32 0, i32 7
  %171 = ptrtoint ptr %shared.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %shared.i.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %and.i.i = lshr i32 %174, 4
  %and.lobit.i.i = and i32 %and.i.i, 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then2.i.i765, %if.then.i.i764.if.end5.i.i_crit_edge
  %primary_device.0.i.i = phi i32 [ 0, %if.then.i.i764.if.end5.i.i_crit_edge ], [ %and.lobit.i.i, %if.then2.i.i765 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool6.not.i.i = icmp eq i32 %156, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %175 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info.i.i = getelementptr inbounds %struct.viafb_par, ptr %175, i32 0, i32 8
  %176 = ptrtoint ptr %tmds_setting_info.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tmds_setting_info.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp.i.i766 = icmp eq i32 %179, 1
  %spec.select29.i.i = select i1 %cmp.i.i766, i32 8, i32 %primary_device.0.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then7.i.i, %if.end5.i.i.if.end11.i.i_crit_edge
  %primary_device.1.i.i = phi i32 [ %primary_device.0.i.i, %if.end5.i.i.if.end11.i.i_crit_edge ], [ %spec.select29.i.i, %if.then7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool12.not.i.i = icmp eq i32 %160, 0
  br i1 %tobool12.not.i.i, label %if.end11.i.i.if.end19.i.i_crit_edge, label %if.then13.i.i

if.end11.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %180 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info.i.i = getelementptr inbounds %struct.viafb_par, ptr %180, i32 0, i32 9
  %181 = ptrtoint ptr %lvds_setting_info.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %lvds_setting_info.i.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %184)
  %cmp15.i.i = icmp eq i32 %184, 1
  %spec.select30.i.i = select i1 %cmp15.i.i, i32 2, i32 %primary_device.1.i.i
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then13.i.i, %if.end11.i.i.if.end19.i.i_crit_edge
  %primary_device.2.i.i = phi i32 [ %primary_device.1.i.i, %if.end11.i.i.if.end19.i.i_crit_edge ], [ %spec.select30.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool20.not.i.i = icmp eq i32 %164, 0
  br i1 %tobool20.not.i.i, label %if.end19.i.i.retrieve_device_setting.exit_crit_edge, label %if.then21.i.i

if.end19.i.i.retrieve_device_setting.exit_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retrieve_device_setting.exit

if.then21.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %185 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2.i.i = getelementptr inbounds %struct.viafb_par, ptr %185, i32 0, i32 10
  %186 = ptrtoint ptr %lvds_setting_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lvds_setting_info2.i.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp23.i.i = icmp eq i32 %189, 1
  %spec.select31.i.i = select i1 %cmp23.i.i, i32 64, i32 %primary_device.2.i.i
  br label %retrieve_device_setting.exit

retrieve_device_setting.exit:                     ; preds = %if.then21.i.i, %if.end19.i.i.retrieve_device_setting.exit_crit_edge, %if.end21.i.retrieve_device_setting.exit_crit_edge
  %primary_device.3.i.i = phi i32 [ %primary_device.2.i.i, %if.end19.i.i.retrieve_device_setting.exit_crit_edge ], [ 0, %if.end21.i.retrieve_device_setting.exit_crit_edge ], [ %spec.select31.i.i, %if.then21.i.i ]
  %primary_device.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 13
  %190 = ptrtoint ptr %primary_device.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %primary_device.3.i.i, ptr %primary_device.i, align 4
  %191 = load i32, ptr @viafb_bpp, align 4
  %conv23.i = trunc i32 %191 to i16
  %first_dev_bpp.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 10
  %192 = ptrtoint ptr %first_dev_bpp.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv23.i, ptr %first_dev_bpp.i, align 2
  %193 = load i32, ptr @viafb_bpp1, align 4
  %conv24.i = trunc i32 %193 to i16
  %second_dev_bpp.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 12
  %194 = ptrtoint ptr %second_dev_bpp.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv24.i, ptr %second_dev_bpp.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh to i32))
  %195 = load i32, ptr @viafb_refresh, align 4
  %conv25.i = trunc i32 %195 to i16
  %first_dev_refresh.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 9
  %196 = ptrtoint ptr %first_dev_refresh.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv25.i, ptr %first_dev_refresh.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh1 to i32))
  %197 = load i32, ptr @viafb_refresh1, align 4
  %conv26.i = trunc i32 %197 to i16
  %second_dev_refresh.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 11
  %198 = ptrtoint ptr %second_dev_refresh.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv26.i, ptr %second_dev_refresh.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Xres to i32))
  %199 = load i32, ptr @viafb_hotplug_Xres, align 4
  %conv27.i = trunc i32 %199 to i16
  %first_dev_hor_res.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 5
  %200 = ptrtoint ptr %first_dev_hor_res.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv27.i, ptr %first_dev_hor_res.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Yres to i32))
  %201 = load i32, ptr @viafb_hotplug_Yres, align 4
  %conv28.i = trunc i32 %201 to i16
  %first_dev_ver_res.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 6
  %202 = ptrtoint ptr %first_dev_ver_res.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv28.i, ptr %first_dev_ver_res.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_xres to i32))
  %203 = load i32, ptr @viafb_second_xres, align 4
  %conv29.i = trunc i32 %203 to i16
  %second_dev_hor_res.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 7
  %204 = ptrtoint ptr %second_dev_hor_res.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv29.i, ptr %second_dev_hor_res.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_yres to i32))
  %205 = load i32, ptr @viafb_second_yres, align 4
  %conv30.i = trunc i32 %205 to i16
  %second_dev_ver_res.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 8
  %206 = ptrtoint ptr %second_dev_ver_res.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv30.i, ptr %second_dev_ver_res.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_dsp_method to i32))
  %207 = load i32, ptr @viafb_lcd_dsp_method, align 4
  %lcd_attributes.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 15
  %display_center.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 15, i32 1
  %208 = ptrtoint ptr %display_center.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %display_center.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_panel_id to i32))
  %209 = load i32, ptr @viafb_lcd_panel_id, align 4
  %210 = ptrtoint ptr %lcd_attributes.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %lcd_attributes.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_mode to i32))
  %211 = load i32, ptr @viafb_lcd_mode, align 4
  %lcd_mode.i = getelementptr inbounds %struct.viafb_ioctl_setting, ptr %u, i32 0, i32 15, i32 2
  %212 = ptrtoint ptr %lcd_mode.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %lcd_mode.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i523 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i523, label %retrieve_device_setting.exit.cleanup_crit_edge, label %if.end.i.i526

retrieve_device_setting.exit.cleanup_crit_edge:   ; preds = %retrieve_device_setting.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i526:                                    ; preds = %retrieve_device_setting.exit
  %213 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 184, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i524 = extractvalue { i32, i32 } %213, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i524)
  %cmp.i6.i525 = icmp eq i32 %asmresult.i.i524, 0
  br i1 %cmp.i6.i525, label %copy_to_user.exit531, label %if.end.i.i526.cleanup_crit_edge

if.end.i.i526.cleanup_crit_edge:                  ; preds = %if.end.i.i526
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit531:                             ; preds = %if.end.i.i526
  %call.i.i.i527 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 184) #14
  %call.i12.i.i528 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 184) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i528)
  %tobool202.not = icmp eq i32 %call.i12.i.i528, 0
  br i1 %tobool202.not, label %copy_to_user.exit531.sw.epilog_crit_edge, label %copy_to_user.exit531.cleanup_crit_edge

copy_to_user.exit531.cleanup_crit_edge:           ; preds = %copy_to_user.exit531
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit531.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit531
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb205:                                         ; preds = %entry
  call void @viafb_get_device_support_state(ptr noundef nonnull %state_info) #14
  %214 = ptrtoint ptr %state_info to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %state_info, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 553) #14
  %216 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i532 = and i32 %216, -16384
  %217 = inttoptr i32 %and.i.i.i532 to ptr
  %cpu_domain.i.i533 = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 4
  %218 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i533) #9, !srcloc !203
  %and.i534 = and i32 %218, -13
  %or.i535 = or i32 %and.i534, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i535) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %219 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %215, i32 -1226833921) #14, !srcloc !224
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %218) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool221.not = icmp eq i32 %219, 0
  br i1 %tobool221.not, label %sw.bb205.sw.epilog_crit_edge, label %sw.bb205.cleanup_crit_edge

sw.bb205.cleanup_crit_edge:                       ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb205.sw.epilog_crit_edge:                     ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb224:                                         ; preds = %entry
  call void @viafb_get_device_connect_state(ptr noundef nonnull %state_info) #14
  %220 = ptrtoint ptr %state_info to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %state_info, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 559) #14
  %222 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i536 = and i32 %222, -16384
  %223 = inttoptr i32 %and.i.i.i536 to ptr
  %cpu_domain.i.i537 = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 4
  %224 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i537) #9, !srcloc !203
  %and.i538 = and i32 %224, -13
  %or.i539 = or i32 %and.i538, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i539) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %225 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %221, i32 -1226833921) #14, !srcloc !225
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %224) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool240.not = icmp eq i32 %225, 0
  br i1 %tobool240.not, label %sw.bb224.sw.epilog_crit_edge, label %sw.bb224.cleanup_crit_edge

sw.bb224.cleanup_crit_edge:                       ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb224.sw.epilog_crit_edge:                     ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb243:                                         ; preds = %entry
  %var244 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %226 = ptrtoint ptr %var244 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %var244, align 4
  %yres247 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %228 = ptrtoint ptr %yres247 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %yres247, align 4
  %call248 = tail call zeroext i1 @viafb_lcd_get_support_expand_state(i32 noundef %227, i32 noundef %229) #14
  %conv249 = zext i1 %call248 to i32
  %230 = ptrtoint ptr %state_info to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv249, ptr %state_info, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 567) #14
  %231 = tail call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i540 = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i.i540 to ptr
  %cpu_domain.i.i541 = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 4
  %233 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i541) #9, !srcloc !203
  %and.i542 = and i32 %233, -13
  %or.i543 = or i32 %and.i542, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i543) #14, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %234 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %conv249, i32 -1226833921) #14, !srcloc !226
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %233) #14, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool265.not = icmp eq i32 %234, 0
  br i1 %tobool265.not, label %sw.bb243.sw.epilog_crit_edge, label %sw.bb243.cleanup_crit_edge

sw.bb243.cleanup_crit_edge:                       ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb243.sw.epilog_crit_edge:                     ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i547:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i548 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i548, label %if.end59.i.i547.cleanup_crit_edge, label %if.end.i.i551

if.end59.i.i547.cleanup_crit_edge:                ; preds = %if.end59.i.i547
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i551:                                    ; preds = %if.end59.i.i547
  %235 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 6, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i549 = extractvalue { i32, i32 } %235, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i549)
  %cmp.i6.i550 = icmp eq i32 %asmresult.i.i549, 0
  br i1 %cmp.i6.i550, label %copy_to_user.exit556, label %if.end.i.i551.cleanup_crit_edge

if.end.i.i551.cleanup_crit_edge:                  ; preds = %if.end.i.i551
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit556:                             ; preds = %if.end.i.i551
  %call.i.i.i552 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %driver_name, i32 noundef 6) #14
  %call.i12.i.i553 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %driver_name, i32 noundef 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i553)
  %tobool270.not = icmp eq i32 %call.i12.i.i553, 0
  br i1 %tobool270.not, label %copy_to_user.exit556.sw.epilog_crit_edge, label %copy_to_user.exit556.cleanup_crit_edge

copy_to_user.exit556.cleanup_crit_edge:           ; preds = %copy_to_user.exit556
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit556.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit556
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb273:                                         ; preds = %entry
  %call274 = tail call ptr @memdup_user(ptr noundef %2, i32 noundef 1024) #14
  %cmp.i767 = icmp ugt ptr %call274, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i767, label %if.then276, label %if.end278

if.then276:                                       ; preds = %sw.bb273
  call void @__sanitizer_cov_trace_pc() #16
  %236 = ptrtoint ptr %call274 to i32
  br label %cleanup

if.end278:                                        ; preds = %sw.bb273
  call void @__sanitizer_cov_trace_pc() #16
  %237 = load i32, ptr @viafb_bpp, align 4
  tail call void @viafb_set_gamma_table(i32 noundef %237, ptr noundef %call274) #14
  tail call void @kfree(ptr noundef %call274) #14
  br label %sw.epilog

sw.bb279:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %238 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %238, i32 noundef 3264, i32 noundef 1024) #22
  %tobool281.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool281.not, label %sw.bb279.cleanup_crit_edge, label %if.end283

sw.bb279.cleanup_crit_edge:                       ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end283:                                        ; preds = %sw.bb279
  tail call void @viafb_get_gamma_table(ptr noundef nonnull %call7.i.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i561 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i561, label %if.end283.if.then286_crit_edge, label %if.end.i.i564

if.end283.if.then286_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then286

if.end.i.i564:                                    ; preds = %if.end283
  %239 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 1024, i32 -1226833920) #20, !srcloc !221
  %asmresult.i.i562 = extractvalue { i32, i32 } %239, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i562)
  %cmp.i6.i563 = icmp eq i32 %asmresult.i.i562, 0
  br i1 %cmp.i6.i563, label %copy_to_user.exit569, label %if.end.i.i564.if.then286_crit_edge

if.end.i.i564.if.then286_crit_edge:               ; preds = %if.end.i.i564
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then286

copy_to_user.exit569:                             ; preds = %if.end.i.i564
  %call.i.i.i565 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef 1024) #14
  %call.i12.i.i566 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %call7.i.i, i32 noundef 1024) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i566)
  %tobool285.not = icmp eq i32 %call.i12.i.i566, 0
  br i1 %tobool285.not, label %if.end287, label %copy_to_user.exit569.if.then286_crit_edge

copy_to_user.exit569.if.then286_crit_edge:        ; preds = %copy_to_user.exit569
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then286

if.then286:                                       ; preds = %copy_to_user.exit569.if.then286_crit_edge, %if.end.i.i564.if.then286_crit_edge, %if.end283.if.then286_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end287:                                        ; preds = %copy_to_user.exit569
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %sw.epilog

sw.bb288:                                         ; preds = %entry
  %240 = load i32, ptr @viafb_bpp, align 4
  call void @viafb_get_gamma_support_state(i32 noundef %240, ptr noundef nonnull %state_info) #14
  %241 = ptrtoint ptr %state_info to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %state_info, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 600) #14
  %243 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i570 = and i32 %243, -16384
  %244 = inttoptr i32 %and.i.i.i570 to ptr
  %cpu_domain.i.i571 = getelementptr inbounds %struct.thread_info, ptr %244, i32 0, i32 4
  %245 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i571) #9, !srcloc !203
  %and.i572 = and i32 %245, -13
  %or.i573 = or i32 %and.i572, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i573) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %246 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %242, i32 -1226833921) #14, !srcloc !227
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool304.not = icmp eq i32 %246, 0
  br i1 %tobool304.not, label %sw.bb288.sw.epilog_crit_edge, label %sw.bb288.cleanup_crit_edge

sw.bb288.cleanup_crit_edge:                       ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb288.sw.epilog_crit_edge:                     ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i577:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i578 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i578, label %if.end59.i.i577.if.then11.i.i594_crit_edge, label %land.lhs.true.i.i581

if.end59.i.i577.if.then11.i.i594_crit_edge:       ; preds = %if.end59.i.i577
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i594

land.lhs.true.i.i581:                             ; preds = %if.end59.i.i577
  %247 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #20
  %asmresult.i.i579 = extractvalue { i32, i32 } %247, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i579)
  %cmp.i6.i580 = icmp eq i32 %asmresult.i.i579, 0
  br i1 %cmp.i6.i580, label %if.end.i.i591, label %land.lhs.true.i.i581.if.then11.i.i594_crit_edge, !prof !202

land.lhs.true.i.i581.if.then11.i.i594_crit_edge:  ; preds = %land.lhs.true.i.i581
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i594

if.end.i.i591:                                    ; preds = %land.lhs.true.i.i581
  %call.i.i.i582 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u, i32 noundef 12) #14
  %248 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i583 = and i32 %248, -16384
  %249 = inttoptr i32 %and.i.i.i.i.i.i583 to ptr
  %cpu_domain.i.i.i.i.i584 = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 4
  %250 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i584) #9, !srcloc !203
  %and.i.i.i.i585 = and i32 %250, -13
  %or.i.i.i.i586 = or i32 %and.i.i.i.i585, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i586) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i587 = call i32 @arm_copy_from_user(ptr noundef nonnull %u, ptr noundef %2, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i587)
  %tobool4.not.i.i590 = icmp eq i32 %call1.i.i.i587, 0
  br i1 %tobool4.not.i.i590, label %if.end59.i.i600, label %if.end.i.i591.if.then11.i.i594_crit_edge, !prof !202

if.end.i.i591.if.then11.i.i594_crit_edge:         ; preds = %if.end.i.i591
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i594

if.then11.i.i594:                                 ; preds = %if.end.i.i591.if.then11.i.i594_crit_edge, %land.lhs.true.i.i581.if.then11.i.i594_crit_edge, %if.end59.i.i577.if.then11.i.i594_crit_edge
  %res.0.i.i589801 = phi i32 [ %call1.i.i.i587, %if.end.i.i591.if.then11.i.i594_crit_edge ], [ 12, %if.end59.i.i577.if.then11.i.i594_crit_edge ], [ 12, %land.lhs.true.i.i581.if.then11.i.i594_crit_edge ]
  %sub.i.i592 = sub i32 12, %res.0.i.i589801
  %add.ptr.i.i593 = getelementptr i8, ptr %u, i32 %sub.i.i592
  %251 = call ptr @memset(ptr %add.ptr.i.i593, i32 0, i32 %res.0.i.i589801)
  br label %cleanup

if.end59.i.i600:                                  ; preds = %if.end.i.i591
  %y = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 2
  %252 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %y, align 4
  %x = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 1
  %253 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %x, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i601 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i601, label %if.end59.i.i600.cleanup_crit_edge, label %copy_to_user.exit609

if.end59.i.i600.cleanup_crit_edge:                ; preds = %if.end59.i.i600
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit609:                             ; preds = %if.end59.i.i600
  %call.i.i.i605 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 12) #14
  %call.i12.i.i606 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i606)
  %tobool315.not = icmp eq i32 %call.i12.i.i606, 0
  br i1 %tobool315.not, label %copy_to_user.exit609.sw.epilog_crit_edge, label %copy_to_user.exit609.cleanup_crit_edge

copy_to_user.exit609.cleanup_crit_edge:           ; preds = %copy_to_user.exit609
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit609.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit609
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i613:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i614 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i614, label %if.end59.i.i613.if.then11.i.i630_crit_edge, label %land.lhs.true.i.i617

if.end59.i.i613.if.then11.i.i630_crit_edge:       ; preds = %if.end59.i.i613
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i630

land.lhs.true.i.i617:                             ; preds = %if.end59.i.i613
  %254 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #20
  %asmresult.i.i615 = extractvalue { i32, i32 } %254, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i615)
  %cmp.i6.i616 = icmp eq i32 %asmresult.i.i615, 0
  br i1 %cmp.i6.i616, label %if.end.i.i627, label %land.lhs.true.i.i617.if.then11.i.i630_crit_edge, !prof !202

land.lhs.true.i.i617.if.then11.i.i630_crit_edge:  ; preds = %land.lhs.true.i.i617
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i630

if.end.i.i627:                                    ; preds = %land.lhs.true.i.i617
  %call.i.i.i618 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u, i32 noundef 12) #14
  %255 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i619 = and i32 %255, -16384
  %256 = inttoptr i32 %and.i.i.i.i.i.i619 to ptr
  %cpu_domain.i.i.i.i.i620 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 4
  %257 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i620) #9, !srcloc !203
  %and.i.i.i.i621 = and i32 %257, -13
  %or.i.i.i.i622 = or i32 %and.i.i.i.i621, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i622) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i623 = call i32 @arm_copy_from_user(ptr noundef nonnull %u, ptr noundef %2, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %257) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i623)
  %tobool4.not.i.i626 = icmp eq i32 %call1.i.i.i623, 0
  br i1 %tobool4.not.i.i626, label %if.end59.i.i636, label %if.end.i.i627.if.then11.i.i630_crit_edge, !prof !202

if.end.i.i627.if.then11.i.i630_crit_edge:         ; preds = %if.end.i.i627
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i630

if.then11.i.i630:                                 ; preds = %if.end.i.i627.if.then11.i.i630_crit_edge, %land.lhs.true.i.i617.if.then11.i.i630_crit_edge, %if.end59.i.i613.if.then11.i.i630_crit_edge
  %res.0.i.i625808 = phi i32 [ %call1.i.i.i623, %if.end.i.i627.if.then11.i.i630_crit_edge ], [ 12, %if.end59.i.i613.if.then11.i.i630_crit_edge ], [ 12, %land.lhs.true.i.i617.if.then11.i.i630_crit_edge ]
  %sub.i.i628 = sub i32 12, %res.0.i.i625808
  %add.ptr.i.i629 = getelementptr i8, ptr %u, i32 %sub.i.i628
  %258 = call ptr @memset(ptr %add.ptr.i.i629, i32 0, i32 %res.0.i.i625808)
  br label %cleanup

if.end59.i.i636:                                  ; preds = %if.end.i.i627
  %y323 = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 2
  %259 = ptrtoint ptr %y323 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %y323, align 4
  %x324 = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 1
  %260 = ptrtoint ptr %x324 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %x324, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i637 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i637, label %if.end59.i.i636.cleanup_crit_edge, label %copy_to_user.exit645

if.end59.i.i636.cleanup_crit_edge:                ; preds = %if.end59.i.i636
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit645:                             ; preds = %if.end59.i.i636
  %call.i.i.i641 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 12) #14
  %call.i12.i.i642 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i642)
  %tobool326.not = icmp eq i32 %call.i12.i.i642, 0
  br i1 %tobool326.not, label %copy_to_user.exit645.sw.epilog_crit_edge, label %copy_to_user.exit645.cleanup_crit_edge

copy_to_user.exit645.cleanup_crit_edge:           ; preds = %copy_to_user.exit645
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit645.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit645
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i649:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i650 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i650, label %if.end59.i.i649.if.then11.i.i666_crit_edge, label %land.lhs.true.i.i653

if.end59.i.i649.if.then11.i.i666_crit_edge:       ; preds = %if.end59.i.i649
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i666

land.lhs.true.i.i653:                             ; preds = %if.end59.i.i649
  %261 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #20
  %asmresult.i.i651 = extractvalue { i32, i32 } %261, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i651)
  %cmp.i6.i652 = icmp eq i32 %asmresult.i.i651, 0
  br i1 %cmp.i6.i652, label %if.end.i.i663, label %land.lhs.true.i.i653.if.then11.i.i666_crit_edge, !prof !202

land.lhs.true.i.i653.if.then11.i.i666_crit_edge:  ; preds = %land.lhs.true.i.i653
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i666

if.end.i.i663:                                    ; preds = %land.lhs.true.i.i653
  %call.i.i.i654 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u, i32 noundef 12) #14
  %262 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i655 = and i32 %262, -16384
  %263 = inttoptr i32 %and.i.i.i.i.i.i655 to ptr
  %cpu_domain.i.i.i.i.i656 = getelementptr inbounds %struct.thread_info, ptr %263, i32 0, i32 4
  %264 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i656) #9, !srcloc !203
  %and.i.i.i.i657 = and i32 %264, -13
  %or.i.i.i.i658 = or i32 %and.i.i.i.i657, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i658) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i659 = call i32 @arm_copy_from_user(ptr noundef nonnull %u, ptr noundef %2, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %264) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i659)
  %tobool4.not.i.i662 = icmp eq i32 %call1.i.i.i659, 0
  br i1 %tobool4.not.i.i662, label %if.end59.i.i672, label %if.end.i.i663.if.then11.i.i666_crit_edge, !prof !202

if.end.i.i663.if.then11.i.i666_crit_edge:         ; preds = %if.end.i.i663
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i666

if.then11.i.i666:                                 ; preds = %if.end.i.i663.if.then11.i.i666_crit_edge, %land.lhs.true.i.i653.if.then11.i.i666_crit_edge, %if.end59.i.i649.if.then11.i.i666_crit_edge
  %res.0.i.i661815 = phi i32 [ %call1.i.i.i659, %if.end.i.i663.if.then11.i.i666_crit_edge ], [ 12, %if.end59.i.i649.if.then11.i.i666_crit_edge ], [ 12, %land.lhs.true.i.i653.if.then11.i.i666_crit_edge ]
  %sub.i.i664 = sub i32 12, %res.0.i.i661815
  %add.ptr.i.i665 = getelementptr i8, ptr %u, i32 %sub.i.i664
  %265 = call ptr @memset(ptr %add.ptr.i.i665, i32 0, i32 %res.0.i.i661815)
  br label %cleanup

if.end59.i.i672:                                  ; preds = %if.end.i.i663
  %y334 = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 2
  %266 = ptrtoint ptr %y334 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %y334, align 4
  %x335 = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 1
  %267 = ptrtoint ptr %x335 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %x335, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i673 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i673, label %if.end59.i.i672.cleanup_crit_edge, label %copy_to_user.exit681

if.end59.i.i672.cleanup_crit_edge:                ; preds = %if.end59.i.i672
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit681:                             ; preds = %if.end59.i.i672
  %call.i.i.i677 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 12) #14
  %call.i12.i.i678 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i678)
  %tobool337.not = icmp eq i32 %call.i12.i.i678, 0
  br i1 %tobool337.not, label %copy_to_user.exit681.sw.epilog_crit_edge, label %copy_to_user.exit681.cleanup_crit_edge

copy_to_user.exit681.cleanup_crit_edge:           ; preds = %copy_to_user.exit681
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit681.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit681
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i685:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i686 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i686, label %if.end59.i.i685.if.then11.i.i702_crit_edge, label %land.lhs.true.i.i689

if.end59.i.i685.if.then11.i.i702_crit_edge:       ; preds = %if.end59.i.i685
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i702

land.lhs.true.i.i689:                             ; preds = %if.end59.i.i685
  %268 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #20
  %asmresult.i.i687 = extractvalue { i32, i32 } %268, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i687)
  %cmp.i6.i688 = icmp eq i32 %asmresult.i.i687, 0
  br i1 %cmp.i6.i688, label %if.end.i.i699, label %land.lhs.true.i.i689.if.then11.i.i702_crit_edge, !prof !202

land.lhs.true.i.i689.if.then11.i.i702_crit_edge:  ; preds = %land.lhs.true.i.i689
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i702

if.end.i.i699:                                    ; preds = %land.lhs.true.i.i689
  %call.i.i.i690 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u, i32 noundef 12) #14
  %269 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i691 = and i32 %269, -16384
  %270 = inttoptr i32 %and.i.i.i.i.i.i691 to ptr
  %cpu_domain.i.i.i.i.i692 = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 4
  %271 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i692) #9, !srcloc !203
  %and.i.i.i.i693 = and i32 %271, -13
  %or.i.i.i.i694 = or i32 %and.i.i.i.i693, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i694) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i695 = call i32 @arm_copy_from_user(ptr noundef nonnull %u, ptr noundef %2, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %271) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i695)
  %tobool4.not.i.i698 = icmp eq i32 %call1.i.i.i695, 0
  br i1 %tobool4.not.i.i698, label %if.end59.i.i708, label %if.end.i.i699.if.then11.i.i702_crit_edge, !prof !202

if.end.i.i699.if.then11.i.i702_crit_edge:         ; preds = %if.end.i.i699
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i702

if.then11.i.i702:                                 ; preds = %if.end.i.i699.if.then11.i.i702_crit_edge, %land.lhs.true.i.i689.if.then11.i.i702_crit_edge, %if.end59.i.i685.if.then11.i.i702_crit_edge
  %res.0.i.i697822 = phi i32 [ %call1.i.i.i695, %if.end.i.i699.if.then11.i.i702_crit_edge ], [ 12, %if.end59.i.i685.if.then11.i.i702_crit_edge ], [ 12, %land.lhs.true.i.i689.if.then11.i.i702_crit_edge ]
  %sub.i.i700 = sub i32 12, %res.0.i.i697822
  %add.ptr.i.i701 = getelementptr i8, ptr %u, i32 %sub.i.i700
  %272 = call ptr @memset(ptr %add.ptr.i.i701, i32 0, i32 %res.0.i.i697822)
  br label %cleanup

if.end59.i.i708:                                  ; preds = %if.end.i.i699
  %y345 = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 2
  %273 = ptrtoint ptr %y345 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %y345, align 4
  %x346 = getelementptr inbounds %struct._panel_size_pos_info, ptr %u, i32 0, i32 1
  %274 = ptrtoint ptr %x346 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %x346, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #14
  %call.i.i709 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i709, label %if.end59.i.i708.cleanup_crit_edge, label %copy_to_user.exit717

if.end59.i.i708.cleanup_crit_edge:                ; preds = %if.end59.i.i708
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit717:                             ; preds = %if.end59.i.i708
  %call.i.i.i713 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %u, i32 noundef 12) #14
  %call.i12.i.i714 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %u, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i714)
  %tobool348.not = icmp eq i32 %call.i12.i.i714, 0
  br i1 %tobool348.not, label %copy_to_user.exit717.sw.epilog_crit_edge, label %copy_to_user.exit717.cleanup_crit_edge

copy_to_user.exit717.cleanup_crit_edge:           ; preds = %copy_to_user.exit717
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit717.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit717
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end59.i.i721:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i722 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i722, label %if.end59.i.i721.if.then11.i.i738_crit_edge, label %land.lhs.true.i.i725

if.end59.i.i721.if.then11.i.i738_crit_edge:       ; preds = %if.end59.i.i721
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i738

land.lhs.true.i.i725:                             ; preds = %if.end59.i.i721
  %275 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i723 = extractvalue { i32, i32 } %275, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i723)
  %cmp.i6.i724 = icmp eq i32 %asmresult.i.i723, 0
  br i1 %cmp.i6.i724, label %if.end.i.i735, label %land.lhs.true.i.i725.if.then11.i.i738_crit_edge, !prof !202

land.lhs.true.i.i725.if.then11.i.i738_crit_edge:  ; preds = %land.lhs.true.i.i725
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i738

if.end.i.i735:                                    ; preds = %land.lhs.true.i.i725
  %call.i.i.i726 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u, i32 noundef 12) #14
  %276 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i727 = and i32 %276, -16384
  %277 = inttoptr i32 %and.i.i.i.i.i.i727 to ptr
  %cpu_domain.i.i.i.i.i728 = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 4
  %278 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i728) #9, !srcloc !203
  %and.i.i.i.i729 = and i32 %278, -13
  %or.i.i.i.i730 = or i32 %and.i.i.i.i729, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i730) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i731 = call i32 @arm_copy_from_user(ptr noundef nonnull %u, ptr noundef %2, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %278) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i731)
  %tobool4.not.i.i734 = icmp eq i32 %call1.i.i.i731, 0
  br i1 %tobool4.not.i.i734, label %if.end.i.i735.sw.epilog_crit_edge, label %if.end.i.i735.if.then11.i.i738_crit_edge, !prof !202

if.end.i.i735.if.then11.i.i738_crit_edge:         ; preds = %if.end.i.i735
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i738

if.end.i.i735.sw.epilog_crit_edge:                ; preds = %if.end.i.i735
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then11.i.i738:                                 ; preds = %if.end.i.i735.if.then11.i.i738_crit_edge, %land.lhs.true.i.i725.if.then11.i.i738_crit_edge, %if.end59.i.i721.if.then11.i.i738_crit_edge
  %res.0.i.i733829 = phi i32 [ %call1.i.i.i731, %if.end.i.i735.if.then11.i.i738_crit_edge ], [ 12, %if.end59.i.i721.if.then11.i.i738_crit_edge ], [ 12, %land.lhs.true.i.i725.if.then11.i.i738_crit_edge ]
  %sub.i.i736 = sub i32 12, %res.0.i.i733829
  %add.ptr.i.i737 = getelementptr i8, ptr %u, i32 %sub.i.i736
  %279 = call ptr @memset(ptr %add.ptr.i.i737, i32 0, i32 %res.0.i.i733829)
  br label %cleanup

if.end59.i.i744:                                  ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #14
  %call.i.i745 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i745, label %if.end59.i.i744.if.then11.i.i761_crit_edge, label %land.lhs.true.i.i748

if.end59.i.i744.if.then11.i.i761_crit_edge:       ; preds = %if.end59.i.i744
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i761

land.lhs.true.i.i748:                             ; preds = %if.end59.i.i744
  %280 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #20, !srcloc !201
  %asmresult.i.i746 = extractvalue { i32, i32 } %280, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i746)
  %cmp.i6.i747 = icmp eq i32 %asmresult.i.i746, 0
  br i1 %cmp.i6.i747, label %if.end.i.i758, label %land.lhs.true.i.i748.if.then11.i.i761_crit_edge, !prof !202

land.lhs.true.i.i748.if.then11.i.i761_crit_edge:  ; preds = %land.lhs.true.i.i748
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i761

if.end.i.i758:                                    ; preds = %land.lhs.true.i.i748
  %call.i.i.i749 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u, i32 noundef 12) #14
  %281 = call i32 @llvm.read_register.i32(metadata !190) #14
  %and.i.i.i.i.i.i750 = and i32 %281, -16384
  %282 = inttoptr i32 %and.i.i.i.i.i.i750 to ptr
  %cpu_domain.i.i.i.i.i751 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 4
  %283 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i751) #9, !srcloc !203
  %and.i.i.i.i752 = and i32 %283, -13
  %or.i.i.i.i753 = or i32 %and.i.i.i.i752, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i753) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %call1.i.i.i754 = call i32 @arm_copy_from_user(ptr noundef nonnull %u, ptr noundef %2, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %283) #14, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i754)
  %tobool4.not.i.i757 = icmp eq i32 %call1.i.i.i754, 0
  br i1 %tobool4.not.i.i757, label %if.end.i.i758.sw.epilog_crit_edge, label %if.end.i.i758.if.then11.i.i761_crit_edge, !prof !202

if.end.i.i758.if.then11.i.i761_crit_edge:         ; preds = %if.end.i.i758
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i761

if.end.i.i758.sw.epilog_crit_edge:                ; preds = %if.end.i.i758
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then11.i.i761:                                 ; preds = %if.end.i.i758.if.then11.i.i761_crit_edge, %land.lhs.true.i.i748.if.then11.i.i761_crit_edge, %if.end59.i.i744.if.then11.i.i761_crit_edge
  %res.0.i.i756834 = phi i32 [ %call1.i.i.i754, %if.end.i.i758.if.then11.i.i761_crit_edge ], [ 12, %if.end59.i.i744.if.then11.i.i761_crit_edge ], [ 12, %land.lhs.true.i.i748.if.then11.i.i761_crit_edge ]
  %sub.i.i759 = sub i32 12, %res.0.i.i756834
  %add.ptr.i.i760 = getelementptr i8, ptr %u, i32 %sub.i.i759
  %284 = call ptr @memset(ptr %add.ptr.i.i760, i32 0, i32 %res.0.i.i756834)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.i758.sw.epilog_crit_edge, %if.end.i.i735.sw.epilog_crit_edge, %copy_to_user.exit717.sw.epilog_crit_edge, %copy_to_user.exit681.sw.epilog_crit_edge, %copy_to_user.exit645.sw.epilog_crit_edge, %copy_to_user.exit609.sw.epilog_crit_edge, %sw.bb288.sw.epilog_crit_edge, %if.end287, %if.end278, %copy_to_user.exit556.sw.epilog_crit_edge, %sw.bb243.sw.epilog_crit_edge, %sw.bb224.sw.epilog_crit_edge, %sw.bb205.sw.epilog_crit_edge, %copy_to_user.exit531.sw.epilog_crit_edge, %copy_to_user.exit518.sw.epilog_crit_edge, %copy_to_user.exit505.sw.epilog_crit_edge, %if.then131, %if.end128.sw.epilog_crit_edge, %if.then114, %if.end111.sw.epilog_crit_edge, %copy_to_user.exit446.sw.epilog_crit_edge, %copy_to_user.exit433.sw.epilog_crit_edge, %if.end35, %copy_to_user.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge843
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11.i.i761, %if.then11.i.i738, %copy_to_user.exit717.cleanup_crit_edge, %if.end59.i.i708.cleanup_crit_edge, %if.then11.i.i702, %copy_to_user.exit681.cleanup_crit_edge, %if.end59.i.i672.cleanup_crit_edge, %if.then11.i.i666, %copy_to_user.exit645.cleanup_crit_edge, %if.end59.i.i636.cleanup_crit_edge, %if.then11.i.i630, %copy_to_user.exit609.cleanup_crit_edge, %if.end59.i.i600.cleanup_crit_edge, %if.then11.i.i594, %sw.bb288.cleanup_crit_edge, %if.then286, %sw.bb279.cleanup_crit_edge, %if.then276, %copy_to_user.exit556.cleanup_crit_edge, %if.end.i.i551.cleanup_crit_edge, %if.end59.i.i547.cleanup_crit_edge, %sw.bb243.cleanup_crit_edge, %sw.bb224.cleanup_crit_edge, %sw.bb205.cleanup_crit_edge, %copy_to_user.exit531.cleanup_crit_edge, %if.end.i.i526.cleanup_crit_edge, %retrieve_device_setting.exit.cleanup_crit_edge, %copy_to_user.exit518.cleanup_crit_edge, %if.end.i.i513.cleanup_crit_edge, %sw.bb195.cleanup_crit_edge, %copy_to_user.exit505.cleanup_crit_edge, %if.end.i.i500.cleanup_crit_edge, %sw.bb133.cleanup_crit_edge, %if.then11.i.i490, %if.then11.i.i467, %copy_to_user.exit446.cleanup_crit_edge, %if.end.i.i441.cleanup_crit_edge, %if.end59.i.i437.cleanup_crit_edge, %copy_to_user.exit433.cleanup_crit_edge, %if.end.i.i428.cleanup_crit_edge, %if.end59.i.i424.cleanup_crit_edge, %if.then11.i.i, %sw.bb12, %sw.bb10, %sw.bb3, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -14, %if.then286 ], [ %236, %if.then276 ], [ %23, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %13, %sw.bb3 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit433.cleanup_crit_edge ], [ -14, %copy_to_user.exit446.cleanup_crit_edge ], [ -14, %copy_to_user.exit505.cleanup_crit_edge ], [ -14, %copy_to_user.exit518.cleanup_crit_edge ], [ -14, %copy_to_user.exit531.cleanup_crit_edge ], [ -14, %sw.bb205.cleanup_crit_edge ], [ -14, %sw.bb224.cleanup_crit_edge ], [ -14, %sw.bb243.cleanup_crit_edge ], [ -14, %copy_to_user.exit556.cleanup_crit_edge ], [ -12, %sw.bb279.cleanup_crit_edge ], [ -14, %sw.bb288.cleanup_crit_edge ], [ -14, %copy_to_user.exit609.cleanup_crit_edge ], [ -14, %copy_to_user.exit645.cleanup_crit_edge ], [ -14, %copy_to_user.exit681.cleanup_crit_edge ], [ -14, %copy_to_user.exit717.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i424.cleanup_crit_edge ], [ -14, %if.end.i.i428.cleanup_crit_edge ], [ -14, %if.end59.i.i437.cleanup_crit_edge ], [ -14, %if.end.i.i441.cleanup_crit_edge ], [ -14, %if.then11.i.i467 ], [ -14, %if.then11.i.i490 ], [ -14, %sw.bb133.cleanup_crit_edge ], [ -14, %if.end.i.i500.cleanup_crit_edge ], [ -14, %sw.bb195.cleanup_crit_edge ], [ -14, %if.end.i.i513.cleanup_crit_edge ], [ -14, %retrieve_device_setting.exit.cleanup_crit_edge ], [ -14, %if.end.i.i526.cleanup_crit_edge ], [ -14, %if.end59.i.i547.cleanup_crit_edge ], [ -14, %if.end.i.i551.cleanup_crit_edge ], [ -14, %if.then11.i.i594 ], [ -14, %if.end59.i.i600.cleanup_crit_edge ], [ -14, %if.then11.i.i630 ], [ -14, %if.end59.i.i636.cleanup_crit_edge ], [ -14, %if.then11.i.i666 ], [ -14, %if.end59.i.i672.cleanup_crit_edge ], [ -14, %if.then11.i.i702 ], [ -14, %if.end59.i.i708.cleanup_crit_edge ], [ -14, %if.then11.i.i738 ], [ -14, %if.then11.i.i761 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpu32) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %driver_name) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_info) #14
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %u) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_set_primary_color_register(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_set_secondary_color_register(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_show_hw_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_ioctl_get_viafb_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_ioctl_hotplug(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_dvi_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_lcd_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_dvi_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_lcd_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_get_device_support_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_get_device_connect_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @viafb_lcd_get_support_expand_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_set_gamma_table(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_get_gamma_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_get_gamma_support_state(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 2032, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @viafb_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @viafb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @pseudo_pal, !7, !"pseudo_pal", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 20, i32 12}
!8 = !{ptr @viafb_mode, !9, !"viafb_mode", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 23, i32 14}
!10 = !{ptr @viafb_mode1, !11, !"viafb_mode1", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 24, i32 14}
!12 = !{ptr @viafb_second_offset, !13, !"viafb_second_offset", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 28, i32 21}
!14 = !{ptr @viafb_second_size, !15, !"viafb_second_size", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 29, i32 12}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1698, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @i2c_bus_probe._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @i2c_bus_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1702, i32 2}
!23 = !{ptr @i2c_bus_probe._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @i2c_bus_probe._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1707, i32 3}
!27 = !{ptr @i2c_bus_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @i2c_bus_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1711, i32 2}
!31 = !{ptr @i2c_bus_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @i2c_bus_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1064, i32 24}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1066, i32 29}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1068, i32 29}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1070, i32 29}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1072, i32 29}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 37, i32 31}
!45 = !{ptr @viafb_lcd_port, !46, !"viafb_lcd_port", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 37, i32 14}
!47 = !{ptr @viafb_dvi_port, !48, !"viafb_dvi_port", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 38, i32 14}
!49 = !{ptr @viafb_accel, !50, !"viafb_accel", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 31, i32 12}
!51 = !{ptr @viafb_bpp, !52, !"viafb_bpp", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 25, i32 12}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 19, i32 27}
!55 = distinct !{null, !56, !"viafb_name", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 19, i32 14}
!57 = !{ptr @viafb_bpp1, !58, !"viafb_bpp1", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 26, i32 12}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1571, i32 29}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1576, i32 15}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1577, i32 15}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1578, i32 15}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1579, i32 15}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1582, i32 16}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1586, i32 3}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1588, i32 27}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1590, i32 15}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1592, i32 27}
!79 = !{ptr @viafb_dvp0_proc_ops, !80, !"viafb_dvp0_proc_ops", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1176, i32 30}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1120, i32 16}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1143, i32 25}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!87 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!92 = !{ptr @viafb_dvp1_proc_ops, !93, !"viafb_dvp1_proc_ops", i1 false, i1 false}
!93 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1240, i32 30}
!94 = !{ptr @viafb_dfph_proc_ops, !95, !"viafb_dfph_proc_ops", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1274, i32 30}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1252, i32 16}
!98 = !{ptr @viafb_dfpl_proc_ops, !99, !"viafb_dfpl_proc_ops", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1308, i32 30}
!100 = !{ptr @viafb_vt1636_proc_ops, !101, !"viafb_vt1636_proc_ops", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1443, i32 30}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1327, i32 17}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1340, i32 17}
!106 = !{ptr @supported_odev_map, !107, !"supported_odev_map", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 54, i32 18}
!108 = !{ptr @viafb_iga1_odev_proc_ops, !109, !"viafb_iga1_odev_proc_ops", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1520, i32 30}
!110 = !{ptr @viafb_iga2_odev_proc_ops, !111, !"viafb_iga2_odev_proc_ops", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1559, i32 30}
!112 = !{ptr @viafb_fb_pm_hooks, !113, !"viafb_fb_pm_hooks", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1688, i32 30}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1936, i32 38}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1940, i32 26}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1942, i32 33}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1944, i32 33}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1947, i32 33}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1950, i32 33}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1953, i32 33}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1956, i32 33}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1960, i32 33}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1964, i32 33}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1967, i32 33}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1970, i32 33}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1973, i32 4}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1977, i32 33}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1981, i32 4}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1986, i32 4}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1990, i32 33}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1993, i32 33}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1996, i32 33}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1998, i32 33}
!154 = !{ptr @viafb_active_dev, !155, !"viafb_active_dev", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 34, i32 14}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1006, i32 39}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1011, i32 39}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1016, i32 39}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1021, i32 39}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1026, i32 39}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1031, i32 39}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1036, i32 39}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1040, i32 39}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1044, i32 39}
!174 = !{ptr @.str.68, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1048, i32 39}
!176 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 1052, i32 39}
!178 = !{ptr @viafb_ops, !179, !"viafb_ops", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 2043, i32 22}
!180 = !{ptr @.str.70, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 794, i32 3}
!182 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @viafb_cursor._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @viafb_cursor._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/video/fbdev/via/viafbdev.c", i32 399, i32 2}
!187 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @viafb_ioctl._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @viafb_ioctl._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"auto-init"}
!201 = !{i64 2152480273, i64 2152480298}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i64 4975828}
!204 = !{i64 4976025}
!205 = !{i64 2152461258}
!206 = !{i64 2154503845}
!207 = !{i64 5759069}
!208 = !{i64 5759464}
!209 = !{i64 2154504235}
!210 = !{i64 2154504470}
!211 = !{i64 2154502263}
!212 = !{i64 2154502653}
!213 = !{i64 2156432756}
!214 = !{i64 5759266}
!215 = !{i64 2156433154}
!216 = !{i64 5759684}
!217 = !{i64 2156435469}
!218 = !{i64 2156435687}
!219 = !{i64 2156436100}
!220 = !{i64 2156436509}
!221 = !{i64 2152480954, i64 2152480979}
!222 = !{i64 2156374268, i64 2156374548, i64 2156374882, i64 2156375216}
!223 = !{i64 2156383269, i64 2156383549, i64 2156383883, i64 2156384217}
!224 = !{i64 2156392257, i64 2156392537, i64 2156392871, i64 2156393205}
!225 = !{i64 2156401072, i64 2156401352, i64 2156401686, i64 2156402020}
!226 = !{i64 2156409887, i64 2156410167, i64 2156410501, i64 2156410835}
!227 = !{i64 2156422986, i64 2156423266, i64 2156423600, i64 2156423934}
