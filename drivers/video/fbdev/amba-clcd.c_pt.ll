; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/amba-clcd.c_pt.bc'
source_filename = "../drivers/video/fbdev/amba-clcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.85 = type { i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clcd_board = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clcd_fb = type { %struct.fb_info, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, [16 x i32], i8 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clcd_panel = type { %struct.fb_videomode, i16, i16, i32, i32, i32, i32, i16, i32, ptr, i8 }
%struct.clcd_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }

@__initcall__kmod_amba_clcd__303_961_amba_clcdfb_init6 = internal global ptr @amba_clcdfb_init, section ".initcall6.init", align 4
@clcd_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @clcdfb_probe, ptr @clcdfb_remove, ptr null, ptr @clcdfb_id_table }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amba_clcdfb_exit = internal global ptr @amba_clcdfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [59 x i8] c"amba_clcd.description=ARM PrimeCell PL110 CLCD core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [45 x i8] c"amba_clcd.file=drivers/video/fbdev/amba-clcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [22 x i8] c"amba_clcd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ambafb\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clcd-pl11x\00", [21 x i8] zeroinitializer }, align 32
@clcdfb_id_table = internal constant { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 266512, i32 1048574, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@clcdfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CLCD: unable to reserve regs region\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clcdfb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/video/fbdev/amba-clcd.c\00", [32 x i8] zeroinitializer }, align 32
@clcdfb_probe._entry_ptr = internal global ptr @clcdfb_probe._entry, section ".printk_index", align 4
@clcdfb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 894, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PL%03x designer %02x rev%u at 0x%08llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clcdfb_probe._entry_ptr.9 = internal global ptr @clcdfb_probe._entry.5, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max-memory-bandwidth\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arm,pl11x,tft-r0g0b0-pads\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"panel-dpi\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel-timing\00", [19 x i8] zeroinitializer }, align 32
@clcdfb_of_get_dpi_panel_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%pOF: problems parsing panel-timing (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clcdfb_of_get_dpi_panel_mode\00", [35 x i8] zeroinitializer }, align 32
@clcdfb_of_get_dpi_panel_mode._entry_ptr = internal global ptr @clcdfb_of_get_dpi_panel_mode._entry, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%ux%u@%u\00", [23 x i8] zeroinitializer }, align 32
@clcdfb_of_init_tft_panel.panels = internal constant { [7 x %struct.anon.85], [52 x i8] } { [7 x %struct.anon.85] [%struct.anon.85 { i32 272, i32 1, i32 7, i32 13, i32 34 }, %struct.anon.85 { i32 272, i32 0, i32 8, i32 16, i32 136 }, %struct.anon.85 { i32 272, i32 16, i32 8, i32 0, i32 136 }, %struct.anon.85 { i32 273, i32 4, i32 14, i32 20, i32 17 }, %struct.anon.85 { i32 273, i32 3, i32 11, i32 19, i32 51 }, %struct.anon.85 { i32 273, i32 3, i32 10, i32 19, i32 119 }, %struct.anon.85 { i32 273, i32 0, i32 8, i32 16, i32 255 }], [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clcdfb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CLCD: unable to remap registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clcdfb_register\00", [16 x i8] zeroinitializer }, align 32
@clcdfb_register._entry_ptr = internal global ptr @clcdfb_register._entry, section ".printk_index", align 4
@clcdfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clcdfb_check_var, ptr @clcdfb_set_par, ptr @clcdfb_setcolreg, ptr null, ptr @clcdfb_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr @clcdfb_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@clcdfb_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s hardware, %s display\0A\00", [39 x i8] zeroinitializer }, align 32
@clcdfb_register._entry_ptr.23 = internal global ptr @clcdfb_register._entry.21, section ".printk_index", align 4
@clcdfb_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.4, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CLCD: cannot register framebuffer (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@clcdfb_register._entry_ptr.26 = internal global ptr @clcdfb_register._entry.24, section ".printk_index", align 4
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLCD FB\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"clcd_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 944, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 955, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 946, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"clcdfb_id_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 934, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 879, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 892, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 842, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 261, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 712, i32 51 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 738, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 615, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 550, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 552, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 588, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"panels\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 640, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 458, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"clcdfb_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 413, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 522, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [35 x i8] c"../drivers/video/fbdev/amba-clcd.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 529, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_amba_clcdfb_exit, ptr @__initcall__kmod_amba_clcd__303_961_amba_clcdfb_init6, ptr @amba_clcdfb_exit, ptr @clcdfb_of_get_dpi_panel_mode._entry, ptr @clcdfb_of_get_dpi_panel_mode._entry_ptr, ptr @clcdfb_probe._entry, ptr @clcdfb_probe._entry.5, ptr @clcdfb_probe._entry_ptr, ptr @clcdfb_probe._entry_ptr.9, ptr @clcdfb_register._entry, ptr @clcdfb_register._entry.21, ptr @clcdfb_register._entry.24, ptr @clcdfb_register._entry_ptr, ptr @clcdfb_register._entry_ptr.23, ptr @clcdfb_register._entry_ptr.26, ptr @clcd_driver, ptr @.str, ptr @.str.1, ptr @clcdfb_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @clcdfb_of_init_tft_panel.panels, ptr @.str.19, ptr @.str.20, ptr @clcdfb_ops, ptr @.str.22, ptr @.str.25, ptr @str], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcd_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_id_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_of_get_dpi_panel_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_of_init_tft_panel.panels to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clcdfb_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amba_clcdfb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @amba_driver_register(ptr noundef nonnull @clcd_driver) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amba_clcdfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amba_driver_unregister(ptr noundef nonnull @clcd_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.of_node_full_name.exit.i_crit_edge, label %cond.true.i.i

if.end.i.of_node_full_name.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_node_full_name.exit.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %full_name.i.i, align 4
  br label %of_node_full_name.exit.i

of_node_full_name.exit.i:                         ; preds = %cond.true.i.i, %if.end.i.of_node_full_name.exit.i_crit_edge
  %cond.i.i = phi ptr [ %5, %cond.true.i.i ], [ @.str.11, %if.end.i.of_node_full_name.exit.i_crit_edge ]
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cond.i.i, ptr %call.i.i, align 4
  %caps.i = getelementptr inbounds %struct.clcd_board, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %caps.i, align 4
  %check.i = getelementptr inbounds %struct.clcd_board, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %check.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @clcdfb_check, ptr %check.i, align 4
  %decode.i = getelementptr inbounds %struct.clcd_board, ptr %call.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %decode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clcdfb_decode, ptr %decode.i, align 4
  %call4.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  %setup7.i = getelementptr inbounds %struct.clcd_board, ptr %call.i.i, i32 0, i32 6
  %clcdfb_of_dma_setup.clcdfb_of_vram_setup.i = select i1 %tobool5.not.i, ptr @clcdfb_of_dma_setup, ptr @clcdfb_of_vram_setup
  %clcdfb_of_dma_mmap.clcdfb_of_vram_mmap.i = select i1 %tobool5.not.i, ptr @clcdfb_of_dma_mmap, ptr @clcdfb_of_vram_mmap
  %clcdfb_of_dma_remove.clcdfb_of_vram_remove.i = select i1 %tobool5.not.i, ptr @clcdfb_of_dma_remove, ptr @clcdfb_of_vram_remove
  %10 = ptrtoint ptr %setup7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %clcdfb_of_dma_setup.clcdfb_of_vram_setup.i, ptr %setup7.i, align 4
  %mmap.i = getelementptr inbounds %struct.clcd_board, ptr %call.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %mmap.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %clcdfb_of_dma_mmap.clcdfb_of_vram_mmap.i, ptr %mmap.i, align 4
  %remove.i = getelementptr inbounds %struct.clcd_board, ptr %call.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %remove.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %clcdfb_of_dma_remove.clcdfb_of_vram_remove.i, ptr %remove.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %of_node_full_name.exit.i, %entry.if.end5_crit_edge
  %board.0.ph = phi ptr [ %call.i.i, %of_node_full_name.exit.i ], [ %1, %entry.if.end5_crit_edge ]
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  %call11 = tail call i32 @amba_request_regions(ptr noundef %dev, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1216) #15
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.free_region_crit_edge, label %if.end19

if.end15.free_region_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_region

if.end19:                                         ; preds = %if.end15
  %dev20 = getelementptr inbounds %struct.clcd_fb, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev20, align 4
  %board21 = getelementptr inbounds %struct.clcd_fb, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %board21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %board.0.ph, ptr %board21, align 8
  %periphid = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %periphid, align 8
  %and = and i32 %17, 4095
  %shr = lshr i32 %17, 12
  %and28 = and i32 %shr, 255
  %shr30 = lshr i32 %17, 20
  %and31 = and i32 %shr30, 15
  %res = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res, align 8
  %conv = zext i32 %19 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %and, i32 noundef %and28, i32 noundef %and31, i64 noundef %conv) #14
  %setup = getelementptr inbounds %struct.clcd_board, ptr %board.0.ph, i32 0, i32 6
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup, align 4
  %call33 = tail call i32 %21(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end19.free_fb_crit_edge

if.end19.free_fb_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_fb

if.end36:                                         ; preds = %if.end19
  %call37 = tail call fastcc i32 @clcdfb_register(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp eq i32 %call37, 0
  br i1 %cmp, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %board21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %board21, align 8
  %remove = getelementptr inbounds %struct.clcd_board, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %remove, align 4
  tail call void %26(ptr noundef nonnull %call7.i.i) #11
  br label %free_fb

free_fb:                                          ; preds = %if.end41, %if.end19.free_fb_crit_edge
  %ret.0 = phi i32 [ %call33, %if.end19.free_fb_crit_edge ], [ %call37, %if.end41 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %free_region

free_region:                                      ; preds = %free_fb, %if.end15.free_region_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_fb ], [ -12, %if.end15.free_region_crit_edge ]
  tail call void @amba_release_regions(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %free_region, %if.then39, %do.end, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ %ret.1, %free_region ], [ 0, %if.then39 ], [ -22, %if.then.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clcdfb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @clcdfb_disable(ptr noundef %1)
  tail call void @unregister_framebuffer(ptr noundef %1) #11
  %len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.clcd_fb, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %5) #11
  %clk = getelementptr inbounds %struct.clcd_fb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %9) #11
  %board = getelementptr inbounds %struct.clcd_fb, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board, align 4
  %remove = getelementptr inbounds %struct.clcd_board, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remove, align 4
  tail call void %13(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %1) #11
  tail call void @amba_release_regions(ptr noundef %dev) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clcdfb_register(ptr noundef %fb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %periphid = getelementptr inbounds %struct.amba_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %periphid, align 8
  %4 = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 266513, i32 %4)
  %5 = icmp eq i32 %4, 266513
  %spec.select = select i1 %5, i16 28, i16 24
  %spec.select295 = select i1 %5, i16 24, i16 28
  %6 = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %spec.select, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.select295, ptr %8, align 2
  %call = tail call ptr @clk_get(ptr noundef %1, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call to i32
  br label %out

if.end14:                                         ; preds = %entry
  %call16 = tail call i32 @clk_prepare(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end14.free_clk_crit_edge

if.end14.free_clk_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_clk

if.end18:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 21
  %14 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %device, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res, align 8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 10
  %17 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mmio_start, align 4
  %end.i = getelementptr inbounds %struct.amba_device, ptr %13, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  %20 = load i32, ptr %res, align 4
  %sub.i = add i32 %19, 1
  %add.i = sub i32 %sub.i, %20
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 11
  %21 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %mmio_len, align 4
  %call35 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add.i) #11
  %regs = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 6
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call35, ptr %regs, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end, label %if.end40

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %clk_unprep

if.end40:                                         ; preds = %if.end18
  %fix = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7
  %fbops = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 20
  %23 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @clcdfb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags, align 4
  %cmap = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 10
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 27
  %25 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cmap, ptr %pseudo_palette, align 4
  %26 = call ptr @memcpy(ptr %fix, ptr @str, i32 16)
  %type = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 3
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 4
  %28 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %type_aux, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 6
  %29 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 7
  %30 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 8
  %31 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %ywrapstep, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 12
  %32 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %accel, align 4
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %33 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %panel, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xres, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6
  %37 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 3
  %38 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres, align 4
  %yres66 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %yres66 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %yres66, align 4
  %41 = load i32, ptr %xres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %xres_virtual, align 4
  %43 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %yres_virtual, align 4
  %bpp = getelementptr inbounds %struct.clcd_panel, ptr %34, i32 0, i32 7
  %45 = ptrtoint ptr %bpp to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load = load i16, ptr %bpp, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %46 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.cast, ptr %bits_per_pixel, align 4
  %bf.load81 = load i16, ptr %bpp, align 4
  %bf.lshr82 = lshr i16 %bf.load81, 6
  %bf.clear = and i16 %bf.lshr82, 1
  %bf.cast83 = zext i16 %bf.clear to i32
  %grayscale86 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 7
  %47 = ptrtoint ptr %grayscale86 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.cast83, ptr %grayscale86, align 4
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 4
  %48 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pixclock, align 4
  %pixclock91 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 17
  %50 = ptrtoint ptr %pixclock91 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %pixclock91, align 4
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 5
  %51 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %left_margin, align 4
  %left_margin96 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 18
  %53 = ptrtoint ptr %left_margin96 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %left_margin96, align 4
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 6
  %54 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %right_margin, align 4
  %right_margin101 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 19
  %56 = ptrtoint ptr %right_margin101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %right_margin101, align 4
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 7
  %57 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %upper_margin, align 4
  %upper_margin106 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 20
  %59 = ptrtoint ptr %upper_margin106 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %upper_margin106, align 4
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 8
  %60 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lower_margin, align 4
  %lower_margin111 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 21
  %62 = ptrtoint ptr %lower_margin111 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %lower_margin111, align 4
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 9
  %63 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hsync_len, align 4
  %hsync_len116 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 22
  %65 = ptrtoint ptr %hsync_len116 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %hsync_len116, align 4
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 10
  %66 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vsync_len, align 4
  %vsync_len121 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 23
  %68 = ptrtoint ptr %vsync_len121 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %vsync_len121, align 4
  %sync = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 11
  %69 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sync, align 4
  %sync126 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 24
  %71 = ptrtoint ptr %sync126 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sync126, align 4
  %vmode = getelementptr inbounds %struct.fb_videomode, ptr %34, i32 0, i32 12
  %72 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vmode, align 4
  %vmode131 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 25
  %74 = ptrtoint ptr %vmode131 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %vmode131, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 13
  %75 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %activate, align 4
  %nonstd = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 12
  %76 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %nonstd, align 4
  %height = getelementptr inbounds %struct.clcd_panel, ptr %34, i32 0, i32 2
  %77 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %height, align 2
  %conv = sext i16 %78 to i32
  %height139 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 14
  %79 = ptrtoint ptr %height139 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv, ptr %height139, align 4
  %width = getelementptr inbounds %struct.clcd_panel, ptr %34, i32 0, i32 1
  %80 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %width, align 4
  %conv141 = sext i16 %81 to i32
  %width144 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 15
  %82 = ptrtoint ptr %width144 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv141, ptr %width144, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 16
  %83 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %accel_flags, align 4
  %hfmin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 8, i32 11
  %84 = ptrtoint ptr %hfmin to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %hfmin, align 4
  %hfmax = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 8, i32 12
  %85 = ptrtoint ptr %hfmax to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 100000, ptr %hfmax, align 4
  %vfmin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 8, i32 18
  %86 = ptrtoint ptr %vfmin to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %vfmin, align 2
  %vfmax = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 8, i32 19
  %87 = ptrtoint ptr %vfmax to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 400, ptr %vfmax, align 4
  %dclkmin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 8, i32 13
  %88 = ptrtoint ptr %dclkmin to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1000000, ptr %dclkmin, align 4
  %dclkmax = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 8, i32 14
  %89 = ptrtoint ptr %dclkmax to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 100000000, ptr %dclkmax, align 4
  %call160 = tail call fastcc i32 @clcdfb_set_bitfields(ptr noundef %fb, ptr noundef %var)
  %cmap162 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 12
  %call163 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap162, i32 noundef 256, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %do.body167, label %if.end40.unmap_crit_edge

if.end40.unmap_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap

do.body167:                                       ; preds = %if.end40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  %92 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %6, align 4
  %conv172 = zext i16 %93 to i32
  %add.ptr = getelementptr i8, ptr %91, i32 %conv172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !79
  %call176 = tail call i32 @fb_set_var(ptr noundef %fb, ptr noundef %var) #11
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  %board = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 4
  %96 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %board, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %100 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %panel, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.22, ptr noundef %99, ptr noundef %103) #14
  %call186 = tail call i32 @register_framebuffer(ptr noundef %fb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %do.body167.out_crit_edge, label %do.end193

do.body167.out_crit_edge:                         ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end193:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call186) #14
  tail call void @fb_dealloc_cmap(ptr noundef %cmap162) #11
  br label %unmap

unmap:                                            ; preds = %do.end193, %if.end40.unmap_crit_edge
  %ret.0 = phi i32 [ %call163, %if.end40.unmap_crit_edge ], [ %call186, %do.end193 ]
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %105) #11
  br label %clk_unprep

clk_unprep:                                       ; preds = %unmap, %do.end
  %ret.1 = phi i32 [ %ret.0, %unmap ], [ -12, %do.end ]
  %106 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %107) #11
  br label %free_clk

free_clk:                                         ; preds = %clk_unprep, %if.end14.free_clk_crit_edge
  %ret.2 = phi i32 [ %call16, %if.end14.free_clk_crit_edge ], [ %ret.1, %clk_unprep ]
  %108 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %109) #11
  br label %out

out:                                              ; preds = %free_clk, %do.body167.out_crit_edge, %if.then11
  %ret.3 = phi i32 [ %11, %if.then11 ], [ %ret.2, %free_clk ], [ 0, %do.body167.out_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clcdfb_check(ptr nocapture noundef readonly %fb, ptr nocapture noundef %var) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  %add = add i32 %1, 15
  %and = and i32 %add, -16
  store i32 %and, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %xres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %3 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %yres, align 4
  %add2 = add i32 %4, 1
  %and3 = and i32 %add2, -2
  store i32 %and3, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %5 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %yres_virtual, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %6 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %right_margin, align 4
  %8 = add i32 %7, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -251, i32 %8)
  %9 = icmp ult i32 %8, -251
  br i1 %9, label %entry.return_crit_edge, label %lor.lhs.false7

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false7:                                   ; preds = %entry
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %10 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %left_margin, align 4
  %12 = add i32 %11, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -251, i32 %12)
  %13 = icmp ult i32 %12, -251
  br i1 %13, label %lor.lhs.false7.return_crit_edge, label %lor.lhs.false12

lor.lhs.false7.return_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %14 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hsync_len, align 4
  %16 = add i32 %15, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -251, i32 %16)
  %17 = icmp ult i32 %16, -251
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp19 = icmp ugt i32 %and, 4096
  %or.cond154 = select i1 %17, i1 true, i1 %cmp19
  br i1 %or.cond154, label %lor.lhs.false12.return_crit_edge, label %lor.lhs.false20

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false20:                                  ; preds = %lor.lhs.false12
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %18 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lower_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp21 = icmp ugt i32 %19, 255
  br i1 %cmp21, label %lor.lhs.false20.return_crit_edge, label %lor.lhs.false22

lor.lhs.false20.return_crit_edge:                 ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %20 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %upper_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %21)
  %cmp23 = icmp ugt i32 %21, 255
  br i1 %cmp23, label %lor.lhs.false22.return_crit_edge, label %lor.lhs.false24

lor.lhs.false22.return_crit_edge:                 ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %22 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp25 = icmp ugt i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and3)
  %cmp28 = icmp ugt i32 %and3, 1024
  %or.cond155 = select i1 %cmp25, i1 true, i1 %cmp28
  br i1 %or.cond155, label %lor.lhs.false24.return_crit_edge, label %if.end

lor.lhs.false24.return_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false24
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %24 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %grayscale, align 4
  %var30 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6
  %grayscale31 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 7
  %26 = ptrtoint ptr %grayscale31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %grayscale31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp32.not = icmp eq i32 %25, %27
  br i1 %cmp32.not, label %lor.lhs.false33, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false33:                                  ; preds = %if.end
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %28 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vmode, align 4
  %and34 = and i32 %29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 0
  br i1 %cmp35.not, label %if.end37, label %lor.lhs.false33.return_crit_edge

lor.lhs.false33.return_crit_edge:                 ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end37:                                         ; preds = %lor.lhs.false33
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %30 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %panel, align 4
  %fixedtimings = getelementptr inbounds %struct.clcd_panel, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %fixedtimings to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %fixedtimings, align 4
  %33 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not = icmp eq i16 %33, 0
  br i1 %tobool.not, label %if.end37.if.end101_crit_edge, label %land.lhs.true

if.end37.if.end101_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

land.lhs.true:                                    ; preds = %if.end37
  %34 = ptrtoint ptr %var30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %var30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %35)
  %cmp42.not = icmp eq i32 %and, %35
  br i1 %cmp42.not, label %lor.lhs.false43, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false43:                                  ; preds = %land.lhs.true
  %yres47 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %yres47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %37)
  %cmp48.not = icmp eq i32 %and3, %37
  br i1 %cmp48.not, label %lor.lhs.false49, label %lor.lhs.false43.return_crit_edge

lor.lhs.false43.return_crit_edge:                 ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false49:                                  ; preds = %lor.lhs.false43
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %38 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bits_per_pixel, align 4
  %bits_per_pixel52 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %40 = ptrtoint ptr %bits_per_pixel52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp53.not = icmp eq i32 %39, %41
  br i1 %cmp53.not, label %lor.lhs.false54, label %lor.lhs.false49.return_crit_edge

lor.lhs.false49.return_crit_edge:                 ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false54:                                  ; preds = %lor.lhs.false49
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %42 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixclock, align 4
  %pixclock57 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 17
  %44 = ptrtoint ptr %pixclock57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixclock57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp58.not = icmp eq i32 %43, %45
  br i1 %cmp58.not, label %lor.lhs.false59, label %lor.lhs.false54.return_crit_edge

lor.lhs.false54.return_crit_edge:                 ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false59:                                  ; preds = %lor.lhs.false54
  %left_margin63 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 18
  %46 = ptrtoint ptr %left_margin63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %left_margin63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %47)
  %cmp64.not = icmp eq i32 %11, %47
  br i1 %cmp64.not, label %lor.lhs.false65, label %lor.lhs.false59.return_crit_edge

lor.lhs.false59.return_crit_edge:                 ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false65:                                  ; preds = %lor.lhs.false59
  %right_margin69 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 19
  %48 = ptrtoint ptr %right_margin69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %right_margin69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %49)
  %cmp70.not = icmp eq i32 %7, %49
  br i1 %cmp70.not, label %lor.lhs.false71, label %lor.lhs.false65.return_crit_edge

lor.lhs.false65.return_crit_edge:                 ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false71:                                  ; preds = %lor.lhs.false65
  %upper_margin75 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 20
  %50 = ptrtoint ptr %upper_margin75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %upper_margin75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %51)
  %cmp76.not = icmp eq i32 %21, %51
  br i1 %cmp76.not, label %lor.lhs.false77, label %lor.lhs.false71.return_crit_edge

lor.lhs.false71.return_crit_edge:                 ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false77:                                  ; preds = %lor.lhs.false71
  %lower_margin81 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 21
  %52 = ptrtoint ptr %lower_margin81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lower_margin81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %53)
  %cmp82.not = icmp eq i32 %19, %53
  br i1 %cmp82.not, label %lor.lhs.false83, label %lor.lhs.false77.return_crit_edge

lor.lhs.false77.return_crit_edge:                 ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false83:                                  ; preds = %lor.lhs.false77
  %hsync_len87 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 22
  %54 = ptrtoint ptr %hsync_len87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hsync_len87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %55)
  %cmp88.not = icmp eq i32 %15, %55
  br i1 %cmp88.not, label %lor.lhs.false89, label %lor.lhs.false83.return_crit_edge

lor.lhs.false83.return_crit_edge:                 ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false89:                                  ; preds = %lor.lhs.false83
  %vsync_len93 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 23
  %56 = ptrtoint ptr %vsync_len93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vsync_len93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %57)
  %cmp94.not = icmp eq i32 %23, %57
  br i1 %cmp94.not, label %lor.lhs.false95, label %lor.lhs.false89.return_crit_edge

lor.lhs.false89.return_crit_edge:                 ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false95:                                  ; preds = %lor.lhs.false89
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %58 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sync, align 4
  %sync98 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 24
  %60 = ptrtoint ptr %sync98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sync98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp99.not = icmp eq i32 %59, %61
  br i1 %cmp99.not, label %lor.lhs.false95.if.end101_crit_edge, label %lor.lhs.false95.return_crit_edge

lor.lhs.false95.return_crit_edge:                 ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false95.if.end101_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.end101:                                        ; preds = %lor.lhs.false95.if.end101_crit_edge, %if.end37.if.end101_crit_edge
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %62 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %nonstd, align 4
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %63 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %accel_flags, align 4
  br label %return

return:                                           ; preds = %if.end101, %lor.lhs.false95.return_crit_edge, %lor.lhs.false89.return_crit_edge, %lor.lhs.false83.return_crit_edge, %lor.lhs.false77.return_crit_edge, %lor.lhs.false71.return_crit_edge, %lor.lhs.false65.return_crit_edge, %lor.lhs.false59.return_crit_edge, %lor.lhs.false54.return_crit_edge, %lor.lhs.false49.return_crit_edge, %lor.lhs.false43.return_crit_edge, %land.lhs.true.return_crit_edge, %lor.lhs.false33.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false24.return_crit_edge, %lor.lhs.false22.return_crit_edge, %lor.lhs.false20.return_crit_edge, %lor.lhs.false12.return_crit_edge, %lor.lhs.false7.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end101 ], [ -22, %lor.lhs.false24.return_crit_edge ], [ -22, %lor.lhs.false22.return_crit_edge ], [ -22, %lor.lhs.false20.return_crit_edge ], [ -22, %lor.lhs.false12.return_crit_edge ], [ -22, %lor.lhs.false7.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false33.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false95.return_crit_edge ], [ -22, %lor.lhs.false89.return_crit_edge ], [ -22, %lor.lhs.false83.return_crit_edge ], [ -22, %lor.lhs.false77.return_crit_edge ], [ -22, %lor.lhs.false71.return_crit_edge ], [ -22, %lor.lhs.false65.return_crit_edge ], [ -22, %lor.lhs.false59.return_crit_edge ], [ -22, %lor.lhs.false54.return_crit_edge ], [ -22, %lor.lhs.false49.return_crit_edge ], [ -22, %lor.lhs.false43.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @clcdfb_decode(ptr nocapture noundef readonly %fb, ptr nocapture noundef writeonly %regs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %var2 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6
  %0 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var2, align 4
  %2 = lshr i32 %1, 2
  %sub = and i32 %2, 1073741820
  %shl = add nsw i32 %sub, -4
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 22
  %3 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hsync_len, align 4
  %sub3 = shl i32 %4, 8
  %shl4 = add i32 %sub3, -256
  %or = or i32 %shl, %shl4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 19
  %5 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %right_margin, align 4
  %sub5 = shl i32 %6, 16
  %shl6 = add i32 %sub5, -65536
  %or7 = or i32 %or, %shl6
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 18
  %7 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %left_margin, align 4
  %sub8 = shl i32 %8, 24
  %shl9 = add i32 %sub8, -16777216
  %or10 = or i32 %or7, %shl9
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or10, ptr %regs, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %cntl = getelementptr inbounds %struct.clcd_panel, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntl, align 4
  %and = lshr i32 %15, 7
  %and.lobit = and i32 %and, 1
  %spec.select = lshr i32 %11, %and.lobit
  %sub12 = add i32 %spec.select, -1
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 23
  %16 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsync_len, align 4
  %sub13 = shl i32 %17, 10
  %shl14 = add i32 %sub13, -1024
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 21
  %18 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lower_margin, align 4
  %shl16 = shl i32 %19, 16
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 20
  %20 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %upper_margin, align 4
  %shl18 = shl i32 %21, 24
  %or15 = or i32 %shl16, %shl14
  %or17 = or i32 %or15, %sub12
  %or19 = or i32 %or17, %shl18
  %tim1 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 1
  %22 = ptrtoint ptr %tim1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or19, ptr %tim1, align 4
  %23 = load ptr, ptr %panel, align 4
  %tim2 = getelementptr inbounds %struct.clcd_panel, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %tim2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tim2, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 24
  %26 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sync, align 4
  %and21 = shl i32 %27, 12
  %28 = and i32 %and21, 4096
  %29 = xor i32 %28, 4096
  %or23 = or i32 %29, %25
  %and25 = shl i32 %27, 10
  %30 = and i32 %and25, 2048
  %31 = xor i32 %30, 2048
  %or28 = or i32 %or23, %31
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xres_virtual, align 4
  %cntl30 = getelementptr inbounds %struct.clcd_panel, ptr %23, i32 0, i32 5
  %34 = ptrtoint ptr %cntl30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cntl30, align 4
  %and31 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %entry.if.end48_crit_edge

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.else:                                          ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 7
  %36 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool34.not = icmp eq i32 %37, 0
  br i1 %tobool34.not, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %33, 3
  %div36 = udiv i32 %mul, 3
  br label %if.end48

if.else37:                                        ; preds = %if.else
  %and40 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  %div43170 = lshr i32 %33, 3
  br label %if.end48

if.else44:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  %div45169 = lshr i32 %33, 2
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then42, %if.then35, %entry.if.end48_crit_edge
  %cpl.0 = phi i32 [ %33, %entry.if.end48_crit_edge ], [ %div43170, %if.then42 ], [ %div45169, %if.else44 ], [ %div36, %if.then35 ]
  %sub49 = shl i32 %cpl.0, 16
  %shl50 = add i32 %sub49, -65536
  %or51 = or i32 %or28, %shl50
  %tim252 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 2
  %38 = ptrtoint ptr %tim252 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or51, ptr %tim252, align 4
  %39 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %panel, align 4
  %tim3 = getelementptr inbounds %struct.clcd_panel, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %tim3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tim3, align 4
  %tim354 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 3
  %43 = ptrtoint ptr %tim354 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tim354, align 4
  %44 = load ptr, ptr %panel, align 4
  %cntl56 = getelementptr inbounds %struct.clcd_panel, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %cntl56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cntl56, align 4
  %grayscale57 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 7
  %47 = ptrtoint ptr %grayscale57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %grayscale57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool58.not = icmp eq i32 %48, 0
  %or60 = or i32 %46, 16
  %spec.select172 = select i1 %tobool58.not, i32 %46, i32 %or60
  %caps = getelementptr inbounds %struct.clcd_panel, ptr %44, i32 0, i32 6
  %49 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool63.not = icmp eq i32 %50, 0
  br i1 %tobool63.not, label %if.end48.if.end78_crit_edge, label %land.lhs.true

if.end48.if.end78_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

land.lhs.true:                                    ; preds = %if.end48
  %board = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 4
  %51 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %board, align 4
  %caps64 = getelementptr inbounds %struct.clcd_board, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %caps64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %caps64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool65.not = icmp eq i32 %54, 0
  br i1 %tobool65.not, label %land.lhs.true.if.end78_crit_edge, label %land.lhs.true66

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

land.lhs.true66:                                  ; preds = %land.lhs.true
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %55 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %56)
  %cmp = icmp ugt i32 %56, 15
  br i1 %cmp, label %if.then67, label %land.lhs.true66.if.end78_crit_edge

land.lhs.true66.if.end78_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then67:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  %red = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 8
  %57 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %red, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp68 = icmp eq i32 %58, 0
  %and70 = and i32 %spec.select172, -257
  %masksel = select i1 %cmp68, i32 0, i32 256
  %val.2 = or i32 %masksel, %and70
  %bgr_connection = getelementptr inbounds %struct.clcd_panel, ptr %44, i32 0, i32 10
  %59 = ptrtoint ptr %bgr_connection to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bgr_connection, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool75.not = icmp eq i8 %60, 0
  %xor = xor i32 %val.2, 256
  %spec.select173 = select i1 %tobool75.not, i32 %val.2, i32 %xor
  br label %if.end78

if.end78:                                         ; preds = %if.then67, %land.lhs.true66.if.end78_crit_edge, %land.lhs.true.if.end78_crit_edge, %if.end48.if.end78_crit_edge
  %val.3 = phi i32 [ %spec.select172, %land.lhs.true66.if.end78_crit_edge ], [ %spec.select172, %land.lhs.true.if.end78_crit_edge ], [ %spec.select172, %if.end48.if.end78_crit_edge ], [ %spec.select173, %if.then67 ]
  %bits_per_pixel79 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 6
  %61 = ptrtoint ptr %bits_per_pixel79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bits_per_pixel79, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %if.end78.sw.epilog_crit_edge [
    i32 32, label %sw.bb103
    i32 2, label %sw.bb81
    i32 4, label %sw.bb83
    i32 8, label %sw.bb85
    i32 16, label %sw.bb87
  ]

if.end78.sw.epilog_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %or82 = or i32 %val.3, 2
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %or84 = or i32 %val.3, 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %or86 = or i32 %val.3, 6
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end78
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %periphid = getelementptr inbounds %struct.amba_device, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %periphid, align 8
  %and88 = and i32 %67, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and88)
  %cmp89 = icmp eq i32 %and88, 272
  br i1 %cmp89, label %sw.bb87.if.then91_crit_edge, label %lor.lhs.false

sw.bb87.if.then91_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

lor.lhs.false:                                    ; preds = %sw.bb87
  %length = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 9, i32 1
  %68 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %69, label %if.else99 [
    i32 5, label %lor.lhs.false.if.then91_crit_edge
    i32 6, label %if.then97
  ]

lor.lhs.false.if.then91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false.if.then91_crit_edge, %sw.bb87.if.then91_crit_edge
  %or92 = or i32 %val.3, 8
  br label %sw.epilog

if.then97:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %or98 = or i32 %val.3, 12
  br label %sw.epilog

if.else99:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %or100 = or i32 %val.3, 14
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %or104 = or i32 %val.3, 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb103, %if.else99, %if.then97, %if.then91, %sw.bb85, %sw.bb83, %sw.bb81, %if.end78.sw.epilog_crit_edge
  %val.4 = phi i32 [ %or104, %sw.bb103 ], [ %or92, %if.then91 ], [ %or98, %if.then97 ], [ %or100, %if.else99 ], [ %or86, %sw.bb85 ], [ %or84, %sw.bb83 ], [ %or82, %sw.bb81 ], [ %val.3, %if.end78.sw.epilog_crit_edge ]
  %cntl105 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 4
  %71 = ptrtoint ptr %cntl105 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %val.4, ptr %cntl105, align 4
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 6, i32 17
  %72 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pixclock, align 4
  %pixclock106 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 5
  %74 = ptrtoint ptr %pixclock106 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %pixclock106, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_of_vram_setup(ptr nocapture noundef %fb) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #11
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %size, align 8, !annotation !81
  %call = tail call fastcc i32 @clcdfb_of_init_display(ptr noundef %fb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end5

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %of_parse_phandle.exit
  %call6 = call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #11
  %8 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %8, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call.i29 = call ptr @__of_get_address(ptr noundef nonnull %7, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %size, ptr noundef null) #11
  %call13 = call i64 @of_translate_address(ptr noundef nonnull %7, ptr noundef %call.i29) #11
  %conv = trunc i64 %call13 to i32
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %smem_start, align 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  %conv15 = trunc i64 %12 to i32
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv15, ptr %smem_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %of_parse_phandle.exit.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -19, %of_parse_phandle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_of_vram_mmap(ptr nocapture noundef readonly %fb, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %1, 12
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp.not = icmp ule i32 %7, %shl
  %sub2 = sub i32 %7, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub2)
  %cmp3 = icmp ugt i32 %sub, %sub2
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_start, align 4
  %shr = lshr i32 %9, 12
  %add = add i32 %shr, %1
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %10 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %11, -61
  %or = or i32 %and, 4
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %5, i32 noundef %add, i32 noundef %sub, i32 noundef %or) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clcdfb_of_vram_remove(ptr nocapture noundef readonly %fb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 25
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @iounmap(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_of_dma_setup(ptr nocapture noundef %fb) #2 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #11
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !81
  %call = tail call fastcc i32 @clcdfb_of_init_display(ptr noundef %fb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %panel, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres, align 4
  %mul = mul i32 %6, %4
  %bpp = getelementptr inbounds %struct.clcd_panel, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %bpp to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %bpp, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %mul4 = mul i32 %mul, %bf.cast
  %div27 = lshr i32 %mul4, 3
  %add = add nuw nsw i32 %div27, 4095
  %and = and i32 %add, 1073737728
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %and, ptr noundef nonnull %dma, i32 noundef 3264, i32 noundef 0) #11
  %10 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %10, align 4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %smem_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_of_dma_mmap(ptr nocapture noundef readonly %fb, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_len, align 4
  %call.i = tail call i32 @dma_mmap_attrs(ptr noundef %1, ptr noundef %vma, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef 4) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clcdfb_of_dma_remove(ptr nocapture noundef readonly %fb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_len, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %fb, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_start, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %3, ptr noundef %6, i32 noundef %8, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clcdfb_of_init_display(ptr nocapture noundef %fb) unnamed_addr #2 align 64 {
entry:
  %timing.i.i = alloca %struct.display_timing, align 4
  %video.i.i = alloca %struct.videomode, align 4
  %max_bandwidth = alloca i32, align 4
  %tft_r0b0g0 = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_bandwidth) #11
  %0 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_bandwidth, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tft_r0b0g0) #11
  %1 = ptrtoint ptr %tft_r0b0g0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tft_r0b0g0, align 4, !annotation !81
  %2 = getelementptr inbounds [3 x i32], ptr %tft_r0b0g0, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !81
  %4 = getelementptr inbounds [3 x i32], ptr %tft_r0b0g0, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !81
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 92, i32 noundef 3520) #11
  %panel2 = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %8 = ptrtoint ptr %panel2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %panel2, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call6 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %12, ptr noundef null) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call6) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %panel2, align 4
  %call.i98 = tail call ptr @devm_of_find_backlight(ptr noundef %14) #11
  %cmp.i.i = icmp ugt ptr %call.i98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %clcdfb_of_get_backlight.exit, label %clcdfb_of_get_backlight.exit.thread

clcdfb_of_get_backlight.exit.thread:              ; preds = %if.end13
  %backlight3.i = getelementptr inbounds %struct.clcd_panel, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %backlight3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i98, ptr %backlight3.i, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel2, align 4
  %call.i99 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call10, ptr noundef nonnull @.str.14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i, label %clcdfb_of_get_backlight.exit.thread.cleanup_crit_edge, label %if.then.i100

clcdfb_of_get_backlight.exit.thread.cleanup_crit_edge: ; preds = %clcdfb_of_get_backlight.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

clcdfb_of_get_backlight.exit:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call.i98 to i32
  br label %cleanup

if.then.i100:                                     ; preds = %clcdfb_of_get_backlight.exit.thread
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %timing.i.i) #11
  %23 = call ptr @memset(ptr %timing.i.i, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %video.i.i) #11
  %24 = call ptr @memset(ptr %video.i.i, i32 255, i32 40)
  %call.i.i = call i32 @of_get_display_timing(ptr noundef nonnull %call10, ptr noundef nonnull @.str.15, ptr noundef nonnull %timing.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %call10, i32 noundef %call.i.i) #14
  br label %if.end.i101

if.end.i.i:                                       ; preds = %if.then.i100
  call void @videomode_from_timing(ptr noundef nonnull %timing.i.i, ptr noundef nonnull %video.i.i) #11
  %call2.i.i = call i32 @fb_videomode_from_videomode(ptr noundef nonnull %video.i.i, ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.if.end.i101_crit_edge

if.end.i.i.if.end.i101_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i101

if.end5.i.i:                                      ; preds = %if.end.i.i
  %flags.i.i = getelementptr inbounds %struct.display_timing, ptr %timing.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.i, align 4
  %27 = and i32 %26, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %27)
  %.not.i.i = icmp eq i32 %27, 64
  br i1 %.not.i.i, label %if.end5.i.i.if.end15.i.i_crit_edge, label %if.end15.sink.split.i.i

if.end5.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

if.end15.sink.split.i.i:                          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tim2.i.i = getelementptr inbounds %struct.clcd_panel, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %tim2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tim2.i.i, align 4
  %or13.i.i = or i32 %29, 8192
  store i32 %or13.i.i, ptr %tim2.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end15.sink.split.i.i, %if.end5.i.i.if.end15.i.i_crit_edge
  %and17.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end15.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.end15.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tim220.i.i = getelementptr inbounds %struct.clcd_panel, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %tim220.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tim220.i.i, align 4
  %or21.i.i = or i32 %31, 4096
  store i32 %or21.i.i, ptr %tim220.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end15.i.i.if.end22.i.i_crit_edge
  %and24.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.if.end29.i.i_crit_edge, label %if.then26.i.i

if.end22.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tim227.i.i = getelementptr inbounds %struct.clcd_panel, ptr %21, i32 0, i32 3
  %32 = ptrtoint ptr %tim227.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tim227.i.i, align 4
  %or28.i.i = or i32 %33, 2048
  store i32 %or28.i.i, ptr %tim227.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then26.i.i, %if.end22.i.i.if.end29.i.i_crit_edge
  %and31.i.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end29.i.i.if.end4.i_crit_edge, label %if.then33.i.i

if.end29.i.i.if.end4.i_crit_edge:                 ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tim234.i.i = getelementptr inbounds %struct.clcd_panel, ptr %21, i32 0, i32 3
  %34 = ptrtoint ptr %tim234.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tim234.i.i, align 4
  %or35.i.i = or i32 %35, 16384
  store i32 %or35.i.i, ptr %tim234.i.i, align 4
  br label %if.end4.i

if.end.i101:                                      ; preds = %if.end.i.i.if.end.i101_crit_edge, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %call2.i.i, %if.end.i.i.if.end.i101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %video.i.i) #11
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %timing.i.i) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.then33.i.i, %if.end29.i.i.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %video.i.i) #11
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %timing.i.i) #11
  %xres.i.i = getelementptr inbounds %struct.fb_videomode, ptr %21, i32 0, i32 2
  %36 = ptrtoint ptr %xres.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xres.i.i, align 4
  %yres.i.i = getelementptr inbounds %struct.fb_videomode, ptr %21, i32 0, i32 3
  %38 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres.i.i, align 4
  %refresh.i.i = getelementptr inbounds %struct.fb_videomode, ptr %21, i32 0, i32 1
  %40 = ptrtoint ptr %refresh.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %refresh.i.i, align 4
  %call.i25.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %37, i32 noundef %39, i32 noundef %41) #11
  %add.i = add i32 %call.i25.i, 1
  %call.i26.i = call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %add.i, i32 noundef 3520) #11
  %tobool8.not.i = icmp eq ptr %call.i26.i, null
  br i1 %tobool8.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end27

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end4.i
  %42 = ptrtoint ptr %xres.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xres.i.i, align 4
  %44 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres.i.i, align 4
  %46 = ptrtoint ptr %refresh.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %refresh.i.i, align 4
  %call.i30.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i26.i, i32 noundef %add.i, ptr noundef nonnull @.str.18, i32 noundef %43, i32 noundef %45, i32 noundef %47) #11
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i26.i, ptr %21, align 4
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %of_node30 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %of_node30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node30, align 8
  %call.i.i103 = call i32 @of_property_read_variable_u32_array(ptr noundef %52, ptr noundef nonnull @.str.12, ptr noundef nonnull %max_bandwidth, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i103)
  %tobool32.not = icmp sgt i32 %call.i.i103, -1
  br i1 %tobool32.not, label %cond.end45, label %if.end27.if.end51_crit_edge

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

cond.end45:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_bandwidth, align 4
  %div = udiv i32 %54, 125
  %55 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %panel2, align 4
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pixclock, align 4
  %div35 = udiv i32 1000000000, %58
  %div36 = udiv i32 %div, %div35
  %59 = call i32 @llvm.ctlz.i32(i32 %div36, i1 true) #11, !range !82
  %sub.i.i.op.i = xor i32 %59, 31
  %cond46 = shl nuw i32 1, %sub.i.i.op.i
  %60 = call i32 @llvm.umin.i32(i32 %cond46, i32 32)
  %phi.cast = trunc i32 %60 to i16
  %phi.bo = shl nuw nsw i16 %phi.cast, 8
  br label %if.end51

if.end51:                                         ; preds = %cond.end45, %if.end27.if.end51_crit_edge
  %bpp.0 = phi i16 [ %phi.bo, %cond.end45 ], [ 8192, %if.end27.if.end51_crit_edge ]
  %61 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %panel2, align 4
  %bpp53 = getelementptr inbounds %struct.clcd_panel, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %bpp53 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load = load i16, ptr %bpp53, align 4
  %bf.clear = and i16 %bf.load, 255
  %bf.set = or i16 %bf.clear, %bpp.0
  store i16 %bf.set, ptr %bpp53, align 4
  %64 = load ptr, ptr %panel2, align 4
  %cntl = getelementptr inbounds %struct.clcd_panel, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cntl, align 4
  %or = or i32 %66, 512
  store i32 %or, ptr %cntl, align 4
  %67 = load ptr, ptr %panel2, align 4
  %width = getelementptr inbounds %struct.clcd_panel, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %width, align 4
  %69 = load ptr, ptr %panel2, align 4
  %height = getelementptr inbounds %struct.clcd_panel, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %height, align 2
  %call.i104 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call6, ptr noundef nonnull @.str.13, ptr noundef nonnull %tft_r0b0g0, i32 noundef 3, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i104)
  %cmp58.not = icmp sgt i32 %call.i104, -1
  br i1 %cmp58.not, label %if.end61, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %tft_r0b0g0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tft_r0b0g0, align 4
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %2, align 4
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %4, align 4
  %call64 = call fastcc i32 @clcdfb_of_init_tft_panel(ptr noundef %fb, i32 noundef %72, i32 noundef %74, i32 noundef %76)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end51.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i101, %clcdfb_of_get_backlight.exit, %clcdfb_of_get_backlight.exit.thread.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %if.end61 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ %22, %clcdfb_of_get_backlight.exit ], [ -2, %if.end51.cleanup_crit_edge ], [ -2, %clcdfb_of_get_backlight.exit.thread.cleanup_crit_edge ], [ -12, %if.end4.i.cleanup_crit_edge ], [ %retval.0.i.i, %if.end.i101 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tft_r0b0g0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_bandwidth) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clcdfb_of_init_tft_panel(ptr nocapture noundef readonly %fb, i32 noundef %r0, i32 noundef %g0, i32 noundef %b0) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tim2 = getelementptr inbounds %struct.clcd_panel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tim2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tim2, align 4
  %or = or i32 %3, 67108864
  store i32 %or, ptr %tim2, align 4
  %4 = load ptr, ptr %panel, align 4
  %cntl = getelementptr inbounds %struct.clcd_panel, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cntl, align 4
  %or2 = or i32 %6, 4128
  store i32 %or2, ptr %cntl, align 4
  %7 = load ptr, ptr %panel, align 4
  %caps = getelementptr inbounds %struct.clcd_panel, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %caps, align 4
  %dev = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel, align 4
  %caps5 = getelementptr inbounds %struct.clcd_panel, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %caps5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %periphid = getelementptr inbounds %struct.amba_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %periphid, align 8
  %and = and i32 %16, 4095
  %arrayidx = getelementptr [7 x %struct.anon.85], ptr @clcdfb_of_init_tft_panel.panels, i32 0, i32 %i.048
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %18)
  %cmp6.not = icmp eq i32 %and, %18
  br i1 %cmp6.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %g08 = getelementptr [7 x %struct.anon.85], ptr @clcdfb_of_init_tft_panel.panels, i32 0, i32 %i.048, i32 2
  %19 = ptrtoint ptr %g08 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %g08, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %g0)
  %cmp9.not = icmp eq i32 %20, %g0
  br i1 %cmp9.not, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %r013 = getelementptr [7 x %struct.anon.85], ptr @clcdfb_of_init_tft_panel.panels, i32 0, i32 %i.048, i32 1
  %21 = ptrtoint ptr %r013 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r013, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %r0)
  %cmp14 = icmp eq i32 %22, %r0
  br i1 %cmp14, label %land.lhs.true, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end11
  %b016 = getelementptr [7 x %struct.anon.85], ptr @clcdfb_of_init_tft_panel.panels, i32 0, i32 %i.048, i32 3
  %23 = ptrtoint ptr %b016 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %b016, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %b0)
  %cmp17 = icmp eq i32 %24, %b0
  br i1 %cmp17, label %if.then18, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %caps20 = getelementptr [7 x %struct.anon.85], ptr @clcdfb_of_init_tft_panel.panels, i32 0, i32 %i.048, i32 4
  %25 = ptrtoint ptr %caps20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps20, align 4
  %27 = ptrtoint ptr %caps5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %caps5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r0)
  %cmp24.not = icmp ne i32 %r0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b0)
  %cmp26 = icmp eq i32 %b0, 0
  %or.cond = and i1 %cmp24.not, %cmp26
  br i1 %or.cond, label %if.then27, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %panel, align 4
  %bgr_connection = getelementptr inbounds %struct.clcd_panel, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %bgr_connection to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %bgr_connection, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end.if.end29_crit_edge
  %31 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %panel, align 4
  %caps31 = getelementptr inbounds %struct.clcd_panel, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %caps31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %caps31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool32.not = icmp eq i32 %34, 0
  %cond = select i1 %tobool32.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_find_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_videomode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @clcdfb_set_bitfields(ptr nocapture noundef readonly %fb, ptr noundef %var) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %caps1 = getelementptr inbounds %struct.clcd_panel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %board = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 4
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %caps2 = getelementptr inbounds %struct.clcd_board, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %7, %3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %cntl = getelementptr inbounds %struct.clcd_panel, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cntl, align 4
  %and9 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond = select i1 %tobool10.not, i32 14, i32 224
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %caps.0 = phi i32 [ %and, %if.then ], [ %cond, %if.else ]
  %cntl13 = getelementptr inbounds %struct.clcd_panel, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %cntl13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cntl13, align 4
  %and14 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and17 = and i32 %caps.0, -137
  %spec.select = select i1 %tobool15.not, i32 %and17, i32 %caps.0
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msb_right, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %msb_right19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %msb_right19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msb_right19, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %msb_right20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %14 = call ptr @memset(ptr %msb_right20, i32 0, i32 16)
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits_per_pixel, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %16, label %if.end.if.end176_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge271
    i32 4, label %if.end.sw.bb_crit_edge272
    i32 8, label %if.end.sw.bb_crit_edge273
    i32 16, label %sw.bb38
    i32 32, label %sw.bb104
  ]

if.end.sw.bb_crit_edge273:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge272:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge271:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.if.end176_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge271, %if.end.sw.bb_crit_edge272, %if.end.sw.bb_crit_edge273
  %and21 = and i32 %spec.select, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.bb.if.end176_crit_edge, label %land.lhs.true116

sw.bb.if.end176_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

sw.bb38:                                          ; preds = %if.end
  %and39 = and i32 %spec.select, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %sw.bb38.if.end176_crit_edge, label %if.end42

sw.bb38.if.end176_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.end42:                                         ; preds = %sw.bb38
  %length44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp = icmp eq i32 %19, 4
  %and46 = and i32 %spec.select, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %spec.select249 = select i1 %tobool47.not, i32 %spec.select, i32 %and46
  %caps.2 = select i1 %cmp, i32 %spec.select249, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp53 = icmp ne i32 %19, 5
  %and55 = and i32 %caps.2, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %or.cond = select i1 %cmp53, i1 true, i1 %tobool56.not
  br i1 %or.cond, label %if.else59, label %if.end42.if.end89_crit_edge

if.end42.if.end89_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.else59:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp62 = icmp ne i32 %19, 6
  %and64 = and i32 %caps.2, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %or.cond251 = select i1 %cmp62, i1 true, i1 %tobool65.not
  br i1 %or.cond251, label %if.else68, label %if.else59.if.end89_crit_edge

if.else59.if.end89_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.else68:                                        ; preds = %if.else59
  %20 = and i32 %caps.2, 102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %if.end89.thread256, label %if.then93.sink.split

if.end89.thread256:                               ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %length44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %length44, align 4
  br label %if.else98

if.end89:                                         ; preds = %if.else59.if.end89_crit_edge, %if.end42.if.end89_crit_edge
  %caps.3.ph = phi i32 [ %and64, %if.else59.if.end89_crit_edge ], [ %and55, %if.end42.if.end89_crit_edge ]
  %22 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %length44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp92 = icmp ugt i32 %.pr, 4
  br i1 %cmp92, label %if.end89.if.then93_crit_edge, label %if.end89.if.else98_crit_edge

if.end89.if.else98_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else98

if.end89.if.then93_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

if.then93.sink.split:                             ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  %and64.mux = select i1 %tobool65.not, i32 %and55, i32 %and64
  %.mux = select i1 %tobool65.not, i32 5, i32 6
  %23 = ptrtoint ptr %length44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.mux, ptr %length44, align 4
  br label %if.then93

if.then93:                                        ; preds = %if.then93.sink.split, %if.end89.if.then93_crit_edge
  %caps.3255 = phi i32 [ %caps.3.ph, %if.end89.if.then93_crit_edge ], [ %and64.mux, %if.then93.sink.split ]
  %length95 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %length95 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %length95, align 4
  br label %if.then119

if.else98:                                        ; preds = %if.end89.if.else98_crit_edge, %if.end89.thread256
  %caps.3259 = phi i32 [ %and46, %if.end89.thread256 ], [ %caps.3.ph, %if.end89.if.else98_crit_edge ]
  %length100 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %length100 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %length100, align 4
  br label %if.then119

sw.bb104:                                         ; preds = %if.end
  %and105 = and i32 %spec.select, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %sw.bb104.if.end176_crit_edge, label %if.end108

sw.bb104.if.end176_crit_edge:                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.end108:                                        ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #13
  %length110 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %length110 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %length110, align 4
  %length112 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %length112 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %length112, align 4
  br label %if.then119

land.lhs.true116:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %length, align 4
  %29 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %red, align 4
  %length30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %length30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %16, ptr %length30, align 4
  %31 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %green, align 4
  %length35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %length35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %16, ptr %length35, align 4
  %33 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %blue, align 4
  br label %if.end176

if.then119:                                       ; preds = %if.end108, %if.else98, %if.then93
  %.sink270 = phi i32 [ 8, %if.end108 ], [ 5, %if.then93 ], [ 4, %if.else98 ]
  %caps.4.ph.ph = phi i32 [ %and105, %if.end108 ], [ %caps.3255, %if.then93 ], [ %caps.3259, %if.else98 ]
  %length114 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %length114 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink270, ptr %length114, align 4
  %and120 = and i32 %caps.4.ph.ph, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %land.rhs, label %if.then119.land.end_crit_edge

if.then119.land.end_crit_edge:                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp124 = icmp eq i32 %36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then119.land.end_crit_edge
  %37 = phi i1 [ false, %if.then119.land.end_crit_edge ], [ %cmp124, %land.rhs ]
  %and125 = and i32 %caps.4.ph.ph, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %land.end.land.end131.thread_crit_edge, label %land.end131

land.end.land.end131.thread_crit_edge:            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end131.thread

land.end131:                                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %red, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp130 = icmp eq i32 %39, 0
  %spec.select269 = select i1 %cmp130, i1 %37, i1 %tobool121
  br label %land.end131.thread

land.end131.thread:                               ; preds = %land.end131, %land.end.land.end131.thread_crit_edge
  %40 = phi i1 [ %tobool121, %land.end.land.end131.thread_crit_edge ], [ %spec.select269, %land.end131 ]
  %bgr.0.in = select i1 %37, i1 true, i1 %40
  br i1 %bgr.0.in, label %if.then142, label %if.else158

if.then142:                                       ; preds = %land.end131.thread
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %blue, align 4
  %length148 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %length148 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length148, align 4
  %44 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %green, align 4
  %length154 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %length154 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length154, align 4
  %add155 = add i32 %46, %43
  %47 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add155, ptr %red, align 4
  br label %if.end176

if.else158:                                       ; preds = %land.end131.thread
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %red, align 4
  %length164 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %length164 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length164, align 4
  %51 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %green, align 4
  %length171 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %length171 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length171, align 4
  %add172 = add i32 %53, %50
  %54 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add172, ptr %blue, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.else158, %if.then142, %land.lhs.true116, %sw.bb104.if.end176_crit_edge, %sw.bb38.if.end176_crit_edge, %sw.bb.if.end176_crit_edge, %if.end.if.end176_crit_edge
  %ret.0264 = phi i32 [ 0, %if.then142 ], [ 0, %if.else158 ], [ 0, %land.lhs.true116 ], [ -22, %sw.bb.if.end176_crit_edge ], [ -22, %sw.bb38.if.end176_crit_edge ], [ -22, %sw.bb104.if.end176_crit_edge ], [ -22, %if.end.if.end176_crit_edge ]
  ret i32 %ret.0264
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_check_var(ptr noundef %var, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %check = getelementptr inbounds %struct.clcd_board, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %info, ptr noundef %var) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %7, %5
  %div22 = lshr i32 %mul, 3
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %8 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres_virtual, align 4
  %mul3 = mul i32 %div22, %9
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3, i32 %11)
  %cmp5 = icmp ugt i32 %mul3, %11
  br i1 %cmp5, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call fastcc i32 @clcdfb_set_bitfields(ptr noundef %info, ptr noundef %var)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %ret.2 = phi i32 [ %call10, %if.then9 ], [ %call, %if.end.if.end11_crit_edge ], [ -22, %entry.if.end11_crit_edge ], [ -22, %land.lhs.true.if.end11_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_set_par(ptr noundef %info) #2 align 64 {
entry:
  %regs = alloca %struct.clcd_regs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %regs) #11
  %0 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 4
  %4 = getelementptr inbounds %struct.clcd_regs, ptr %regs, i32 0, i32 5
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %5 = call ptr @memset(ptr %regs, i32 255, i32 24)
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %9, %7
  %div49 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div49, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp = icmp ult i32 %9, 9
  %spec.select = select i1 %cmp, i32 3, i32 2
  %11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %board = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board, align 4
  %decode = getelementptr inbounds %struct.clcd_board, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %decode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %decode, align 4
  call void %16(ptr noundef %info, ptr noundef nonnull %regs) #11
  call fastcc void @clcdfb_disable(ptr noundef %info)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regs, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %regs13 = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 6
  %20 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs13, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs13, align 4
  %add.ptr19 = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %24) #11, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs13, align 4
  %add.ptr24 = getelementptr i8, ptr %31, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %29) #11, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !86
  call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs13, align 4
  %add.ptr29 = getelementptr i8, ptr %36, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %34) #11, !srcloc !79
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smem_start.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %39 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %yoffset.i, align 4
  %41 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %line_length, align 4
  %mul.i = mul i32 %42, %40
  %add.i = add i32 %mul.i, %38
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %yres.i, align 4
  %mul10.i = mul i32 %44, %42
  %div25.i = lshr i32 %mul10.i, 1
  %add11.i = add i32 %div25.i, %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !87
  call void @arm_heavy_mb() #11
  %45 = call i32 @llvm.bswap.i32(i32 %add.i) #11
  %46 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs13, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %45) #11, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @arm_heavy_mb() #11
  %48 = call i32 @llvm.bswap.i32(i32 %add11.i) #11
  %49 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs13, align 4
  %add.ptr16.i = getelementptr i8, ptr %50, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %48) #11, !srcloc !79
  %clk = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 2
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 4
  %div30 = udiv i32 1000000000, %54
  %mul31 = mul i32 %div30, 1000
  %call = call i32 @clk_set_rate(ptr noundef %52, i32 noundef %mul31) #11
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %3, align 4
  %clcd_cntl = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 9
  %57 = ptrtoint ptr %clcd_cntl to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %clcd_cntl, align 4
  call fastcc void @clcdfb_enable(ptr noundef %info, i32 noundef %56)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %regs) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %transp2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  %notmask.i = shl nsw i32 -1, %1
  %sub.i = xor i32 %notmask.i, -1
  %sub2.i = sub i32 16, %1
  %shr.i = ashr i32 %transp, %sub2.i
  %and.i = and i32 %shr.i, %sub.i
  %2 = ptrtoint ptr %transp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transp2, align 4
  %shl3.i = shl i32 %and.i, %3
  %blue5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length.i66 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %4 = ptrtoint ptr %length.i66 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i66, align 4
  %notmask.i67 = shl nsw i32 -1, %5
  %sub.i68 = xor i32 %notmask.i67, -1
  %sub2.i69 = sub i32 16, %5
  %shr.i70 = ashr i32 %blue, %sub2.i69
  %and.i71 = and i32 %shr.i70, %sub.i68
  %6 = ptrtoint ptr %blue5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blue5, align 4
  %shl3.i72 = shl i32 %and.i71, %7
  %or = or i32 %shl3.i72, %shl3.i
  %green9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length.i73 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %8 = ptrtoint ptr %length.i73 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i73, align 4
  %notmask.i74 = shl nsw i32 -1, %9
  %sub.i75 = xor i32 %notmask.i74, -1
  %sub2.i76 = sub i32 16, %9
  %shr.i77 = ashr i32 %green, %sub2.i76
  %and.i78 = and i32 %shr.i77, %sub.i75
  %10 = ptrtoint ptr %green9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %green9, align 4
  %shl3.i79 = shl i32 %and.i78, %11
  %or11 = or i32 %or, %shl3.i79
  %red14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length.i80 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %12 = ptrtoint ptr %length.i80 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i80, align 4
  %notmask.i81 = shl nsw i32 -1, %13
  %sub.i82 = xor i32 %notmask.i81, -1
  %sub2.i83 = sub i32 16, %13
  %shr.i84 = ashr i32 %red, %sub2.i83
  %and.i85 = and i32 %shr.i84, %sub.i82
  %14 = ptrtoint ptr %red14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %red14, align 4
  %shl3.i86 = shl i32 %and.i85, %15
  %or16 = or i32 %or11, %shl3.i86
  %arrayidx = getelementptr %struct.clcd_fb, ptr %info, i32 0, i32 10, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or16, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp18 = icmp eq i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp19 = icmp ult i32 %regno, 256
  %or.cond = and i1 %cmp19, %cmp18
  br i1 %or.cond, label %if.then20, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %regno, 1
  %19 = add nuw nsw i32 %mul, 512
  %add = and i32 %19, -4
  %shr = lshr i32 %red, 11
  %and21 = and i32 %shr, 31
  %shr22 = lshr i32 %green, 6
  %and23 = and i32 %shr22, 992
  %or24 = or i32 %and23, %and21
  %shr25 = lshr i32 %blue, 1
  %and26 = and i32 %shr25, 31744
  %or27 = or i32 %or24, %and26
  %clcd_cntl = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 9
  %20 = ptrtoint ptr %clcd_cntl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clcd_cntl, align 4
  %and28 = lshr i32 %21, 9
  %and28.lobit = and i32 %and28, 1
  %spec.select = xor i32 %and28.lobit, %regno
  %and31 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %shl = shl nuw nsw i32 %or27, 16
  %mask.0 = select i1 %tobool32.not, i32 -65536, i32 65535
  %newval.0 = select i1 %tobool32.not, i32 %or27, i32 %shl
  %regs = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr35 = getelementptr i8, ptr %23, i32 %add
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #11, !srcloc !89
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !90
  %and39 = and i32 %mask.0, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call void @arm_heavy_mb() #11
  %or40 = or i32 %and39, %newval.0
  %26 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr42 = getelementptr i8, ptr %28, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %26) #11, !srcloc !79
  br label %if.end43

if.end43:                                         ; preds = %if.then20, %if.end.if.end43_crit_edge
  %regno.addr.1 = phi i32 [ %spec.select, %if.then20 ], [ %regno, %if.end.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno.addr.1)
  %cmp44 = icmp ugt i32 %regno.addr.1, 255
  %conv = zext i1 %cmp44 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_blank(i32 noundef %blank_mode, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank_mode)
  %cmp.not = icmp eq i32 %blank_mode, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @clcdfb_disable(ptr noundef %info)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clcd_cntl = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %clcd_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clcd_cntl, align 4
  tail call fastcc void @clcdfb_enable(ptr noundef %info, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clcdfb_mmap(ptr noundef %info, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %1, 12
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp.not = icmp ult i32 %3, %shl
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %5, %7
  %sub1 = sub i32 %3, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub1)
  %cmp2.not = icmp ugt i32 %sub, %sub1
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %board = getelementptr inbounds %struct.clcd_fb, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board, align 4
  %mmap = getelementptr inbounds %struct.clcd_board, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmap, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %11(ptr noundef %info, ptr noundef %vma) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -22, %land.lhs.true3.if.end_crit_edge ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clcdfb_disable(ptr noundef %fb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %disable = getelementptr inbounds %struct.clcd_board, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %fb) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %backlight = getelementptr inbounds %struct.clcd_panel, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlight, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %power = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %power, align 8
  %9 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel, align 4
  %backlight8 = getelementptr inbounds %struct.clcd_panel, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %backlight8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %backlight8, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %12, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #11
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then4.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.then4.backlight_update_status.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %16(ptr noundef %12) #11
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.then4.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #11
  br label %if.end9

if.end9:                                          ; preds = %backlight_update_status.exit, %if.end.if.end9_crit_edge
  %regs = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 6
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %off_cntl = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 8
  %19 = ptrtoint ptr %off_cntl to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %off_cntl, align 2
  %conv = zext i16 %20 to i32
  %add.ptr = getelementptr i8, ptr %18, i32 %conv
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !89
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  %and = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end9.if.end19_crit_edge, label %if.then13

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %and14 = and i32 %22, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %and14)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %26 = ptrtoint ptr %off_cntl to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %off_cntl, align 2
  %conv17 = zext i16 %27 to i32
  %add.ptr18 = getelementptr i8, ptr %25, i32 %conv17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %23) #11, !srcloc !79
  tail call void @msleep(i32 noundef 20) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end9.if.end19_crit_edge
  %val.0 = phi i32 [ %and14, %if.then13 ], [ %22, %if.end9.if.end19_crit_edge ]
  %and20 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end31_crit_edge, label %if.then22

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %and23 = and i32 %val.0, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !94
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %and23)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %31 = ptrtoint ptr %off_cntl to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %off_cntl, align 2
  %conv29 = zext i16 %32 to i32
  %add.ptr30 = getelementptr i8, ptr %30, i32 %conv29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %28) #11, !srcloc !79
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end19.if.end31_crit_edge
  %clk_enabled = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 11
  %33 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %clk_enabled, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp eq i8 %34, 0
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %clk_enabled, align 4
  %clk = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 2
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %37) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clcdfb_enable(ptr noundef %fb, i32 noundef %cntl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_enabled = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 11
  %0 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clk_enabled, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %clk_enabled, align 4
  %clk = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %or = or i32 %cntl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %off_cntl = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 8
  %8 = ptrtoint ptr %off_cntl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %off_cntl, align 2
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #11, !srcloc !79
  tail call void @msleep(i32 noundef 20) #11
  %or2 = or i32 %cntl, 2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %13 = ptrtoint ptr %off_cntl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %off_cntl, align 2
  %conv7 = zext i16 %14 to i32
  %add.ptr8 = getelementptr i8, ptr %12, i32 %conv7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #11, !srcloc !79
  %panel = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 3
  %15 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %panel, align 4
  %backlight = getelementptr inbounds %struct.clcd_panel, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backlight, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %power = getelementptr inbounds %struct.backlight_properties, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %power, align 8
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  %backlight14 = getelementptr inbounds %struct.clcd_panel, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %backlight14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %backlight14, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %23, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #11
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then10.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.then10.backlight_update_status.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.then10
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %27(ptr noundef %23) #11
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.then10.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #11
  br label %if.end16

if.end16:                                         ; preds = %backlight_update_status.exit, %if.end.if.end16_crit_edge
  %board = getelementptr inbounds %struct.clcd_fb, ptr %fb, i32 0, i32 4
  %28 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board, align 4
  %enable = getelementptr inbounds %struct.clcd_board, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enable, align 4
  %tobool17.not = icmp eq ptr %31, null
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %31(ptr noundef %fb) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_amba_clcd__303_961_amba_clcdfb_init6, !1, !"__initcall__kmod_amba_clcd__303_961_amba_clcdfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 961, i32 1}
!2 = !{ptr @__exitcall_amba_clcdfb_exit, !3, !"__exitcall_amba_clcdfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 968, i32 1}
!4 = !{ptr @__UNIQUE_ID_description304, !5, !"__UNIQUE_ID_description304", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 970, i32 1}
!6 = !{ptr @__UNIQUE_ID_file305, !7, !"__UNIQUE_ID_file305", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 971, i32 1}
!8 = !{ptr @__UNIQUE_ID_license306, !7, !"__UNIQUE_ID_license306", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 955, i32 21}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 946, i32 11}
!13 = !{ptr @clcd_driver, !14, !"clcd_driver", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 944, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 879, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @clcdfb_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @clcdfb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 892, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @clcdfb_probe._entry.5, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @clcdfb_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 842, i32 29}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/of.h", i32 261, i32 30}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 712, i32 51}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 738, i32 4}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 615, i32 37}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 550, i32 36}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 552, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @clcdfb_of_get_dpi_panel_mode._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @clcdfb_of_get_dpi_panel_mode._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 588, i32 29}
!46 = !{ptr @clcdfb_of_init_tft_panel.panels, !47, !"panels", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 640, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 458, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @clcdfb_register._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @clcdfb_register._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 522, i32 2}
!55 = !{ptr @clcdfb_register._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @clcdfb_register._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 529, i32 2}
!59 = !{ptr @clcdfb_register._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @clcdfb_register._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @clcdfb_ops, !62, !"clcdfb_ops", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 413, i32 28}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 36, i32 32}
!65 = distinct !{null, !66, !"clcd_name", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 36, i32 20}
!67 = !{ptr @clcdfb_id_table, !68, !"clcdfb_id_table", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/amba-clcd.c", i32 934, i32 29}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2155987744}
!79 = !{i64 5860909}
!80 = !{i8 0, i8 2}
!81 = !{!"auto-init"}
!82 = !{i32 0, i32 33}
!83 = !{i64 2155979715}
!84 = !{i64 2155980147}
!85 = !{i64 2155980579}
!86 = !{i64 2155981011}
!87 = !{i64 2155974337}
!88 = !{i64 2155974757}
!89 = !{i64 5861327}
!90 = !{i64 2155983043}
!91 = !{i64 2155983266}
!92 = !{i64 2155975455}
!93 = !{i64 2155975695}
!94 = !{i64 2155976114}
!95 = !{i64 2155976525}
!96 = !{i64 2155976940}
