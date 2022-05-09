; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/gbefb.c_pt.bc'
source_filename = "../drivers/video/fbdev/gbefb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.85 = type { ptr, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gbe_pll_info = type { i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.gbefb_par = type { %struct.fb_var_screeninfo, %struct.gbe_timing_info, i32, i32 }
%struct.gbe_timing_info = type { i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sgi_gbe = type { i32, i32, i32, i32, i32, i32, i32, i32, [16376 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16364 x i32], i32, i32, i32, [16381 x i32], i32, i32, i32, i32, [16380 x i32], i32, i32, [8190 x i32], [32 x i32], [8160 x i32], [6144 x i32], [2048 x i32], i32, [8191 x i32], [256 x i32], [7936 x i32], [1024 x i32], [7168 x i32], i32, i32, [3 x i32], [8187 x i32], [64 x i32], [8128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@gbefb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gbefb_probe, ptr @gbefb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_gbefb__303_1291_gbefb_init6 = internal global ptr @gbefb_init, section ".initcall6.init", align 4
@__exitcall_gbefb_exit = internal global ptr @gbefb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file304 = internal constant [37 x i8] c"gbefb.file=drivers/video/fbdev/gbefb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [18 x i8] c"gbefb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gbefb\00", [26 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GBE\00", [28 x i8] zeroinitializer }, align 32
@gbefb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gbefb: couldn't reserve mmio region\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gbefb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/gbefb.c\00", [36 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr = internal global ptr @gbefb_probe._entry, section ".printk_index", align 4
@gbe = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gbefb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013gbefb: couldn't map mmio region\0A\00", [61 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr.7 = internal global ptr @gbefb_probe._entry.5, section ".printk_index", align 4
@gbe_revision = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gbe_tiles = internal global { %struct.anon.85, [24 x i8] } zeroinitializer, align 32
@gbefb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gbefb: couldn't allocate tiles table\0A\00", [56 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr.10 = internal global ptr @gbefb_probe._entry.8, section ".printk_index", align 4
@gbe_mem_phys = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gbe_mem_size = internal global { i32, [28 x i8] } { i32 4194304, [28 x i8] zeroinitializer }, align 32
@gbe_mem = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gbefb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013gbefb: couldn't map framebuffer\0A\00", [61 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr.13 = internal global ptr @gbefb_probe._entry.11, section ".printk_index", align 4
@gbe_dma_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gbefb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gbefb: couldn't allocate framebuffer memory\0A\00", [49 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr.16 = internal global ptr @gbefb_probe._entry.14, section ".printk_index", align 4
@gbefb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gbefb_check_var, ptr @gbefb_set_par, ptr @gbefb_setcolreg, ptr null, ptr @gbefb_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr @gbefb_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pseudo_palette = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@default_mode = internal global { ptr, [28 x i8] } { ptr @default_mode_CRT, [28 x i8] zeroinitializer }, align 32
@default_var = internal global { ptr, [28 x i8] } { ptr @default_var_CRT, [28 x i8] zeroinitializer }, align 32
@gbefb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gbefb: couldn't register framebuffer\0A\00", [56 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr.19 = internal global ptr @gbefb_probe._entry.17, section ".printk_index", align 4
@gbefb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016fb%d: %s rev %d @ 0x%08x using %dkB memory\0A\00", [50 x i8] zeroinitializer }, align 32
@gbefb_probe._entry_ptr.22 = internal global ptr @gbefb_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"monitor:\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crt\00", [28 x i8] zeroinitializer }, align 32
@flat_panel_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@default_var_CRT = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39722, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@default_mode_CRT = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39722, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1600sw\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@default_var_LCD = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 1600, i32 1024, i32 1600, i32 1024, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 9353, i32 20, i32 30, i32 37, i32 3, i32 20, i32 3, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@default_mode_LCD = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 1600, i32 1024, i32 9353, i32 20, i32 30, i32 37, i32 3, i32 20, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mem:\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gbe_cmap = internal global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@gbe_pll_table = internal constant { [2 x %struct.gbe_pll_info], [40 x i8] } { [2 x %struct.gbe_pll_info] [%struct.gbe_pll_info { i32 20, i32 80, i32 220 }, %struct.gbe_pll_info { i32 27, i32 80, i32 220 }], [40 x i8] zeroinitializer }, align 32
@gbe_turned_on = internal global { i1, [31 x i8] } zeroinitializer, align 32
@gbe_turn_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013gbefb: turn off DMA timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gbe_turn_off\00", [19 x i8] zeroinitializer }, align 32
@gbe_turn_off._entry_ptr = internal global ptr @gbe_turn_off._entry, section ".printk_index", align 4
@gbe_turn_off._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gbefb: wait for vpixen_off timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@gbe_turn_off._entry_ptr.33 = internal global ptr @gbe_turn_off._entry.31, section ".printk_index", align 4
@gbe_turn_off._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gbe_turn_off._entry_ptr.35 = internal global ptr @gbe_turn_off._entry.34, section ".printk_index", align 4
@gbe_turn_off._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.4, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gbefb: turn off pixel clock timed out\0A\00", [55 x i8] zeroinitializer }, align 32
@gbe_turn_off._entry_ptr.38 = internal global ptr @gbe_turn_off._entry.36, section ".printk_index", align 4
@gbe_turn_off._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.4, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gbefb: turn off dotclock timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@gbe_turn_off._entry_ptr.41 = internal global ptr @gbe_turn_off._entry.39, section ".printk_index", align 4
@gbe_turn_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gbefb: turn on dotclock timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gbe_turn_on\00", [20 x i8] zeroinitializer }, align 32
@gbe_turn_on._entry_ptr = internal global ptr @gbe_turn_on._entry, section ".printk_index", align 4
@gbe_turn_on._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gbefb: turn on pixel clock timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@gbe_turn_on._entry_ptr.46 = internal global ptr @gbe_turn_on._entry.44, section ".printk_index", align 4
@gbe_turn_on._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gbefb: turn on DMA timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@gbe_turn_on._entry_ptr.49 = internal global ptr @gbe_turn_on._entry.47, section ".printk_index", align 4
@gbe_loadcmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013gbefb: cmap FIFO timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gbe_loadcmap\00", [19 x i8] zeroinitializer }, align 32
@gbe_loadcmap._entry_ptr = internal global ptr @gbe_loadcmap._entry, section ".printk_index", align 4
@gbefb_setcolreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.52, ptr @.str.4, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gbefb_setcolreg\00", [16 x i8] zeroinitializer }, align 32
@gbefb_setcolreg._entry_ptr = internal global ptr @gbefb_setcolreg._entry, section ".printk_index", align 4
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gbefb_show_memsize, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gbefb_show_rev, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 16, i64 32]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"gbefb_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1257, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1261, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1143, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1144, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [4 x i8] c"gbe\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 33, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1152, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"gbe_revision\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 75, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [10 x i8] c"gbe_tiles\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 73, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1162, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"gbe_mem_phys\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 68, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"gbe_mem_size\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 65, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant [8 x i8] c"gbe_mem\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 66, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1172, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"gbe_dma_addr\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 67, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1185, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [10 x i8] c"gbefb_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1045, i32 28 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"pseudo_palette\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 79, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 83, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 178, i32 29 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"default_var\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 179, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1218, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1226, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1098, i32 38 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1099, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1100, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"flat_panel_enabled\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"default_var_CRT\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 86, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"default_mode_CRT\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 149, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1104, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1105, i32 31 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"default_var_LCD\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 117, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"default_mode_LCD\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 164, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1110, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"gbe_cmap\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 80, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"gbe_pll_table\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 449, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant [14 x i8] c"gbe_turned_on\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 244, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 258, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 268, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 283, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 298, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 335, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 350, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 365, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 378, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 867, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1066, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1063, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1073, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [31 x i8] c"../drivers/video/fbdev/gbefb.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1070, i32 34 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_gbefb_exit, ptr @__initcall__kmod_gbefb__303_1291_gbefb_init6, ptr @gbe_loadcmap._entry, ptr @gbe_loadcmap._entry_ptr, ptr @gbe_turn_off._entry, ptr @gbe_turn_off._entry.31, ptr @gbe_turn_off._entry.34, ptr @gbe_turn_off._entry.36, ptr @gbe_turn_off._entry.39, ptr @gbe_turn_off._entry_ptr, ptr @gbe_turn_off._entry_ptr.33, ptr @gbe_turn_off._entry_ptr.35, ptr @gbe_turn_off._entry_ptr.38, ptr @gbe_turn_off._entry_ptr.41, ptr @gbe_turn_on._entry, ptr @gbe_turn_on._entry.44, ptr @gbe_turn_on._entry.47, ptr @gbe_turn_on._entry_ptr, ptr @gbe_turn_on._entry_ptr.46, ptr @gbe_turn_on._entry_ptr.49, ptr @gbefb_exit, ptr @gbefb_probe._entry, ptr @gbefb_probe._entry.11, ptr @gbefb_probe._entry.14, ptr @gbefb_probe._entry.17, ptr @gbefb_probe._entry.20, ptr @gbefb_probe._entry.5, ptr @gbefb_probe._entry.8, ptr @gbefb_probe._entry_ptr, ptr @gbefb_probe._entry_ptr.10, ptr @gbefb_probe._entry_ptr.13, ptr @gbefb_probe._entry_ptr.16, ptr @gbefb_probe._entry_ptr.19, ptr @gbefb_probe._entry_ptr.22, ptr @gbefb_probe._entry_ptr.7, ptr @gbefb_setcolreg._entry, ptr @gbefb_setcolreg._entry_ptr, ptr @gbefb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gbe, ptr @.str.6, ptr @gbe_revision, ptr @gbe_tiles, ptr @.str.9, ptr @gbe_mem_phys, ptr @gbe_mem_size, ptr @gbe_mem, ptr @.str.12, ptr @gbe_dma_addr, ptr @.str.15, ptr @gbefb_ops, ptr @pseudo_palette, ptr @mode_option, ptr @default_mode, ptr @default_var, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @flat_panel_enabled, ptr @default_var_CRT, ptr @default_mode_CRT, ptr @.str.26, ptr @.str.27, ptr @default_var_LCD, ptr @default_mode_LCD, ptr @.str.28, ptr @gbe_cmap, ptr @gbe_pll_table, ptr @gbe_turned_on, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @dev_attr_size, ptr @dev_attr_revision, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_revision to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_tiles to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_mem_phys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_mem_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_dma_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pseudo_palette to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_var to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flat_panel_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_var_CRT to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode_CRT to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_var_LCD to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode_LCD to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_cmap to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_pll_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turned_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_off._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_off._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_off._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_off._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_on._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_turn_on._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_loadcmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbefb_setcolreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gbefb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_device_unregister(ptr noundef null) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @gbefb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gbefb_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_probe(ptr noundef %p_dev) #2 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %this_opt.i = alloca ptr, align 4
  %options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #12
  %0 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %options, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %p_dev, i32 0, i32 3
  %call = tail call ptr @framebuffer_alloc(i32 noundef 212, ptr noundef %dev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %options) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_release_framebuffer_crit_edge

if.end.out_release_framebuffer_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_framebuffer

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_opt.i) #12
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end4.gbefb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end4.gbefb_setup.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbefb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.gbefb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.gbefb_setup.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbefb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call1.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.23) #12
  %6 = ptrtoint ptr %this_opt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i, ptr %this_opt.i, align 4
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %while.cond.preheader.i.gbefb_setup.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.gbefb_setup.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbefb_setup.exit

while.body.i:                                     ; preds = %if.end34.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %if.end34.i.while.body.i_crit_edge ], [ %call1.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call2.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(9) @.str.24, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else18.i

if.then4.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 8
  %call5.i = call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(4) @.str.25, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 false, ptr @flat_panel_enabled, align 4
  store ptr @default_var_CRT, ptr @default_var, align 4
  store ptr @default_mode_CRT, ptr @default_mode, align 4
  br label %if.end34.i

if.else.i:                                        ; preds = %if.then4.i
  %call9.i = call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(7) @.str.26, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.if.then15.i_crit_edge, label %lor.lhs.false11.i

if.else.i.if.then15.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

lor.lhs.false11.i:                                ; preds = %if.else.i
  %call13.i = call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(4) @.str.27, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false11.i.if.then15.i_crit_edge, label %lor.lhs.false11.i.if.end34.i_crit_edge

lor.lhs.false11.i.if.end34.i_crit_edge:           ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

lor.lhs.false11.i.if.then15.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false11.i.if.then15.i_crit_edge, %if.else.i.if.then15.i_crit_edge
  store i1 true, ptr @flat_panel_enabled, align 4
  store ptr @default_var_LCD, ptr @default_var, align 4
  store ptr @default_mode_LCD, ptr @default_mode, align 4
  br label %if.end34.i

if.else18.i:                                      ; preds = %while.body.i
  %call19.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(5) @.str.28, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else32.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr22.i = getelementptr i8, ptr %call3.i, i32 4
  %call23.i = call i64 @memparse(ptr noundef %add.ptr22.i, ptr noundef nonnull %this_opt.i) #12
  %conv.i = trunc i64 %call23.i to i32
  %7 = call i32 @llvm.umin.i32(i32 %conv.i, i32 4194304) #12
  %8 = call i32 @llvm.umax.i32(i32 %7, i32 65536) #12
  store i32 %8, ptr @gbe_mem_size, align 4
  br label %if.end34.i

if.else32.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call3.i, ptr @mode_option, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else32.i, %if.then21.i, %if.then15.i, %lor.lhs.false11.i.if.end34.i_crit_edge, %if.then7.i
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.23) #12
  %9 = ptrtoint ptr %this_opt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %this_opt.i, align 4
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end34.i.gbefb_setup.exit_crit_edge, label %if.end34.i.while.body.i_crit_edge

if.end34.i.while.body.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end34.i.gbefb_setup.exit_crit_edge:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbefb_setup.exit

gbefb_setup.exit:                                 ; preds = %if.end34.i.gbefb_setup.exit_crit_edge, %while.cond.preheader.i.gbefb_setup.exit_crit_edge, %lor.lhs.false.i.gbefb_setup.exit_crit_edge, %if.end4.gbefb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_opt.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call6 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef 369098752, i32 noundef 524324, ptr noundef nonnull @.str.1, i32 noundef 0) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %gbefb_setup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15
  br label %out_release_framebuffer

if.end10:                                         ; preds = %gbefb_setup.exit
  %call12 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef 369098752, i32 noundef 524324) #12
  store ptr %call12, ptr @gbe, align 4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.out_release_mem_region_crit_edge, label %if.end20

if.end10.out_release_mem_region_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_mem_region

if.end20:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call12, align 4
  %and = and i32 %11, 15
  store i32 %and, ptr @gbe_revision, align 4
  %call.i122 = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef getelementptr inbounds (%struct.anon.85, ptr @gbe_tiles, i32 0, i32 1), i32 noundef 3264, i32 noundef 0) #12
  store ptr %call.i122, ptr @gbe_tiles, align 4
  %tobool23.not = icmp eq ptr %call.i122, null
  br i1 %tobool23.not, label %if.end20.out_release_mem_region_crit_edge, label %if.end30

if.end20.out_release_mem_region_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_mem_region

if.end30:                                         ; preds = %if.end20
  %12 = load i32, ptr @gbe_mem_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not = icmp eq i32 %12, 0
  %13 = load i32, ptr @gbe_mem_size, align 4
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  %call34 = call ptr @devm_ioremap_wc(ptr noundef %dev, i32 noundef %12, i32 noundef %13) #12
  store ptr %call34, ptr @gbe_mem, align 4
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then32.out_release_mem_region_crit_edge, label %if.end42

if.then32.out_release_mem_region_crit_edge:       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_mem_region

if.end42:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @gbe_dma_addr, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end30
  %call44 = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %13, ptr noundef nonnull @gbe_dma_addr, i32 noundef 3264, i32 noundef 4) #12
  store ptr %call44, ptr @gbe_mem, align 4
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.else.out_release_mem_region_crit_edge, label %if.end52

if.else.out_release_mem_region_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_mem_region

if.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %14 = load i32, ptr @gbe_dma_addr, align 4
  store i32 %14, ptr @gbe_mem_phys, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end42
  %par54 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %15 = ptrtoint ptr %par54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %par54, align 4
  %wc_cookie = getelementptr inbounds %struct.gbefb_par, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wc_cookie, align 4
  %18 = load i32, ptr @gbe_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %18)
  %cmp123.not = icmp ult i32 %18, 65536
  br i1 %cmp123.not, label %if.end53.for.end_crit_edge, label %for.body.lr.ph

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end53
  %shr = lshr i32 %18, 16
  %19 = load i32, ptr @gbe_mem_phys, align 4
  %shr56 = lshr i32 %19, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %shr56, %i.0124
  %conv = trunc i32 %add to i16
  %20 = load ptr, ptr @gbe_tiles, align 4
  %arrayidx = getelementptr i16, ptr %20, i32 %i.0124
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end53.for.end_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %22 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gbefb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 27
  %23 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pseudo_palette, ptr %pseudo_palette, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags, align 4
  %25 = load ptr, ptr @gbe_mem, align 4
  %26 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %26, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 12
  %call57 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #12
  %28 = load ptr, ptr @gbe, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 806002688, ptr %28, align 4
  %30 = load ptr, ptr @mode_option, align 4
  %31 = load ptr, ptr @default_mode, align 4
  %call58 = call i32 @fb_find_mode(ptr noundef %16, ptr noundef nonnull %call, ptr noundef %30, ptr noundef null, i32 noundef 0, ptr noundef %31, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %for.end.if.end63_crit_edge

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %32 = load ptr, ptr @default_var, align 4
  %33 = call ptr @memcpy(ptr %16, ptr %32, i32 160)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %for.end.if.end63_crit_edge
  %var64 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %34 = call ptr @memcpy(ptr %var64, ptr %16, i32 160)
  %call67 = call i32 @gbefb_check_var(ptr noundef %16, ptr noundef nonnull %call)
  %fix = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  call fastcc void @gbefb_encode_fix(ptr noundef %fix, ptr noundef %var64)
  %call69 = call i32 @register_framebuffer(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end63.out_release_mem_region_crit_edge, label %if.end78

if.end63.out_release_mem_region_crit_edge:        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_mem_region

if.end78:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %p_dev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %driver_data.i.i, align 4
  call fastcc void @gbefb_create_sysfs(ptr noundef %dev)
  %node = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %node, align 4
  %38 = load i32, ptr @gbe_revision, align 4
  %39 = load i32, ptr @gbe_mem_size, align 4
  %shr85 = lshr i32 %39, 10
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %37, ptr noundef %fix, i32 noundef %38, i32 noundef 369098752, i32 noundef %shr85) #15
  br label %cleanup

out_release_mem_region:                           ; preds = %if.end63.out_release_mem_region_crit_edge, %if.else.out_release_mem_region_crit_edge, %if.then32.out_release_mem_region_crit_edge, %if.end20.out_release_mem_region_crit_edge, %if.end10.out_release_mem_region_crit_edge
  %.str.18.sink = phi ptr [ @.str.6, %if.end10.out_release_mem_region_crit_edge ], [ @.str.9, %if.end20.out_release_mem_region_crit_edge ], [ @.str.12, %if.then32.out_release_mem_region_crit_edge ], [ @.str.15, %if.else.out_release_mem_region_crit_edge ], [ @.str.18, %if.end63.out_release_mem_region_crit_edge ]
  %ret.0 = phi i32 [ -6, %if.end10.out_release_mem_region_crit_edge ], [ -12, %if.end20.out_release_mem_region_crit_edge ], [ -12, %if.then32.out_release_mem_region_crit_edge ], [ -12, %if.else.out_release_mem_region_crit_edge ], [ -6, %if.end63.out_release_mem_region_crit_edge ]
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink) #15
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef 369098752, i32 noundef 524324) #12
  br label %out_release_framebuffer

out_release_framebuffer:                          ; preds = %out_release_mem_region, %do.end, %if.end.out_release_framebuffer_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_release_mem_region ], [ -16, %do.end ], [ -19, %if.end.out_release_framebuffer_crit_edge ]
  call void @framebuffer_release(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out_release_framebuffer, %if.end78, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_release_framebuffer ], [ 0, %if.end78 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_remove(ptr noundef %p_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %p_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #12
  tail call fastcc void @gbe_turn_off()
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef 369098752, i32 noundef 524324) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %p_dev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_size) #12
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_revision) #12
  tail call void @framebuffer_release(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #5 align 64 {
entry:
  %timing = alloca %struct.gbe_timing_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %timing) #12
  %0 = call ptr @memset(ptr %timing, i32 255, i32 44)
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %1 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp = icmp ult i32 %2, 9
  br i1 %cmp, label %entry.if.end13_crit_edge, label %if.else

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %2)
  %cmp3 = icmp ult i32 %2, 17
  br i1 %cmp3, label %if.else.if.end13_crit_edge, label %if.else6

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %2)
  %cmp8 = icmp ult i32 %2, 33
  br i1 %cmp8, label %if.else6.if.end13_crit_edge, label %if.else6.cleanup_crit_edge

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else6.if.end13_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.else6.if.end13_crit_edge, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %.sink = phi i32 [ 8, %entry.if.end13_crit_edge ], [ 16, %if.else.if.end13_crit_edge ], [ 32, %if.else6.if.end13_crit_edge ]
  %3 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %bits_per_pixel, align 4
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %mul = mul i32 %7, %5
  %mul15 = mul i32 %mul, %.sink
  %and = and i32 %mul15, 4088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %8 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %grayscale, align 4
  %call = call fastcc i32 @compute_gbe_timing(ptr noundef %var, ptr noundef nonnull %timing)
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %9 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %xres_virtual, align 4
  %13 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %15 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %yres_virtual, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %16 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vmode, align 4
  %and39 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end20.if.end47_crit_edge, label %if.then41

if.end20.if.end47_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then41:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %17, 256
  %18 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %vmode, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xoffset, align 4
  %xoffset44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %21 = ptrtoint ptr %xoffset44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %xoffset44, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %22 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yoffset, align 4
  %yoffset46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %24 = ptrtoint ptr %yoffset46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %yoffset46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end20.if.end47_crit_edge
  %25 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %grayscale, align 4
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits_per_pixel, align 4
  %mul51 = mul i32 %27, %11
  %div195 = lshr i32 %mul51, 3
  %mul53 = mul i32 %div195, %14
  %28 = load i32, ptr @gbe_mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul53, i32 %28)
  %cmp54 = icmp ugt i32 %mul53, %28
  br i1 %cmp54, label %if.end47.cleanup_crit_edge, label %if.end56

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %29 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end56.sw.epilog_crit_edge [
    i32 8, label %if.end56.sw.epilog.sink.split_crit_edge
    i32 16, label %sw.bb68
    i32 32, label %sw.bb85
  ]

if.end56.sw.epilog.sink.split_crit_edge:          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb85:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb85, %sw.bb68, %if.end56.sw.epilog.sink.split_crit_edge
  %.sink202 = phi i32 [ 24, %sw.bb85 ], [ 10, %sw.bb68 ], [ 0, %if.end56.sw.epilog.sink.split_crit_edge ]
  %.sink201 = phi i32 [ 8, %sw.bb85 ], [ 5, %sw.bb68 ], [ %27, %if.end56.sw.epilog.sink.split_crit_edge ]
  %.sink200 = phi i32 [ 16, %sw.bb85 ], [ 5, %sw.bb68 ], [ 0, %if.end56.sw.epilog.sink.split_crit_edge ]
  %.sink198 = phi i32 [ 8, %sw.bb85 ], [ 0, %sw.bb68 ], [ 0, %if.end56.sw.epilog.sink.split_crit_edge ]
  %red86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %30 = ptrtoint ptr %red86 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink202, ptr %red86, align 4
  %length89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %length89 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink201, ptr %length89, align 4
  %green90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %32 = ptrtoint ptr %green90 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink200, ptr %green90, align 4
  %length93 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %length93 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink201, ptr %length93, align 4
  %blue94 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %34 = ptrtoint ptr %blue94 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink198, ptr %blue94, align 4
  %length97 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %length97 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink201, ptr %length97, align 4
  %transp98 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %36 = ptrtoint ptr %transp98 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %transp98, align 4
  %length101 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %length101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink198, ptr %length101, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end56.sw.epilog_crit_edge
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %msb_right, align 4
  %msb_right104 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %msb_right104 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %msb_right104, align 4
  %msb_right106 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %40 = ptrtoint ptr %msb_right106 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %msb_right106, align 4
  %msb_right108 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %msb_right108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %msb_right108, align 4
  %htotal = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 5
  %42 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %htotal, align 4
  %conv = sext i16 %43 to i32
  %hsync_end = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 9
  %44 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hsync_end, align 4
  %conv109 = sext i16 %45 to i32
  %sub = sub nsw i32 %conv, %conv109
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %46 = ptrtoint ptr %left_margin to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %left_margin, align 4
  %hsync_start = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 8
  %47 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_start, align 2
  %conv110 = sext i16 %48 to i32
  %width = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 1
  %49 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %width, align 4
  %conv111 = sext i16 %50 to i32
  %sub112 = sub nsw i32 %conv110, %conv111
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %51 = ptrtoint ptr %right_margin to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub112, ptr %right_margin, align 4
  %vtotal = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 10
  %52 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vtotal, align 2
  %conv113 = sext i16 %53 to i32
  %vsync_end = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 14
  %54 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vsync_end, align 2
  %conv114 = sext i16 %55 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %56 = ptrtoint ptr %upper_margin to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub115, ptr %upper_margin, align 4
  %vsync_start = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 13
  %57 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vsync_start, align 4
  %conv116 = sext i16 %58 to i32
  %height = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 2
  %59 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %height, align 2
  %conv117 = sext i16 %60 to i32
  %sub118 = sub nsw i32 %conv116, %conv117
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %61 = ptrtoint ptr %lower_margin to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub118, ptr %lower_margin, align 4
  %sub123 = sub nsw i32 %conv109, %conv110
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %62 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub123, ptr %hsync_len, align 4
  %sub128 = sub nsw i32 %conv114, %conv116
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %63 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub128, ptr %vsync_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end47.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.else6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.else6.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %timing) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @gbefb_encode_fix(ptr nocapture noundef writeonly %fix, ptr nocapture noundef readonly %var) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %fix, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %fix to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 6000845431477781760, ptr %fix, align 1
  %3 = load ptr, ptr @gbe_mem, align 4
  %4 = ptrtoint ptr %3 to i32
  %smem_start = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 1
  %5 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %smem_start, align 4
  %6 = load i32, ptr @gbe_mem_size, align 4
  %smem_len = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 2
  %7 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %smem_len, align 4
  %type_aux = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 4
  %8 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type_aux, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %9 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cond = icmp eq i32 %10, 8
  %spec.select = select i1 %cond, i32 3, i32 2
  %11 = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %ywrapstep = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 8
  %13 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %ywrapstep, align 4
  %xpanstep = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 6
  %14 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 7
  %15 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %ypanstep, align 2
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %16 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres_virtual, align 4
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %19, %17
  %div19 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 9
  %20 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div19, ptr %line_length, align 4
  %mmio_start = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 10
  %21 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 369098752, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 11
  %22 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 524324, ptr %mmio_len, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbefb_create_sysfs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_size) #12
  %call1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_revision) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %timing = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1
  %call = tail call fastcc i32 @compute_gbe_timing(ptr noundef %var, ptr noundef %timing)
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %div123 = lshr i32 %3, 3
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %5, %div123
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %line_length, align 4
  %width = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %width, align 4
  %conv = sext i16 %8 to i32
  %height = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %height, align 2
  %conv6 = sext i16 %10 to i32
  tail call fastcc void @gbe_turn_off()
  %pll_m.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 15
  %11 = ptrtoint ptr %pll_m.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pll_m.i, align 4
  %13 = add i16 %12, 255
  %14 = and i16 %13, 255
  %and1.i = zext i16 %14 to i32
  %pll_n.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %pll_n.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pll_n.i, align 2
  %conv3.i = sext i16 %16 to i32
  %sub4.i = shl nsw i32 %conv3.i, 8
  %shl5.i = add nsw i32 %sub4.i, 16128
  %and6.i = and i32 %shl5.i, 16128
  %or7.i = or i32 %and6.i, %and1.i
  %pll_p.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 17
  %17 = ptrtoint ptr %pll_p.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pll_p.i, align 4
  %conv9.i = sext i16 %18 to i32
  %shl10.i = shl nsw i32 %conv9.i, 14
  %and11.i = and i32 %shl10.i, 49152
  %or12.i = or i32 %or7.i, %and11.i
  %19 = load ptr, ptr @gbe, align 4
  %dotclock.i = getelementptr inbounds %struct.sgi_gbe, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dotclock.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %or12.i, ptr %dotclock.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #12
  %htotal.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %htotal.i, align 4
  %33 = and i16 %32, 4095
  %and18.i = zext i16 %33 to i32
  %vtotal.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vtotal.i, align 2
  %conv21.i = sext i16 %35 to i32
  %shl22.i = shl nsw i32 %conv21.i, 12
  %and23.i = and i32 %shl22.i, 16773120
  %or24.i = or i32 %and23.i, %and18.i
  %36 = load ptr, ptr @gbe, align 4
  %vt_xymax.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %vt_xymax.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %or24.i, ptr %vt_xymax.i, align 4
  %vsync_start.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 13
  %38 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vsync_start.i, align 4
  %conv26.i = sext i16 %39 to i32
  %shl27.i = shl nsw i32 %conv26.i, 12
  %and28.i = and i32 %shl27.i, 16773120
  %vsync_end.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 14
  %40 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vsync_end.i, align 2
  %42 = and i16 %41, 4095
  %and33.i = zext i16 %42 to i32
  %or34.i = or i32 %and28.i, %and33.i
  %vt_vsync.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 11
  %43 = ptrtoint ptr %vt_vsync.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %or34.i, ptr %vt_vsync.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hsync_start.i, align 2
  %conv36.i = sext i16 %45 to i32
  %shl37.i = shl nsw i32 %conv36.i, 12
  %and38.i = and i32 %shl37.i, 16773120
  %hsync_end.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hsync_end.i, align 4
  %48 = and i16 %47, 4095
  %and43.i = zext i16 %48 to i32
  %or44.i = or i32 %and38.i, %and43.i
  %vt_hsync.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 12
  %49 = ptrtoint ptr %vt_hsync.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %or44.i, ptr %vt_hsync.i, align 4
  %vblank_start.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 11
  %50 = ptrtoint ptr %vblank_start.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vblank_start.i, align 4
  %conv46.i = sext i16 %51 to i32
  %shl47.i = shl nsw i32 %conv46.i, 12
  %and48.i = and i32 %shl47.i, 16773120
  %vblank_end.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 12
  %52 = ptrtoint ptr %vblank_end.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vblank_end.i, align 2
  %54 = and i16 %53, 4095
  %and53.i = zext i16 %54 to i32
  %or54.i = or i32 %and48.i, %and53.i
  %vt_vblank.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 13
  %55 = ptrtoint ptr %vt_vblank.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %or54.i, ptr %vt_vblank.i, align 4
  %hblank_start.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %hblank_start.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hblank_start.i, align 2
  %conv56.i = sext i16 %57 to i32
  %sub57.i = shl nsw i32 %conv56.i, 12
  %shl58.i = add nsw i32 %sub57.i, 16756736
  %and59.i = and i32 %shl58.i, 16773120
  %hblank_end.i = getelementptr inbounds %struct.gbefb_par, ptr %1, i32 0, i32 1, i32 7
  %58 = ptrtoint ptr %hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hblank_end.i, align 4
  %60 = add i16 %59, 4093
  %61 = and i16 %60, 4095
  %and65.i = zext i16 %61 to i32
  %or66.i = or i32 %and59.i, %and65.i
  %vt_hblank.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 14
  %62 = ptrtoint ptr %vt_hblank.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %or66.i, ptr %vt_hblank.i, align 4
  %63 = load i16, ptr %vblank_start.i, align 4
  %conv69.i = sext i16 %63 to i32
  %shl70.i = shl nsw i32 %conv69.i, 12
  %and71.i = and i32 %shl70.i, 16773120
  %64 = load i16, ptr %vblank_end.i, align 2
  %65 = and i16 %64, 4095
  %and77.i = zext i16 %65 to i32
  %or78.i = or i32 %and71.i, %and77.i
  %vt_vcmap.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 25
  %66 = ptrtoint ptr %vt_vcmap.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %or78.i, ptr %vt_vcmap.i, align 4
  %67 = load i16, ptr %hblank_start.i, align 2
  %conv81.i = sext i16 %67 to i32
  %shl82.i = shl nsw i32 %conv81.i, 12
  %and83.i = and i32 %shl82.i, 16773120
  %68 = load i16, ptr %hblank_end.i, align 4
  %69 = and i16 %68, 4095
  %and89.i = zext i16 %69 to i32
  %or90.i = or i32 %and83.i, %and89.i
  %vt_hcmap.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 24
  %70 = ptrtoint ptr %vt_hcmap.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %or90.i, ptr %vt_hcmap.i, align 4
  %71 = load i16, ptr %vblank_start.i, align 4
  %conv92.i = sext i16 %71 to i32
  %72 = load i16, ptr %vblank_end.i, align 2
  %73 = xor i16 %72, -1
  %74 = sext i16 %73 to i32
  %sub96.i = add nsw i32 %74, %conv92.i
  %75 = tail call i32 @llvm.abs.i32(i32 %sub96.i, i1 true) #12
  %.b.i = load i1, ptr @flat_panel_enabled, align 4
  br i1 %.b.i, label %if.then100.i, label %entry.if.end101.i_crit_edge

entry.if.end101.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i

if.then100.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %timing, align 4
  %and1.i.i = shl i32 %77, 2
  %78 = and i32 %and1.i.i, 4
  %and5.i.i = lshr i32 %77, 1
  %and5.lobit.i.i = and i32 %and5.i.i, 1
  %79 = or i32 %and5.lobit.i.i, %78
  %or10.i.i = xor i32 %79, 5
  %vt_flags.i.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 15
  %80 = ptrtoint ptr %vt_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %or10.i.i, ptr %vt_flags.i.i, align 4
  %81 = ptrtoint ptr %pll_m.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 4, ptr %pll_m.i, align 4
  %82 = ptrtoint ptr %pll_n.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %pll_n.i, align 2
  %83 = ptrtoint ptr %pll_p.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %pll_p.i, align 4
  %fp_de.i.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 21
  %84 = ptrtoint ptr %fp_de.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 1600, ptr %fp_de.i.i, align 4
  %fp_hdrv.i.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 19
  %85 = ptrtoint ptr %fp_hdrv.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 1600, ptr %fp_hdrv.i.i, align 4
  %fp_vdrv.i.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 20
  %86 = ptrtoint ptr %fp_vdrv.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 5121, ptr %fp_vdrv.i.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then100.i, %entry.if.end101.i_crit_edge
  %.neg.i = mul nsw i32 %75, -4096
  %and104.i = and i32 %.neg.i, 16773120
  %87 = ptrtoint ptr %hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %hblank_end.i, align 4
  %conv107304.i = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %88)
  %cmp108.i = icmp sgt i16 %88, 19
  br i1 %cmp108.i, label %if.then110.i, label %if.else.i

if.then110.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub114.i = add nsw i32 %conv107304.i, -20
  br label %if.end128.i

if.else.i:                                        ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %htotal.i, align 4
  %conv120299.i = zext i16 %90 to i32
  %sub123.neg.i = add nuw nsw i32 %conv107304.i, 4076
  %sub124.i = add nuw nsw i32 %sub123.neg.i, %conv120299.i
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.else.i, %if.then110.i
  %and116.pn.in.i = phi i32 [ %sub114.i, %if.then110.i ], [ %sub124.i, %if.else.i ]
  %and116.pn.i = and i32 %and116.pn.in.i, 4095
  %val.0.i = or i32 %and116.pn.i, %and104.i
  %did_start_xy.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 26
  %91 = ptrtoint ptr %did_start_xy.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %val.0.i, ptr %did_start_xy.i, align 4
  %shl130.i = add nsw i32 %.neg.i, 4096
  %and131.i = and i32 %shl130.i, 16773120
  %92 = ptrtoint ptr %hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hblank_end.i, align 4
  %conv134305.i = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %93)
  %cmp135.i = icmp sgt i16 %93, 53
  br i1 %cmp135.i, label %if.then137.i, label %if.else145.i

if.then137.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub141.i = add nsw i32 %conv134305.i, -54
  br label %if.end156.i

if.else145.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %htotal.i, align 4
  %conv148300.i = zext i16 %95 to i32
  %sub151.neg.i = add nuw nsw i32 %conv134305.i, 4042
  %sub152.i = add nuw nsw i32 %sub151.neg.i, %conv148300.i
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.else145.i, %if.then137.i
  %and143.pn.in.i = phi i32 [ %sub141.i, %if.then137.i ], [ %sub152.i, %if.else145.i ]
  %and143.pn.i = and i32 %and143.pn.in.i, 4095
  %val.1.i = or i32 %and143.pn.i, %and131.i
  %crs_start_xy.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 27
  %96 = ptrtoint ptr %crs_start_xy.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %val.1.i, ptr %crs_start_xy.i, align 4
  %97 = ptrtoint ptr %hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %hblank_end.i, align 4
  %99 = add i16 %98, 4092
  %100 = and i16 %99, 4095
  %and166.i = zext i16 %100 to i32
  %or167.i = or i32 %and104.i, %and166.i
  %vc_start_xy.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 28
  %101 = ptrtoint ptr %vc_start_xy.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 %or167.i, ptr %vc_start_xy.i, align 4
  %102 = load i16, ptr %hblank_end.i, align 4
  %conv169.i = sext i16 %102 to i32
  %sub170.i = add nsw i32 %conv169.i, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %102)
  %cmp171.i = icmp slt i16 %102, 19
  br i1 %cmp171.i, label %if.then173.i, label %if.end156.i.gbe_set_timing_info.exit_crit_edge

if.end156.i.gbe_set_timing_info.exit_crit_edge:   ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbe_set_timing_info.exit

if.then173.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %htotal.i, align 4
  %conv175.i = sext i16 %104 to i32
  %add176.i = add nsw i32 %sub170.i, %conv175.i
  br label %gbe_set_timing_info.exit

gbe_set_timing_info.exit:                         ; preds = %if.then173.i, %if.end156.i.gbe_set_timing_info.exit_crit_edge
  %temp.1.i = phi i32 [ %add176.i, %if.then173.i ], [ %sub170.i, %if.end156.i.gbe_set_timing_info.exit_crit_edge ]
  %shl179.i = shl nsw i32 %temp.1.i, 12
  %and180.i = and i32 %shl179.i, 16773120
  %105 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %width, align 4
  %conv183.i = sext i16 %106 to i32
  %add184.i = add nsw i32 %temp.1.i, -2
  %sub185.i = add nsw i32 %add184.i, %conv183.i
  %107 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %htotal.i, align 4
  %conv187.i = sext i16 %108 to i32
  %rem.i = srem i32 %sub185.i, %conv187.i
  %and189.i = and i32 %rem.i, 4095
  %or190.i = or i32 %and189.i, %and180.i
  %vt_hpixen.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 22
  %109 = ptrtoint ptr %vt_hpixen.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 %or190.i, ptr %vt_hpixen.i, align 4
  %110 = ptrtoint ptr %vblank_end.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vblank_end.i, align 2
  %conv193.i = sext i16 %111 to i32
  %shl194.i = shl nsw i32 %conv193.i, 12
  %and195.i = and i32 %shl194.i, 16773120
  %112 = ptrtoint ptr %vblank_start.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vblank_start.i, align 4
  %114 = and i16 %113, 4095
  %and201.i = zext i16 %114 to i32
  %or202.i = or i32 %and195.i, %and201.i
  %vt_vpixen.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 23
  %115 = ptrtoint ptr %vt_vpixen.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 %or202.i, ptr %vt_vpixen.i, align 4
  %vt_flags.i = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 15
  %116 = ptrtoint ptr %vt_flags.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 32, ptr %vt_flags.i, align 4
  %117 = zext i32 %div123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %div123, label %gbe_set_timing_info.exit.sw.epilog_crit_edge [
    i32 1, label %gbe_set_timing_info.exit.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb9
    i32 4, label %sw.bb14
  ]

gbe_set_timing_info.exit.sw.epilog.sink.split_crit_edge: ; preds = %gbe_set_timing_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

gbe_set_timing_info.exit.sw.epilog_crit_edge:     ; preds = %gbe_set_timing_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %gbe_set_timing_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %gbe_set_timing_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb14, %sw.bb9, %gbe_set_timing_info.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb14 ], [ 2, %sw.bb9 ], [ 3, %gbe_set_timing_info.exit.sw.epilog.sink.split_crit_edge ]
  %val.0.ph = phi i32 [ 23, %sw.bb14 ], [ 19, %sw.bb9 ], [ 3, %gbe_set_timing_info.exit.sw.epilog.sink.split_crit_edge ]
  %visual18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %118 = ptrtoint ptr %visual18 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %.sink, ptr %visual18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %gbe_set_timing_info.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ 3, %gbe_set_timing_info.exit.sw.epilog_crit_edge ], [ %val.0.ph, %sw.epilog.sink.split ]
  %arrayidx = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 0
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 %val.0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 1
  %120 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 %val.0, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 2
  %121 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %val.0, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 3
  %122 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 %val.0, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 4
  %123 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %val.0, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 5
  %124 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 %val.0, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 6
  %125 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 %val.0, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 7
  %126 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 %val.0, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 8
  %127 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 %val.0, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 9
  %128 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 %val.0, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 10
  %129 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %val.0, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 11
  %130 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 %val.0, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 12
  %131 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile i32 %val.0, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 13
  %132 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 %val.0, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 14
  %133 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 %val.0, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 15
  %134 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %val.0, ptr %arrayidx.15, align 4
  %arrayidx.16 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 16
  %135 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 %val.0, ptr %arrayidx.16, align 4
  %arrayidx.17 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 17
  %136 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 %val.0, ptr %arrayidx.17, align 4
  %arrayidx.18 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 18
  %137 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 %val.0, ptr %arrayidx.18, align 4
  %arrayidx.19 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 19
  %138 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile i32 %val.0, ptr %arrayidx.19, align 4
  %arrayidx.20 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 20
  %139 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 %val.0, ptr %arrayidx.20, align 4
  %arrayidx.21 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 21
  %140 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %val.0, ptr %arrayidx.21, align 4
  %arrayidx.22 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 22
  %141 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 %val.0, ptr %arrayidx.22, align 4
  %arrayidx.23 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 23
  %142 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %val.0, ptr %arrayidx.23, align 4
  %arrayidx.24 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 24
  %143 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 %val.0, ptr %arrayidx.24, align 4
  %arrayidx.25 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 25
  %144 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 %val.0, ptr %arrayidx.25, align 4
  %arrayidx.26 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 26
  %145 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 %val.0, ptr %arrayidx.26, align 4
  %arrayidx.27 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 27
  %146 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %val.0, ptr %arrayidx.27, align 4
  %arrayidx.28 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 28
  %147 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 %val.0, ptr %arrayidx.28, align 4
  %arrayidx.29 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 29
  %148 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 %val.0, ptr %arrayidx.29, align 4
  %arrayidx.30 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 30
  %149 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 %val.0, ptr %arrayidx.30, align 4
  %arrayidx.31 = getelementptr %struct.sgi_gbe, ptr %36, i32 0, i32 42, i32 31
  %150 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 %val.0, ptr %arrayidx.31, align 4
  %vt_intr01 = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 17
  %151 = ptrtoint ptr %vt_intr01 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 -1, ptr %vt_intr01, align 4
  %vt_intr23 = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 18
  %152 = ptrtoint ptr %vt_intr23 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 -1, ptr %vt_intr23, align 4
  %153 = load i32, ptr getelementptr inbounds (%struct.anon.85, ptr @gbe_tiles, i32 0, i32 1), align 4
  %shr = and i32 %153, -512
  %frm_control = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 37
  %154 = ptrtoint ptr %frm_control to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 %shr, ptr %frm_control, align 4
  %div29 = udiv i32 512, %div123
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div123)
  %switch.selectcmp = icmp eq i32 %div123, 2
  %switch.select = select i1 %switch.selectcmp, i32 8224, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div123)
  %switch.selectcmp124 = icmp eq i32 %div123, 4
  %switch.select125 = select i1 %switch.selectcmp124, i32 16416, i32 %switch.select
  %frm_size_tile = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 34
  %155 = ptrtoint ptr %frm_size_tile to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 %switch.select125, ptr %frm_size_tile, align 4
  %mul48 = mul nsw i32 %conv6, %conv
  %div49 = sdiv i32 %mul48, %div29
  %shl51 = shl i32 %div49, 16
  %frm_size_pixel = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 35
  %156 = ptrtoint ptr %frm_size_pixel to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 %shl51, ptr %frm_size_pixel, align 4
  %did_control = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 40
  %157 = ptrtoint ptr %did_control to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 0, ptr %did_control, align 4
  %ovr_width_tile = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 30
  %158 = ptrtoint ptr %ovr_width_tile to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 0, ptr %ovr_width_tile, align 4
  %crs_ctl = getelementptr inbounds %struct.sgi_gbe, ptr %36, i32 0, i32 53
  %159 = ptrtoint ptr %crs_ctl to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile i32 0, ptr %crs_ctl, align 4
  tail call fastcc void @gbe_turn_on()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 2147480) #12
  %161 = load ptr, ptr @gbe, align 4
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %sw.epilog
  %i.1127 = phi i32 [ 0, %sw.epilog ], [ %inc65, %for.body57.for.body57_crit_edge ]
  %shl58 = shl i32 %i.1127, 24
  %shl59 = shl i32 %i.1127, 16
  %or60 = or i32 %shl58, %shl59
  %shl61 = shl i32 %i.1127, 8
  %or62 = or i32 %or60, %shl61
  %arrayidx63 = getelementptr %struct.sgi_gbe, ptr %161, i32 0, i32 48, i32 %i.1127
  %162 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 %or62, ptr %arrayidx63, align 4
  %inc65 = add nuw nsw i32 %i.1127, 1
  %exitcond.not = icmp eq i32 %inc65, 256
  br i1 %exitcond.not, label %for.body57.for.body70_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body57

for.body57.for.body70_crit_edge:                  ; preds = %for.body57
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body57.for.body70_crit_edge
  %i.2128 = phi i32 [ %inc78, %for.body70.for.body70_crit_edge ], [ 0, %for.body57.for.body70_crit_edge ]
  %shl71 = shl i32 %i.2128, 8
  %shl72 = shl i32 %i.2128, 16
  %or73 = or i32 %shl71, %shl72
  %shl74 = shl i32 %i.2128, 24
  %or75 = or i32 %or73, %shl74
  %arrayidx76 = getelementptr [256 x i32], ptr @gbe_cmap, i32 0, i32 %i.2128
  %163 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or75, ptr %arrayidx76, align 4
  %inc78 = add nuw nsw i32 %i.2128, 1
  %exitcond129.not = icmp eq i32 %inc78, 256
  br i1 %exitcond129.not, label %for.body70.for.cond1.preheader.i_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70

for.body70.for.cond1.preheader.i_crit_edge:       ; preds = %for.body70
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %if.end.i.for.cond1.preheader.i_crit_edge, %for.body70.for.cond1.preheader.i_crit_edge
  %i.018.i = phi i32 [ %inc8.i, %if.end.i.for.cond1.preheader.i_crit_edge ], [ 0, %for.body70.for.cond1.preheader.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body4.i.land.rhs.i_crit_edge, %for.cond1.preheader.i
  %j.017.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.body4.i.land.rhs.i_crit_edge ]
  %164 = load ptr, ptr @gbe, align 4
  %cm_fifo.i = getelementptr inbounds %struct.sgi_gbe, ptr %164, i32 0, i32 46
  %165 = ptrtoint ptr %cm_fifo.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %cm_fifo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %166)
  %cmp3.i = icmp ugt i32 %166, 62
  br i1 %cmp3.i, label %for.body4.i, label %land.rhs.i.if.end.i_crit_edge

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body4.i:                                      ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 2147480) #12
  %inc.i = add nuw nsw i32 %j.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %for.body4.i.land.rhs.i_crit_edge

for.body4.i.land.rhs.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

do.end.i:                                         ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr [256 x i32], ptr @gbe_cmap, i32 0, i32 %i.018.i
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i, align 4
  %170 = load ptr, ptr @gbe, align 4
  %arrayidx6.i = getelementptr %struct.sgi_gbe, ptr %170, i32 0, i32 44, i32 %i.018.i
  %171 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 %169, ptr %arrayidx6.i, align 4
  %inc8.i = add nuw nsw i32 %i.018.i, 1
  %exitcond19.not.i = icmp eq i32 %inc8.i, 256
  br i1 %exitcond19.not.i, label %gbe_loadcmap.exit, label %if.end.i.for.cond1.preheader.i_crit_edge

if.end.i.for.cond1.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i

gbe_loadcmap.exit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %red, 8
  %shr1 = lshr i32 %green, 8
  %shr2 = lshr i32 %blue, 8
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp3 = icmp ult i32 %1, 9
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %shl = shl i32 %shr, 24
  %shl5 = shl i32 %shr1, 16
  %or = or i32 %shl5, %shl
  %shl6 = and i32 %blue, -256
  %or7 = or i32 %or, %shl6
  %arrayidx = getelementptr [256 x i32], ptr @gbe_cmap, i32 0, i32 %regno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or7, ptr %arrayidx, align 4
  %.b = load i1, ptr @gbe_turned_on, align 4
  br i1 %.b, label %if.then4.land.rhs_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.land.rhs_crit_edge:                      ; preds = %if.then4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.then4.land.rhs_crit_edge
  %i.085 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %if.then4.land.rhs_crit_edge ]
  %3 = load ptr, ptr @gbe, align 4
  %cm_fifo = getelementptr inbounds %struct.sgi_gbe, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %cm_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cm_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %5)
  %cmp10 = icmp ugt i32 %5, 62
  br i1 %cmp10, label %for.body, label %if.end13

for.body:                                         ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %cleanup

if.end13:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load ptr, ptr @gbe, align 4
  %arrayidx15 = getelementptr %struct.sgi_gbe, ptr %9, i32 0, i32 44, i32 %regno
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %8, ptr %arrayidx15, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp17 = icmp ult i32 %regno, 16
  br i1 %cmp17, label %if.then18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.else
  %11 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %if.then18.cleanup_crit_edge [
    i32 15, label %if.then18.sw.bb_crit_edge
    i32 16, label %if.then18.sw.bb_crit_edge86
    i32 32, label %sw.bb38
  ]

if.then18.sw.bb_crit_edge86:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then18.sw.bb_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then18.sw.bb_crit_edge, %if.then18.sw.bb_crit_edge86
  %shr21 = lshr i32 %red, 11
  %shr22 = lshr i32 %green, 11
  %shr23 = lshr i32 %blue, 11
  %red25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %12 = ptrtoint ptr %red25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %red25, align 4
  %shl26 = shl i32 %shr21, %13
  %green28 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %14 = ptrtoint ptr %green28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %green28, align 4
  %shl30 = shl i32 %shr22, %15
  %or31 = or i32 %shl30, %shl26
  %blue33 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %16 = ptrtoint ptr %blue33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blue33, align 4
  %shl35 = shl i32 %shr23, %17
  %or36 = or i32 %or31, %shl35
  %arrayidx37 = getelementptr [16 x i32], ptr @pseudo_palette, i32 0, i32 %regno
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or36, ptr %arrayidx37, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %red40 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %19 = ptrtoint ptr %red40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %red40, align 4
  %shl42 = shl i32 %shr, %20
  %green44 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %21 = ptrtoint ptr %green44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %green44, align 4
  %shl46 = shl i32 %shr1, %22
  %or47 = or i32 %shl46, %shl42
  %blue49 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %23 = ptrtoint ptr %blue49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blue49, align 4
  %shl51 = shl i32 %shr2, %24
  %or52 = or i32 %or47, %shl51
  %arrayidx53 = getelementptr [16 x i32], ptr @pseudo_palette, i32 0, i32 %regno
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or52, ptr %arrayidx53, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %sw.bb, %if.then18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end13, %do.end, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %sw.bb38 ], [ 0, %sw.bb ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %blank, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call fastcc void @gbe_turn_on()
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %if.end.i.for.cond1.preheader.i_crit_edge, %sw.bb
  %i.018.i = phi i32 [ 0, %sw.bb ], [ %inc8.i, %if.end.i.for.cond1.preheader.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body4.i.land.rhs.i_crit_edge, %for.cond1.preheader.i
  %j.017.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.body4.i.land.rhs.i_crit_edge ]
  %1 = load ptr, ptr @gbe, align 4
  %cm_fifo.i = getelementptr inbounds %struct.sgi_gbe, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %cm_fifo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cm_fifo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %3)
  %cmp3.i = icmp ugt i32 %3, 62
  br i1 %cmp3.i, label %for.body4.i, label %land.rhs.i.if.end.i_crit_edge

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body4.i:                                      ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #12
  %inc.i = add nuw nsw i32 %j.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %for.body4.i.land.rhs.i_crit_edge

for.body4.i.land.rhs.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

do.end.i:                                         ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr [256 x i32], ptr @gbe_cmap, i32 0, i32 %i.018.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = load ptr, ptr @gbe, align 4
  %arrayidx6.i = getelementptr %struct.sgi_gbe, ptr %7, i32 0, i32 44, i32 %i.018.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %6, ptr %arrayidx6.i, align 4
  %inc8.i = add nuw nsw i32 %i.018.i, 1
  %exitcond19.not.i = icmp eq i32 %inc8.i, 256
  br i1 %exitcond19.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.for.cond1.preheader.i_crit_edge

if.end.i.for.cond1.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gbe_turn_off()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_mmap(ptr nocapture noundef readnone %info, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %5)
  %cmp = icmp ugt i32 %5, 1048575
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, ptr @gbe_mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp2 = icmp ult i32 %6, %sub
  %sub5 = sub i32 %6, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub5)
  %cmp6 = icmp ugt i32 %shl, %sub5
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr @gbe_tiles, align 4
  %shr = lshr i32 %shl, 16
  %arrayidx = getelementptr i16, ptr %7, i32 %shr
  %and = and i32 %shl, 61440
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %if.end8
  %size.0 = phi i32 [ %sub, %if.end8 ], [ %sub20, %if.end19.do.body_crit_edge ]
  %offset.0 = phi i32 [ %and, %if.end8 ], [ 0, %if.end19.do.body_crit_edge ]
  %addr.0 = phi i32 [ %3, %if.end8 ], [ %add21, %if.end19.do.body_crit_edge ]
  %tile.0 = phi ptr [ %arrayidx, %if.end8 ], [ %incdec.ptr, %if.end19.do.body_crit_edge ]
  %8 = ptrtoint ptr %tile.0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tile.0, align 2
  %conv = zext i16 %9 to i32
  %shl10 = shl nuw i32 %conv, 16
  %add = or i32 %shl10, %offset.0
  %add11 = add i32 %offset.0, %size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11)
  %cmp12 = icmp ult i32 %add11, 65536
  %sub15 = sub nuw nsw i32 65536, %offset.0
  %phys_size.0 = select i1 %cmp12, i32 %size.0, i32 %sub15
  %shr17 = lshr exact i32 %add, 12
  %10 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_page_prot, align 4
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %addr.0, i32 noundef %shr17, i32 noundef %phys_size.0, i32 noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end19, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %do.body
  %sub20 = sub i32 %size.0, %phys_size.0
  %add21 = add i32 %phys_size.0, %addr.0
  %incdec.ptr = getelementptr i16, ptr %tile.0, i32 1
  %tobool22.not = icmp eq i32 %sub20, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -11, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @compute_gbe_timing(ptr nocapture noundef readonly %var, ptr noundef %timing) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gbe_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp slt i32 %0, 2
  %gbe_pll_table. = select i1 %cmp, ptr @gbe_pll_table, ptr getelementptr inbounds ([2 x %struct.gbe_pll_info], ptr @gbe_pll_table, i32 0, i32 1)
  %1 = ptrtoint ptr %gbe_pll_table. to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gbe_pll_table., align 4
  %div = sdiv i32 1000000, %2
  %pixclock9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %3 = ptrtoint ptr %pixclock9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixclock9, align 4
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc26.for.cond5.preheader_crit_edge, %entry
  %best_error.1205 = phi i32 [ 1000000000, %entry ], [ %best_error.3, %for.inc26.for.cond5.preheader_crit_edge ]
  %best_n.1203 = phi i32 [ 0, %entry ], [ %best_n.3, %for.inc26.for.cond5.preheader_crit_edge ]
  %best_m.1202 = phi i32 [ 0, %entry ], [ %best_m.3, %for.inc26.for.cond5.preheader_crit_edge ]
  %pll_m.0201 = phi i32 [ 1, %entry ], [ %inc27, %for.inc26.for.cond5.preheader_crit_edge ]
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.cond5.preheader
  %best_error.2200 = phi i32 [ %best_error.1205, %for.cond5.preheader ], [ %best_error.3, %for.inc.for.body7_crit_edge ]
  %best_n.2198 = phi i32 [ %best_n.1203, %for.cond5.preheader ], [ %best_n.3, %for.inc.for.body7_crit_edge ]
  %best_m.2197 = phi i32 [ %best_m.1202, %for.cond5.preheader ], [ %best_m.3, %for.inc.for.body7_crit_edge ]
  %pll_n.0195 = phi i32 [ 1, %for.cond5.preheader ], [ %inc, %for.inc.for.body7_crit_edge ]
  %mul = mul i32 %div, %pll_n.0195
  %div8 = sdiv i32 %mul, %pll_m.0201
  %sub = sub i32 %4, %div8
  %5 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %best_error.2200)
  %cmp14 = icmp slt i32 %5, %best_error.2200
  br i1 %cmp14, label %land.lhs.true, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body7
  %div15.udiv = udiv i32 %pll_m.0201, %pll_n.0195
  %div17 = sdiv i32 80, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv, i32 %div17)
  %cmp18 = icmp sgt i32 %div15.udiv, %div17
  br i1 %cmp18, label %land.lhs.true19, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true
  %div22 = sdiv i32 220, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv, i32 %div22)
  %cmp23 = icmp slt i32 %div15.udiv, %div22
  br i1 %cmp23, label %if.then24, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %best_m.3 = phi i32 [ %pll_m.0201, %if.then24 ], [ %best_m.2197, %land.lhs.true19.for.inc_crit_edge ], [ %best_m.2197, %land.lhs.true.for.inc_crit_edge ], [ %best_m.2197, %for.body7.for.inc_crit_edge ]
  %best_n.3 = phi i32 [ %pll_n.0195, %if.then24 ], [ %best_n.2198, %land.lhs.true19.for.inc_crit_edge ], [ %best_n.2198, %land.lhs.true.for.inc_crit_edge ], [ %best_n.2198, %for.body7.for.inc_crit_edge ]
  %best_error.3 = phi i32 [ %5, %if.then24 ], [ %best_error.2200, %land.lhs.true19.for.inc_crit_edge ], [ %best_error.2200, %land.lhs.true.for.inc_crit_edge ], [ %best_error.2200, %for.body7.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %pll_n.0195, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc26, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.inc26:                                        ; preds = %for.inc
  %inc27 = add nuw nsw i32 %pll_m.0201, 1
  %exitcond211.not = icmp eq i32 %inc27, 256
  br i1 %exitcond211.not, label %for.inc26.for.cond5.preheader.1_crit_edge, label %for.inc26.for.cond5.preheader_crit_edge

for.inc26.for.cond5.preheader_crit_edge:          ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader

for.inc26.for.cond5.preheader.1_crit_edge:        ; preds = %for.inc26
  br label %for.cond5.preheader.1

for.cond5.preheader.1:                            ; preds = %for.inc26.1.for.cond5.preheader.1_crit_edge, %for.inc26.for.cond5.preheader.1_crit_edge
  %best_error.1205.1 = phi i32 [ %best_error.3.1, %for.inc26.1.for.cond5.preheader.1_crit_edge ], [ %best_error.3, %for.inc26.for.cond5.preheader.1_crit_edge ]
  %best_p.1204.1 = phi i32 [ %best_p.3.1, %for.inc26.1.for.cond5.preheader.1_crit_edge ], [ 0, %for.inc26.for.cond5.preheader.1_crit_edge ]
  %best_n.1203.1 = phi i32 [ %best_n.3.1, %for.inc26.1.for.cond5.preheader.1_crit_edge ], [ %best_n.3, %for.inc26.for.cond5.preheader.1_crit_edge ]
  %best_m.1202.1 = phi i32 [ %best_m.3.1, %for.inc26.1.for.cond5.preheader.1_crit_edge ], [ %best_m.3, %for.inc26.for.cond5.preheader.1_crit_edge ]
  %pll_m.0201.1 = phi i32 [ %inc27.1, %for.inc26.1.for.cond5.preheader.1_crit_edge ], [ 1, %for.inc26.for.cond5.preheader.1_crit_edge ]
  br label %for.body7.1

for.body7.1:                                      ; preds = %for.inc.1.for.body7.1_crit_edge, %for.cond5.preheader.1
  %best_error.2200.1 = phi i32 [ %best_error.1205.1, %for.cond5.preheader.1 ], [ %best_error.3.1, %for.inc.1.for.body7.1_crit_edge ]
  %best_p.2199.1 = phi i32 [ %best_p.1204.1, %for.cond5.preheader.1 ], [ %best_p.3.1, %for.inc.1.for.body7.1_crit_edge ]
  %best_n.2198.1 = phi i32 [ %best_n.1203.1, %for.cond5.preheader.1 ], [ %best_n.3.1, %for.inc.1.for.body7.1_crit_edge ]
  %best_m.2197.1 = phi i32 [ %best_m.1202.1, %for.cond5.preheader.1 ], [ %best_m.3.1, %for.inc.1.for.body7.1_crit_edge ]
  %pll_n.0195.1 = phi i32 [ 1, %for.cond5.preheader.1 ], [ %inc.1, %for.inc.1.for.body7.1_crit_edge ]
  %shl.1 = shl nuw i32 %pll_n.0195.1, 1
  %mul.1 = mul i32 %div, %shl.1
  %div8.1 = sdiv i32 %mul.1, %pll_m.0201.1
  %sub.1 = sub i32 %4, %div8.1
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %best_error.2200.1)
  %cmp14.1 = icmp slt i32 %6, %best_error.2200.1
  br i1 %cmp14.1, label %land.lhs.true.1, label %for.body7.1.for.inc.1_crit_edge

for.body7.1.for.inc.1_crit_edge:                  ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body7.1
  %div15.udiv.1 = udiv i32 %pll_m.0201.1, %pll_n.0195.1
  %div17.1 = sdiv i32 80, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv.1, i32 %div17.1)
  %cmp18.1 = icmp sgt i32 %div15.udiv.1, %div17.1
  br i1 %cmp18.1, label %land.lhs.true19.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true19.1:                                ; preds = %land.lhs.true.1
  %div22.1 = sdiv i32 220, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv.1, i32 %div22.1)
  %cmp23.1 = icmp slt i32 %div15.udiv.1, %div22.1
  br i1 %cmp23.1, label %if.then24.1, label %land.lhs.true19.1.for.inc.1_crit_edge

land.lhs.true19.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then24.1:                                      ; preds = %land.lhs.true19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then24.1, %land.lhs.true19.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body7.1.for.inc.1_crit_edge
  %best_m.3.1 = phi i32 [ %pll_m.0201.1, %if.then24.1 ], [ %best_m.2197.1, %land.lhs.true19.1.for.inc.1_crit_edge ], [ %best_m.2197.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %best_m.2197.1, %for.body7.1.for.inc.1_crit_edge ]
  %best_n.3.1 = phi i32 [ %pll_n.0195.1, %if.then24.1 ], [ %best_n.2198.1, %land.lhs.true19.1.for.inc.1_crit_edge ], [ %best_n.2198.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %best_n.2198.1, %for.body7.1.for.inc.1_crit_edge ]
  %best_p.3.1 = phi i32 [ 1, %if.then24.1 ], [ %best_p.2199.1, %land.lhs.true19.1.for.inc.1_crit_edge ], [ %best_p.2199.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %best_p.2199.1, %for.body7.1.for.inc.1_crit_edge ]
  %best_error.3.1 = phi i32 [ %6, %if.then24.1 ], [ %best_error.2200.1, %land.lhs.true19.1.for.inc.1_crit_edge ], [ %best_error.2200.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %best_error.2200.1, %for.body7.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %pll_n.0195.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 64
  br i1 %exitcond.1.not, label %for.inc26.1, label %for.inc.1.for.body7.1_crit_edge

for.inc.1.for.body7.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.1

for.inc26.1:                                      ; preds = %for.inc.1
  %inc27.1 = add nuw nsw i32 %pll_m.0201.1, 1
  %exitcond211.1.not = icmp eq i32 %inc27.1, 256
  br i1 %exitcond211.1.not, label %for.inc26.1.for.cond5.preheader.2_crit_edge, label %for.inc26.1.for.cond5.preheader.1_crit_edge

for.inc26.1.for.cond5.preheader.1_crit_edge:      ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.1

for.inc26.1.for.cond5.preheader.2_crit_edge:      ; preds = %for.inc26.1
  br label %for.cond5.preheader.2

for.cond5.preheader.2:                            ; preds = %for.inc26.2.for.cond5.preheader.2_crit_edge, %for.inc26.1.for.cond5.preheader.2_crit_edge
  %best_error.1205.2 = phi i32 [ %best_error.3.2, %for.inc26.2.for.cond5.preheader.2_crit_edge ], [ %best_error.3.1, %for.inc26.1.for.cond5.preheader.2_crit_edge ]
  %best_p.1204.2 = phi i32 [ %best_p.3.2, %for.inc26.2.for.cond5.preheader.2_crit_edge ], [ %best_p.3.1, %for.inc26.1.for.cond5.preheader.2_crit_edge ]
  %best_n.1203.2 = phi i32 [ %best_n.3.2, %for.inc26.2.for.cond5.preheader.2_crit_edge ], [ %best_n.3.1, %for.inc26.1.for.cond5.preheader.2_crit_edge ]
  %best_m.1202.2 = phi i32 [ %best_m.3.2, %for.inc26.2.for.cond5.preheader.2_crit_edge ], [ %best_m.3.1, %for.inc26.1.for.cond5.preheader.2_crit_edge ]
  %pll_m.0201.2 = phi i32 [ %inc27.2, %for.inc26.2.for.cond5.preheader.2_crit_edge ], [ 1, %for.inc26.1.for.cond5.preheader.2_crit_edge ]
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.inc.2.for.body7.2_crit_edge, %for.cond5.preheader.2
  %best_error.2200.2 = phi i32 [ %best_error.1205.2, %for.cond5.preheader.2 ], [ %best_error.3.2, %for.inc.2.for.body7.2_crit_edge ]
  %best_p.2199.2 = phi i32 [ %best_p.1204.2, %for.cond5.preheader.2 ], [ %best_p.3.2, %for.inc.2.for.body7.2_crit_edge ]
  %best_n.2198.2 = phi i32 [ %best_n.1203.2, %for.cond5.preheader.2 ], [ %best_n.3.2, %for.inc.2.for.body7.2_crit_edge ]
  %best_m.2197.2 = phi i32 [ %best_m.1202.2, %for.cond5.preheader.2 ], [ %best_m.3.2, %for.inc.2.for.body7.2_crit_edge ]
  %pll_n.0195.2 = phi i32 [ 1, %for.cond5.preheader.2 ], [ %inc.2, %for.inc.2.for.body7.2_crit_edge ]
  %shl.2 = shl i32 %pll_n.0195.2, 2
  %mul.2 = mul i32 %div, %shl.2
  %div8.2 = sdiv i32 %mul.2, %pll_m.0201.2
  %sub.2 = sub i32 %4, %div8.2
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %best_error.2200.2)
  %cmp14.2 = icmp slt i32 %7, %best_error.2200.2
  br i1 %cmp14.2, label %land.lhs.true.2, label %for.body7.2.for.inc.2_crit_edge

for.body7.2.for.inc.2_crit_edge:                  ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body7.2
  %div15.udiv.2 = udiv i32 %pll_m.0201.2, %pll_n.0195.2
  %div17.2 = sdiv i32 80, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv.2, i32 %div17.2)
  %cmp18.2 = icmp sgt i32 %div15.udiv.2, %div17.2
  br i1 %cmp18.2, label %land.lhs.true19.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true19.2:                                ; preds = %land.lhs.true.2
  %div22.2 = sdiv i32 220, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv.2, i32 %div22.2)
  %cmp23.2 = icmp slt i32 %div15.udiv.2, %div22.2
  br i1 %cmp23.2, label %if.then24.2, label %land.lhs.true19.2.for.inc.2_crit_edge

land.lhs.true19.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true19.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then24.2:                                      ; preds = %land.lhs.true19.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then24.2, %land.lhs.true19.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body7.2.for.inc.2_crit_edge
  %best_m.3.2 = phi i32 [ %pll_m.0201.2, %if.then24.2 ], [ %best_m.2197.2, %land.lhs.true19.2.for.inc.2_crit_edge ], [ %best_m.2197.2, %land.lhs.true.2.for.inc.2_crit_edge ], [ %best_m.2197.2, %for.body7.2.for.inc.2_crit_edge ]
  %best_n.3.2 = phi i32 [ %pll_n.0195.2, %if.then24.2 ], [ %best_n.2198.2, %land.lhs.true19.2.for.inc.2_crit_edge ], [ %best_n.2198.2, %land.lhs.true.2.for.inc.2_crit_edge ], [ %best_n.2198.2, %for.body7.2.for.inc.2_crit_edge ]
  %best_p.3.2 = phi i32 [ 2, %if.then24.2 ], [ %best_p.2199.2, %land.lhs.true19.2.for.inc.2_crit_edge ], [ %best_p.2199.2, %land.lhs.true.2.for.inc.2_crit_edge ], [ %best_p.2199.2, %for.body7.2.for.inc.2_crit_edge ]
  %best_error.3.2 = phi i32 [ %7, %if.then24.2 ], [ %best_error.2200.2, %land.lhs.true19.2.for.inc.2_crit_edge ], [ %best_error.2200.2, %land.lhs.true.2.for.inc.2_crit_edge ], [ %best_error.2200.2, %for.body7.2.for.inc.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %pll_n.0195.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 64
  br i1 %exitcond.2.not, label %for.inc26.2, label %for.inc.2.for.body7.2_crit_edge

for.inc.2.for.body7.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.2

for.inc26.2:                                      ; preds = %for.inc.2
  %inc27.2 = add nuw nsw i32 %pll_m.0201.2, 1
  %exitcond211.2.not = icmp eq i32 %inc27.2, 256
  br i1 %exitcond211.2.not, label %for.inc26.2.for.cond5.preheader.3_crit_edge, label %for.inc26.2.for.cond5.preheader.2_crit_edge

for.inc26.2.for.cond5.preheader.2_crit_edge:      ; preds = %for.inc26.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.2

for.inc26.2.for.cond5.preheader.3_crit_edge:      ; preds = %for.inc26.2
  br label %for.cond5.preheader.3

for.cond5.preheader.3:                            ; preds = %for.inc26.3.for.cond5.preheader.3_crit_edge, %for.inc26.2.for.cond5.preheader.3_crit_edge
  %best_error.1205.3 = phi i32 [ %best_error.3.3, %for.inc26.3.for.cond5.preheader.3_crit_edge ], [ %best_error.3.2, %for.inc26.2.for.cond5.preheader.3_crit_edge ]
  %best_p.1204.3 = phi i32 [ %best_p.3.3, %for.inc26.3.for.cond5.preheader.3_crit_edge ], [ %best_p.3.2, %for.inc26.2.for.cond5.preheader.3_crit_edge ]
  %best_n.1203.3 = phi i32 [ %best_n.3.3, %for.inc26.3.for.cond5.preheader.3_crit_edge ], [ %best_n.3.2, %for.inc26.2.for.cond5.preheader.3_crit_edge ]
  %best_m.1202.3 = phi i32 [ %best_m.3.3, %for.inc26.3.for.cond5.preheader.3_crit_edge ], [ %best_m.3.2, %for.inc26.2.for.cond5.preheader.3_crit_edge ]
  %pll_m.0201.3 = phi i32 [ %inc27.3, %for.inc26.3.for.cond5.preheader.3_crit_edge ], [ 1, %for.inc26.2.for.cond5.preheader.3_crit_edge ]
  br label %for.body7.3

for.body7.3:                                      ; preds = %for.inc.3.for.body7.3_crit_edge, %for.cond5.preheader.3
  %best_error.2200.3 = phi i32 [ %best_error.1205.3, %for.cond5.preheader.3 ], [ %best_error.3.3, %for.inc.3.for.body7.3_crit_edge ]
  %best_p.2199.3 = phi i32 [ %best_p.1204.3, %for.cond5.preheader.3 ], [ %best_p.3.3, %for.inc.3.for.body7.3_crit_edge ]
  %best_n.2198.3 = phi i32 [ %best_n.1203.3, %for.cond5.preheader.3 ], [ %best_n.3.3, %for.inc.3.for.body7.3_crit_edge ]
  %best_m.2197.3 = phi i32 [ %best_m.1202.3, %for.cond5.preheader.3 ], [ %best_m.3.3, %for.inc.3.for.body7.3_crit_edge ]
  %pll_n.0195.3 = phi i32 [ 1, %for.cond5.preheader.3 ], [ %inc.3, %for.inc.3.for.body7.3_crit_edge ]
  %shl.3 = shl i32 %pll_n.0195.3, 3
  %mul.3 = mul i32 %div, %shl.3
  %div8.3 = sdiv i32 %mul.3, %pll_m.0201.3
  %sub.3 = sub i32 %4, %div8.3
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %best_error.2200.3)
  %cmp14.3 = icmp slt i32 %8, %best_error.2200.3
  br i1 %cmp14.3, label %land.lhs.true.3, label %for.body7.3.for.inc.3_crit_edge

for.body7.3.for.inc.3_crit_edge:                  ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.body7.3
  %div15.udiv.3 = udiv i32 %pll_m.0201.3, %pll_n.0195.3
  %div17.3 = sdiv i32 80, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv.3, i32 %div17.3)
  %cmp18.3 = icmp sgt i32 %div15.udiv.3, %div17.3
  br i1 %cmp18.3, label %land.lhs.true19.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true19.3:                                ; preds = %land.lhs.true.3
  %div22.3 = sdiv i32 220, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.udiv.3, i32 %div22.3)
  %cmp23.3 = icmp slt i32 %div15.udiv.3, %div22.3
  br i1 %cmp23.3, label %if.then24.3, label %land.lhs.true19.3.for.inc.3_crit_edge

land.lhs.true19.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true19.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then24.3:                                      ; preds = %land.lhs.true19.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then24.3, %land.lhs.true19.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.body7.3.for.inc.3_crit_edge
  %best_m.3.3 = phi i32 [ %pll_m.0201.3, %if.then24.3 ], [ %best_m.2197.3, %land.lhs.true19.3.for.inc.3_crit_edge ], [ %best_m.2197.3, %land.lhs.true.3.for.inc.3_crit_edge ], [ %best_m.2197.3, %for.body7.3.for.inc.3_crit_edge ]
  %best_n.3.3 = phi i32 [ %pll_n.0195.3, %if.then24.3 ], [ %best_n.2198.3, %land.lhs.true19.3.for.inc.3_crit_edge ], [ %best_n.2198.3, %land.lhs.true.3.for.inc.3_crit_edge ], [ %best_n.2198.3, %for.body7.3.for.inc.3_crit_edge ]
  %best_p.3.3 = phi i32 [ 3, %if.then24.3 ], [ %best_p.2199.3, %land.lhs.true19.3.for.inc.3_crit_edge ], [ %best_p.2199.3, %land.lhs.true.3.for.inc.3_crit_edge ], [ %best_p.2199.3, %for.body7.3.for.inc.3_crit_edge ]
  %best_error.3.3 = phi i32 [ %8, %if.then24.3 ], [ %best_error.2200.3, %land.lhs.true19.3.for.inc.3_crit_edge ], [ %best_error.2200.3, %land.lhs.true.3.for.inc.3_crit_edge ], [ %best_error.2200.3, %for.body7.3.for.inc.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %pll_n.0195.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 64
  br i1 %exitcond.3.not, label %for.inc26.3, label %for.inc.3.for.body7.3_crit_edge

for.inc.3.for.body7.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.3

for.inc26.3:                                      ; preds = %for.inc.3
  %inc27.3 = add nuw nsw i32 %pll_m.0201.3, 1
  %exitcond211.3.not = icmp eq i32 %inc27.3, 256
  br i1 %exitcond211.3.not, label %for.inc29.3, label %for.inc26.3.for.cond5.preheader.3_crit_edge

for.inc26.3.for.cond5.preheader.3_crit_edge:      ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.3

for.inc29.3:                                      ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_n.3.3)
  %tobool.not = icmp eq i32 %best_n.3.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_m.3.3)
  %tobool32.not = icmp eq i32 %best_m.3.3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %for.inc29.3.cleanup_crit_edge, label %if.end34

for.inc29.3.cleanup_crit_edge:                    ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %for.inc29.3
  %9 = ptrtoint ptr %gbe_pll_table. to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gbe_pll_table., align 4
  %div36 = sdiv i32 1000000, %10
  %shl37 = shl i32 %best_n.3.3, %best_p.3.3
  %mul38 = mul i32 %div36, %shl37
  %div39 = sdiv i32 %mul38, %best_m.3.3
  %tobool40.not = icmp eq ptr %timing, null
  br i1 %tobool40.not, label %if.end34.cleanup_crit_edge, label %if.then41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %var, align 4
  %conv = trunc i32 %12 to i16
  %width = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %width, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  %conv42 = trunc i32 %15 to i16
  %height = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 2
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv42, ptr %height, align 2
  %conv43 = trunc i32 %best_m.3.3 to i16
  %pll_m44 = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 15
  %17 = ptrtoint ptr %pll_m44 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv43, ptr %pll_m44, align 4
  %conv45 = trunc i32 %best_n.3.3 to i16
  %pll_n46 = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 16
  %18 = ptrtoint ptr %pll_n46 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv45, ptr %pll_n46, align 2
  %conv47 = trunc i32 %best_p.3.3 to i16
  %pll_p48 = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 17
  %19 = ptrtoint ptr %pll_p48 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv47, ptr %pll_p48, align 4
  %20 = ptrtoint ptr %gbe_pll_table. to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gbe_pll_table., align 4
  %sext190 = shl i32 %best_m.3.3, 16
  %conv52 = ashr exact i32 %sext190, 16
  %mul50 = mul nsw i32 %conv52, 1000
  %mul53 = mul i32 %mul50, %21
  %sext191 = shl i32 %best_n.3.3, 16
  %conv55 = ashr exact i32 %sext191, 16
  %sext = shl i32 %best_p.3.3, 16
  %conv57 = ashr exact i32 %sext, 16
  %shl58 = shl i32 %conv55, %conv57
  %div59 = sdiv i32 %mul53, %shl58
  %cfreq = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 4
  %22 = ptrtoint ptr %cfreq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div59, ptr %cfreq, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %23 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %left_margin, align 4
  %25 = load i32, ptr %var, align 4
  %add = add i32 %25, %24
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %26 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %right_margin, align 4
  %add61 = add i32 %add, %27
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %28 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hsync_len, align 4
  %add62 = add i32 %add61, %29
  %conv63 = trunc i32 %add62 to i16
  %htotal = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 5
  %30 = ptrtoint ptr %htotal to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv63, ptr %htotal, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %31 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %upper_margin, align 4
  %33 = load i32, ptr %yres, align 4
  %add65 = add i32 %33, %32
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %34 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lower_margin, align 4
  %add66 = add i32 %add65, %35
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %36 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vsync_len, align 4
  %add67 = add i32 %add66, %37
  %conv68 = trunc i32 %add67 to i16
  %vtotal = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 10
  %38 = ptrtoint ptr %vtotal to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv68, ptr %vtotal, align 2
  %mul70 = mul i32 %div59, 1000
  %sext192 = shl i32 %add62, 16
  %conv72 = ashr exact i32 %sext192, 16
  %div73 = sdiv i32 %mul70, %conv72
  %mul74 = mul i32 %div73, 1000
  %sext187 = shl i32 %add67, 16
  %conv76 = ashr exact i32 %sext187, 16
  %div77 = sdiv i32 %mul74, %conv76
  %fields_sec = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 3
  %39 = ptrtoint ptr %fields_sec to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div77, ptr %fields_sec, align 4
  %40 = load i32, ptr %var, align 4
  %conv79 = trunc i32 %40 to i16
  %hblank_start = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 6
  %41 = ptrtoint ptr %hblank_start to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv79, ptr %hblank_start, align 2
  %42 = load i32, ptr %yres, align 4
  %conv81 = trunc i32 %42 to i16
  %vblank_start = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 11
  %43 = ptrtoint ptr %vblank_start to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv81, ptr %vblank_start, align 4
  %hblank_end = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 7
  %44 = ptrtoint ptr %hblank_end to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv63, ptr %hblank_end, align 4
  %45 = load i32, ptr %var, align 4
  %46 = load i32, ptr %right_margin, align 4
  %add85 = add i32 %46, %45
  %47 = trunc i32 %add85 to i16
  %conv87 = add i16 %47, 1
  %hsync_start = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 8
  %48 = ptrtoint ptr %hsync_start to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv87, ptr %hsync_start, align 2
  %49 = load i32, ptr %hsync_len, align 4
  %50 = trunc i32 %49 to i16
  %conv92 = add i16 %conv87, %50
  %hsync_end = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 9
  %51 = ptrtoint ptr %hsync_end to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv92, ptr %hsync_end, align 4
  %vblank_end = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 12
  %52 = ptrtoint ptr %vblank_end to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv68, ptr %vblank_end, align 2
  %53 = load i32, ptr %yres, align 4
  %54 = load i32, ptr %lower_margin, align 4
  %add96 = add i32 %54, %53
  %55 = trunc i32 %add96 to i16
  %conv98 = add i16 %55, 1
  %vsync_start = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 13
  %56 = ptrtoint ptr %vsync_start to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv98, ptr %vsync_start, align 4
  %57 = load i32, ptr %vsync_len, align 4
  %58 = trunc i32 %57 to i16
  %conv103 = add i16 %conv98, %58
  %vsync_end = getelementptr inbounds %struct.gbe_timing_info, ptr %timing, i32 0, i32 14
  %59 = ptrtoint ptr %vsync_end to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv103, ptr %vsync_end, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end34.cleanup_crit_edge, %for.inc29.3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc29.3.cleanup_crit_edge ], [ %div39, %if.then41 ], [ %div39, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbe_turn_off() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @gbe_turned_on, align 4
  %0 = load ptr, ptr @gbe, align 4
  %vt_xy = getelementptr inbounds %struct.sgi_gbe, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %vt_xy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %vt_xy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ovr_control = getelementptr inbounds %struct.sgi_gbe, ptr %0, i32 0, i32 32
  %3 = ptrtoint ptr %ovr_control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ovr_control, align 4
  %and1 = and i32 %4, -2
  store volatile i32 %and1, ptr %ovr_control, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #12
  %6 = load ptr, ptr @gbe, align 4
  %frm_control = getelementptr inbounds %struct.sgi_gbe, ptr %6, i32 0, i32 37
  %7 = ptrtoint ptr %frm_control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %frm_control, align 4
  %and3 = and i32 %8, -2
  store volatile i32 %and3, ptr %frm_control, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #12
  %10 = load ptr, ptr @gbe, align 4
  %did_control = getelementptr inbounds %struct.sgi_gbe, ptr %10, i32 0, i32 40
  %11 = ptrtoint ptr %did_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %did_control, align 4
  %and6 = and i32 %12, -2
  store volatile i32 %and6, ptr %did_control, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0183 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = load ptr, ptr @gbe, align 4
  %frm_inhwctrl = getelementptr inbounds %struct.sgi_gbe, ptr %14, i32 0, i32 36
  %15 = ptrtoint ptr %frm_inhwctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %frm_inhwctrl, align 4
  %and10 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  %ovr_inhwctrl = getelementptr inbounds %struct.sgi_gbe, ptr %14, i32 0, i32 31
  %17 = ptrtoint ptr %ovr_inhwctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %ovr_inhwctrl, align 4
  %and13 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool15.not = icmp eq i32 %and13, 0
  br i1 %tobool15.not, label %if.else17, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else17:                                        ; preds = %if.else
  %did_inhwctrl = getelementptr inbounds %struct.sgi_gbe, ptr %14, i32 0, i32 39
  %19 = ptrtoint ptr %did_inhwctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %did_inhwctrl, align 4
  %and18 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool20.not = icmp eq i32 %and18, 0
  br i1 %tobool20.not, label %if.else17.if.end28_crit_edge, label %if.else17.for.inc_crit_edge

if.else17.for.inc_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else17.if.end28_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.inc:                                          ; preds = %if.else17.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %i.0183, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.else17.if.end28_crit_edge
  %22 = load ptr, ptr @gbe, align 4
  %vt_vpixen = getelementptr inbounds %struct.sgi_gbe, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %vt_vpixen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %vt_vpixen, align 4
  %and29 = and i32 %24, 4095
  br label %for.body33

for.body33:                                       ; preds = %if.end39.for.body33_crit_edge, %if.end28
  %i.1184 = phi i32 [ 0, %if.end28 ], [ %inc41, %if.end39.for.body33_crit_edge ]
  %25 = load ptr, ptr @gbe, align 4
  %vt_xy34 = getelementptr inbounds %struct.sgi_gbe, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %vt_xy34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %vt_xy34, align 4
  %and35 = lshr i32 %27, 12
  %shr36 = and i32 %and35, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %shr36, i32 %and29)
  %cmp37 = icmp ult i32 %shr36, %and29
  br i1 %cmp37, label %for.body33.for.body53.preheader_crit_edge, label %if.end39

for.body33.for.body53.preheader_crit_edge:        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53.preheader

if.end39:                                         ; preds = %for.body33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #12
  %inc41 = add nuw nsw i32 %i.1184, 1
  %exitcond190.not = icmp eq i32 %inc41, 100000
  br i1 %exitcond190.not, label %do.end47, label %if.end39.for.body33_crit_edge

if.end39.for.body33_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #15
  br label %for.body53.preheader

for.body53.preheader:                             ; preds = %do.end47, %for.body33.for.body53.preheader_crit_edge
  br label %for.body53

for.body53:                                       ; preds = %if.end59.for.body53_crit_edge, %for.body53.preheader
  %i.2185 = phi i32 [ %inc61, %if.end59.for.body53_crit_edge ], [ 0, %for.body53.preheader ]
  %29 = load ptr, ptr @gbe, align 4
  %vt_xy54 = getelementptr inbounds %struct.sgi_gbe, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %vt_xy54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %vt_xy54, align 4
  %and55 = lshr i32 %31, 12
  %shr56 = and i32 %and55, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %shr56, i32 %and29)
  %cmp57 = icmp ugt i32 %shr56, %and29
  br i1 %cmp57, label %for.body53.if.end70_crit_edge, label %if.end59

for.body53.if.end70_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end59:                                         ; preds = %for.body53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  %inc61 = add nuw nsw i32 %i.2185, 1
  %exitcond191.not = icmp eq i32 %inc61, 10000
  br i1 %exitcond191.not, label %do.end67, label %if.end59.for.body53_crit_edge

if.end59.for.body53_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #15
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %for.body53.if.end70_crit_edge
  %33 = load ptr, ptr @gbe, align 4
  %vt_xy73 = getelementptr inbounds %struct.sgi_gbe, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %vt_xy73 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 -2147483648, ptr %vt_xy73, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #12
  br label %for.body77

for.body77:                                       ; preds = %if.then82.for.body77_crit_edge, %if.end70
  %i.3187 = phi i32 [ %inc86, %if.then82.for.body77_crit_edge ], [ 0, %if.end70 ]
  %45 = load ptr, ptr @gbe, align 4
  %vt_xy78 = getelementptr inbounds %struct.sgi_gbe, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %vt_xy78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %vt_xy78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp81.not = icmp slt i32 %47, 0
  br i1 %cmp81.not, label %for.body77.if.end95_crit_edge, label %if.then82

for.body77.if.end95_crit_edge:                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then82:                                        ; preds = %for.body77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #12
  %inc86 = add nuw nsw i32 %i.3187, 1
  %exitcond192.not = icmp eq i32 %inc86, 10000
  br i1 %exitcond192.not, label %do.end92, label %if.then82.for.body77_crit_edge

if.then82.for.body77_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body77

do.end92:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %if.end95

if.end95:                                         ; preds = %do.end92, %for.body77.if.end95_crit_edge
  %49 = load ptr, ptr @gbe, align 4
  %dotclock = getelementptr inbounds %struct.sgi_gbe, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dotclock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %dotclock, align 4
  %and96 = and i32 %51, -1048577
  store volatile i32 %and96, ptr %dotclock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #12
  br label %for.body107

for.body107:                                      ; preds = %if.then112.for.body107_crit_edge, %if.end95
  %i.4189 = phi i32 [ %inc116, %if.then112.for.body107_crit_edge ], [ 0, %if.end95 ]
  %62 = load ptr, ptr @gbe, align 4
  %dotclock108 = getelementptr inbounds %struct.sgi_gbe, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %dotclock108 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %dotclock108, align 4
  %65 = and i32 %64, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool111.not = icmp eq i32 %65, 0
  br i1 %tobool111.not, label %for.body107.if.end125_crit_edge, label %if.then112

for.body107.if.end125_crit_edge:                  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then112:                                       ; preds = %for.body107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #12
  %inc116 = add nuw nsw i32 %i.4189, 1
  %exitcond193.not = icmp eq i32 %inc116, 10000
  br i1 %exitcond193.not, label %do.end122, label %if.then112.for.body107_crit_edge

if.then112.for.body107_crit_edge:                 ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

do.end122:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %for.body107.if.end125_crit_edge
  %67 = load ptr, ptr @gbe, align 4
  %frm_size_tile = getelementptr inbounds %struct.sgi_gbe, ptr %67, i32 0, i32 34
  %68 = ptrtoint ptr %frm_size_tile to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %frm_size_tile, align 4
  %and126 = and i32 %69, -32769
  %or127 = or i32 %69, 32768
  store volatile i32 %or127, ptr %frm_size_tile, align 4
  store volatile i32 %and126, ptr %frm_size_tile, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbe_turn_on() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gbe_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @gbe, align 4
  %vt_xy = getelementptr inbounds %struct.sgi_gbe, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vt_xy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vt_xy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp sgt i32 %3, -1
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %4 = load ptr, ptr @gbe, align 4
  %dotclock = getelementptr inbounds %struct.sgi_gbe, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dotclock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dotclock, align 4
  %or = or i32 %6, 1048576
  store volatile i32 %or, ptr %dotclock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #12
  br label %for.body

for.body:                                         ; preds = %if.then11.for.body_crit_edge, %if.end3
  %i.094 = phi i32 [ %inc, %if.then11.for.body_crit_edge ], [ 0, %if.end3 ]
  %17 = load ptr, ptr @gbe, align 4
  %dotclock7 = getelementptr inbounds %struct.sgi_gbe, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dotclock7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dotclock7, align 4
  %20 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10.not.not = icmp eq i32 %20, 0
  br i1 %cmp10.not.not, label %if.then11, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  br label %if.end15

if.end15:                                         ; preds = %do.end, %for.body.if.end15_crit_edge
  %22 = load ptr, ptr @gbe, align 4
  %vt_xy18 = getelementptr inbounds %struct.sgi_gbe, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %vt_xy18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %vt_xy18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #12
  br label %for.body27

for.body27:                                       ; preds = %if.then32.for.body27_crit_edge, %if.end15
  %i.196 = phi i32 [ %inc36, %if.then32.for.body27_crit_edge ], [ 0, %if.end15 ]
  %34 = load ptr, ptr @gbe, align 4
  %vt_xy28 = getelementptr inbounds %struct.sgi_gbe, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %vt_xy28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %vt_xy28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool31.not = icmp sgt i32 %36, -1
  br i1 %tobool31.not, label %for.body27.if.end45_crit_edge, label %if.then32

for.body27.if.end45_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then32:                                        ; preds = %for.body27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #12
  %inc36 = add nuw nsw i32 %i.196, 1
  %exitcond98.not = icmp eq i32 %inc36, 10000
  br i1 %exitcond98.not, label %do.end42, label %if.then32.for.body27_crit_edge

if.then32.for.body27_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27

do.end42:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #15
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %for.body27.if.end45_crit_edge
  %38 = load ptr, ptr @gbe, align 4
  %frm_control = getelementptr inbounds %struct.sgi_gbe, ptr %38, i32 0, i32 37
  %39 = ptrtoint ptr %frm_control to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %frm_control, align 4
  %or47 = or i32 %40, 1
  store volatile i32 %or47, ptr %frm_control, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #12
  br label %for.body51

for.body51:                                       ; preds = %if.then55.for.body51_crit_edge, %if.end45
  %i.297 = phi i32 [ 0, %if.end45 ], [ %inc59, %if.then55.for.body51_crit_edge ]
  %42 = load ptr, ptr @gbe, align 4
  %frm_inhwctrl = getelementptr inbounds %struct.sgi_gbe, ptr %42, i32 0, i32 36
  %43 = ptrtoint ptr %frm_inhwctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %frm_inhwctrl, align 4
  %and52 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp54.not.not = icmp eq i32 %and52, 0
  br i1 %cmp54.not.not, label %if.then55, label %for.body51.if.end68_crit_edge

for.body51.if.end68_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then55:                                        ; preds = %for.body51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #12
  %inc59 = add nuw nsw i32 %i.297, 1
  %exitcond99.not = icmp eq i32 %inc59, 10000
  br i1 %exitcond99.not, label %do.end65, label %if.then55.for.body51_crit_edge

if.then55.for.body51_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body51

do.end65:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #15
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %for.body51.if.end68_crit_edge
  store i1 true, ptr @gbe_turned_on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_show_memsize(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gbe_mem_size, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.55, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbefb_show_rev(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gbe_revision, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.57, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !152, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_gbefb__303_1291_gbefb_init6, !1, !"__initcall__kmod_gbefb__303_1291_gbefb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/gbefb.c", i32 1291, i32 1}
!2 = !{ptr @__exitcall_gbefb_exit, !3, !"__exitcall_gbefb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/gbefb.c", i32 1292, i32 1}
!4 = !{ptr @__UNIQUE_ID_file304, !5, !"__UNIQUE_ID_file304", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/gbefb.c", i32 1294, i32 1}
!6 = !{ptr @__UNIQUE_ID_license305, !5, !"__UNIQUE_ID_license305", i1 false, i1 false}
!7 = distinct !{null, !8, !"gbefb_device", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/gbefb.c", i32 1265, i32 32}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/gbefb.c", i32 1261, i32 11}
!11 = !{ptr @gbefb_driver, !12, !"gbefb_driver", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/gbefb.c", i32 1257, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/gbefb.c", i32 1143, i32 7}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/gbefb.c", i32 1144, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gbefb_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @gbefb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/gbefb.c", i32 1152, i32 3}
!23 = !{ptr @gbefb_probe._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @gbefb_probe._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/gbefb.c", i32 1162, i32 3}
!27 = !{ptr @gbefb_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gbefb_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/gbefb.c", i32 1172, i32 4}
!31 = !{ptr @gbefb_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gbefb_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/gbefb.c", i32 1185, i32 4}
!35 = !{ptr @gbefb_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gbefb_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/gbefb.c", i32 1218, i32 3}
!39 = !{ptr @gbefb_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gbefb_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/gbefb.c", i32 1226, i32 2}
!43 = !{ptr @gbefb_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gbefb_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/gbefb.c", i32 1098, i32 38}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/gbefb.c", i32 1099, i32 26}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/gbefb.c", i32 1100, i32 31}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/gbefb.c", i32 1104, i32 38}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/gbefb.c", i32 1105, i32 31}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/gbefb.c", i32 1110, i32 33}
!57 = distinct !{null, !58, !"flat_panel_enabled", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/gbefb.c", i32 181, i32 12}
!59 = !{ptr @default_var_CRT, !60, !"default_var_CRT", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/gbefb.c", i32 86, i32 33}
!61 = !{ptr @default_mode_CRT, !62, !"default_mode_CRT", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/gbefb.c", i32 149, i32 28}
!63 = !{ptr @default_var_LCD, !64, !"default_var_LCD", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/gbefb.c", i32 117, i32 33}
!65 = !{ptr @default_mode_LCD, !66, !"default_mode_LCD", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/gbefb.c", i32 164, i32 28}
!67 = !{ptr @gbe, !68, !"gbe", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/gbefb.c", i32 33, i32 24}
!69 = !{ptr @gbe_revision, !70, !"gbe_revision", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/gbefb.c", i32 75, i32 12}
!71 = !{ptr @gbe_tiles, !72, !"gbe_tiles", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/gbefb.c", i32 73, i32 3}
!73 = !{ptr @gbe_mem_phys, !74, !"gbe_mem_phys", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/gbefb.c", i32 68, i32 22}
!75 = !{ptr @gbe_mem_size, !76, !"gbe_mem_size", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/gbefb.c", i32 65, i32 21}
!77 = !{ptr @gbe_mem, !78, !"gbe_mem", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/gbefb.c", i32 66, i32 14}
!79 = !{ptr @gbe_dma_addr, !80, !"gbe_dma_addr", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/gbefb.c", i32 67, i32 19}
!81 = !{ptr @gbefb_ops, !82, !"gbefb_ops", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/gbefb.c", i32 1045, i32 28}
!83 = !{ptr @gbe_pll_table, !84, !"gbe_pll_table", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/gbefb.c", i32 449, i32 28}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/gbefb.c", i32 244, i32 3}
!87 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @gbe_turn_off._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @gbe_turn_off._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/gbefb.c", i32 258, i32 3}
!92 = !{ptr @gbe_turn_off._entry.31, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @gbe_turn_off._entry_ptr.33, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @gbe_turn_off._entry.34, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/gbefb.c", i32 268, i32 3}
!96 = !{ptr @gbe_turn_off._entry_ptr.35, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/gbefb.c", i32 283, i32 3}
!99 = !{ptr @gbe_turn_off._entry.36, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @gbe_turn_off._entry_ptr.38, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/gbefb.c", i32 298, i32 3}
!103 = !{ptr @gbe_turn_off._entry.39, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @gbe_turn_off._entry_ptr.41, !102, !"_entry_ptr", i1 false, i1 false}
!105 = distinct !{null, !106, !"gbe_turned_on", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/gbefb.c", i32 81, i32 12}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/gbefb.c", i32 335, i32 3}
!109 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @gbe_turn_on._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @gbe_turn_on._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/gbefb.c", i32 350, i32 3}
!114 = !{ptr @gbe_turn_on._entry.44, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @gbe_turn_on._entry_ptr.46, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/gbefb.c", i32 365, i32 3}
!118 = !{ptr @gbe_turn_on._entry.47, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @gbe_turn_on._entry_ptr.49, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @gbe_cmap, !121, !"gbe_cmap", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/gbefb.c", i32 80, i32 17}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/gbefb.c", i32 378, i32 4}
!124 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @gbe_loadcmap._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @gbe_loadcmap._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/gbefb.c", i32 867, i32 5}
!129 = !{ptr @gbefb_setcolreg._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @gbefb_setcolreg._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @pseudo_palette, !132, !"pseudo_palette", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/gbefb.c", i32 79, i32 17}
!133 = !{ptr @mode_option, !134, !"mode_option", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/gbefb.c", i32 83, i32 14}
!135 = !{ptr @default_mode, !136, !"default_mode", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/gbefb.c", i32 178, i32 29}
!137 = !{ptr @default_var, !138, !"default_var", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/gbefb.c", i32 179, i32 34}
!139 = distinct !{null, !140, !"ywrap", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/gbefb.c", i32 77, i32 18}
!141 = distinct !{null, !142, !"ypan", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/gbefb.c", i32 77, i32 12}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/gbefb.c", i32 820, i32 18}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/gbefb.c", i32 1066, i32 8}
!147 = !{ptr @dev_attr_size, !146, !"dev_attr_size", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/gbefb.c", i32 1063, i32 34}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/gbefb.c", i32 1073, i32 8}
!152 = !{ptr @dev_attr_revision, !151, !"dev_attr_revision", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/video/fbdev/gbefb.c", i32 1070, i32 34}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
