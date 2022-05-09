; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ssd1351.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ssd1351.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.85, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.86, ptr, %struct.anon.87, i32, i8, i64, i8, ptr, i8 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.87 = type { %struct.mutex, ptr, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_ssd1351__303_234_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_ssd1351.alias=spi:fb_ssd1351\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_ssd1351.alias=platform:fb_ssd1351\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_ssd1351.alias=spi:ssd1351\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_ssd1351.alias=platform:ssd1351\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [43 x i8] c"fb_ssd1351.description=SSD1351 OLED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [31 x i8] c"fb_ssd1351.author=James Davies\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_ssd1351.file=drivers/staging/fbtft/fb_ssd1351\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_ssd1351.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ssd1351\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1351\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 128, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr null, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, i32 1, i32 63, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"0 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2\00", [34 x i8] zeroinitializer }, align 32
@bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @update_onboard_backlight, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@register_onboard_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot register backlight device (%ld)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register_onboard_backlight\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_ssd1351.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@register_onboard_backlight._entry_ptr = internal global ptr @register_onboard_backlight._entry, section ".printk_index", align 4
@update_onboard_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 197, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: power=%d, fb_blank=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"update_onboard_backlight\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@update_onboard_backlight._entry_ptr = internal global ptr @update_onboard_backlight._entry, section ".printk_index", align 4
@blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 166, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%s=%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blank\00", [26 x i8] zeroinitializer }, align 32
@blank._entry_ptr = internal global ptr @blank._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@set_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 75, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: skipping since custom init_display() is used\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_var\00", [24 x i8] zeroinitializer }, align 32
@set_var._entry_ptr = internal global ptr @set_var._entry, section ".printk_index", align 4
@set_gamma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Illegal value in Grayscale Lookup Table at index %d : %d. Must be greater than 1\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_gamma\00", [22 x i8] zeroinitializer }, align 32
@set_gamma._entry_ptr = internal global ptr @set_gamma._entry, section ".printk_index", align 4
@set_gamma._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Illegal value(s) in Grayscale Lookup Table. At index=%d : %d, the accumulated value has exceeded 180\0A\00", [58 x i8] zeroinitializer }, align 32
@set_gamma._entry_ptr.20 = internal global ptr @set_gamma._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 234, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 174, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 180, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"bl_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 207, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 223, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 195, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 165, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 73, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 127, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ssd1351.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 135, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ssd1351__303_234_fbtft_driver_module_init6, ptr @blank._entry, ptr @blank._entry_ptr, ptr @fbtft_driver_module_exit, ptr @register_onboard_backlight._entry, ptr @register_onboard_backlight._entry_ptr, ptr @set_gamma._entry, ptr @set_gamma._entry.18, ptr @set_gamma._entry_ptr, ptr @set_gamma._entry_ptr.20, ptr @set_var._entry, ptr @set_var._entry_ptr, ptr @update_onboard_backlight._entry, ptr @update_onboard_backlight._entry_ptr, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @bl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_onboard_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_onboard_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 3, i32 noundef 21, i32 noundef %xs, i32 noundef %xe) #5
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 3, i32 noundef 117, i32 noundef %ys, i32 noundef %ye) #5
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef 92) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %backlight = getelementptr inbounds %struct.fbtft_display, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %backlight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %register_backlight = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 13
  %4 = ptrtoint ptr %register_backlight to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @register_onboard_backlight, ptr %register_backlight, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  tail call void %6(ptr noundef %par) #5
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 253, i32 noundef 18) #5
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 2, i32 noundef 253, i32 noundef 177) #5
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %12(ptr noundef %par, i32 noundef 1, i32 noundef 174) #5
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %14(ptr noundef %par, i32 noundef 2, i32 noundef 179, i32 noundef 241) #5
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 202, i32 noundef 127) #5
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 3, i32 noundef 21, i32 noundef 0, i32 noundef 127) #5
  %19 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 3, i32 noundef 117, i32 noundef 0, i32 noundef 127) #5
  %21 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 2, i32 noundef 161, i32 noundef 0) #5
  %23 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 2, i32 noundef 162, i32 noundef 0) #5
  %25 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %26(ptr noundef %par, i32 noundef 2, i32 noundef 181, i32 noundef 0) #5
  %27 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %28(ptr noundef %par, i32 noundef 2, i32 noundef 171, i32 noundef 1) #5
  %29 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %30(ptr noundef %par, i32 noundef 2, i32 noundef 177, i32 noundef 50) #5
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 4, i32 noundef 180, i32 noundef 160, i32 noundef 181, i32 noundef 85) #5
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 2, i32 noundef 187, i32 noundef 23) #5
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 2, i32 noundef 190, i32 noundef 5) #5
  %37 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 4, i32 noundef 193, i32 noundef 200, i32 noundef 128, i32 noundef 200) #5
  %39 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %40(ptr noundef %par, i32 noundef 2, i32 noundef 199, i32 noundef 15) #5
  %41 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %42(ptr noundef %par, i32 noundef 2, i32 noundef 182, i32 noundef 1) #5
  %43 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %44(ptr noundef %par, i32 noundef 1, i32 noundef 166) #5
  %45 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %46(ptr noundef %par, i32 noundef 1, i32 noundef 175) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !72

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %cond = select i1 %on, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  %. = select i1 %on, i32 174, i32 175
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef %.) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_display = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %init_display to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_display, align 4
  %cmp.not = icmp eq ptr %1, @init_display
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !72

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %8 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bgr, align 8, !range !73
  %10 = shl nuw nsw i8 %9, 2
  %11 = or i8 %10, 96
  %or = zext i8 %11 to i32
  %info9 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %info9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info9, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 26
  %14 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rotate, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 270, label %sw.bb13
    i32 180, label %sw.bb18
    i32 90, label %sw.bb22
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  %or12 = or i32 %or, 16
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 160, i32 noundef %or12) #5
  br label %cleanup

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %write_register15 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %write_register15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register15, align 4
  %or17 = or i32 %or, 19
  tail call void (ptr, i32, ...) %20(ptr noundef %par, i32 noundef 2, i32 noundef 160, i32 noundef %or17) #5
  br label %cleanup

sw.bb18:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %write_register20 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %write_register20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register20, align 4
  %or21 = or i32 %or, 2
  tail call void (ptr, i32, ...) %22(ptr noundef %par, i32 noundef 2, i32 noundef 160, i32 noundef %or21) #5
  br label %cleanup

sw.bb22:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %write_register24 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %write_register24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_register24, align 4
  %or25 = or i32 %or, 1
  tail call void (ptr, i32, ...) %24(ptr noundef %par, i32 noundef 2, i32 noundef 160, i32 noundef %or25) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %sw.bb18, %sw.bb13, %sw.bb, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef readonly %curves) #2 align 64 {
entry:
  %tmp = alloca [63 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %tmp) #5
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 252)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %acc.098 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %i.097 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.097)
  %cmp1.not = icmp eq i32 %i.097, 0
  br i1 %cmp1.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %curves, i32 %i.097
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp2 = icmp ult i32 %2, 2
  br i1 %cmp2, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %i.097, i32 noundef %2) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %arrayidx4 = getelementptr i32, ptr %curves, i32 %i.097
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %8, %acc.098
  %arrayidx5 = getelementptr [63 x i32], ptr %tmp, i32 0, i32 %i.097
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %add)
  %cmp6 = icmp sgt i32 %add, 180
  br i1 %cmp6, label %do.end10, label %for.inc

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %info11 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info11, align 8
  %device12 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %i.097, i32 noundef %add) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp, align 4
  %arrayidx15 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 9
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 10
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 11
  %38 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 12
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 13
  %42 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 14
  %44 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 15
  %46 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 16
  %48 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 17
  %50 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 18
  %52 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 19
  %54 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 20
  %56 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 21
  %58 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 22
  %60 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 23
  %62 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 24
  %64 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 25
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 26
  %68 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 27
  %70 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 28
  %72 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 29
  %74 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 30
  %76 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 31
  %78 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 32
  %80 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 33
  %82 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 34
  %84 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 35
  %86 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 36
  %88 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 37
  %90 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 38
  %92 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 39
  %94 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 40
  %96 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 41
  %98 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 42
  %100 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 43
  %102 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx57, align 4
  %arrayidx58 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 44
  %104 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx58, align 4
  %arrayidx59 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 45
  %106 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 46
  %108 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 47
  %110 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 48
  %112 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx62, align 4
  %arrayidx63 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 49
  %114 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 50
  %116 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx64, align 4
  %arrayidx65 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 51
  %118 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 52
  %120 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 53
  %122 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 54
  %124 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx68, align 4
  %arrayidx69 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 55
  %126 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 56
  %128 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 57
  %130 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 58
  %132 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx72, align 4
  %arrayidx73 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 59
  %134 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 60
  %136 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 61
  %138 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [63 x i32], ptr %tmp, i32 0, i32 62
  %140 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx76, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 64, i32 noundef 184, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133, i32 noundef %135, i32 noundef %137, i32 noundef %139, i32 noundef %141) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @register_onboard_backlight(ptr noundef %par) #2 align 64 {
entry:
  %bl_props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bl_props) #5
  %0 = call ptr @memset(ptr %bl_props, i32 0, i32 28)
  %type = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %power, align 4
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %call = tail call ptr @dev_driver_string(ptr noundef %6) #5
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 8
  %device2 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %call3 = call ptr @backlight_device_register(ptr noundef %call, ptr noundef %10, ptr noundef %par, ptr noundef nonnull @bl_ops, ptr noundef nonnull %bl_props) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 8
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device6 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device6, align 4
  %15 = ptrtoint ptr %call3 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %15) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 15
  %16 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %bl_dev, align 4
  %unregister_backlight = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 14
  %17 = ptrtoint ptr %unregister_backlight to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unregister_backlight, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %unregister_backlight to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fbtft_unregister_backlight, ptr %unregister_backlight, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_unregister_backlight(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_onboard_backlight(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !72

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power, align 8
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 3
  %10 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fb_blank, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %9, i32 noundef %11) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %power8 = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %12 = ptrtoint ptr %power8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %land.rhs, label %do.end6.land.end_crit_edge

do.end6.land.end_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %fb_blank10 = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 3
  %14 = ptrtoint ptr %fb_blank10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fb_blank10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11 = icmp eq i32 %15, 0
  %phi.sel = select i1 %cmp11, i32 3, i32 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end6.land.end_crit_edge
  %16 = phi i32 [ 2, %do.end6.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %1, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %18(ptr noundef %1, i32 noundef 2, i32 noundef 181, i32 noundef %16) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_fb_ssd1351__303_234_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ssd1351__303_234_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 234, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 236, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 237, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 238, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 239, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 241, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 242, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 243, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 180, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 174, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 223, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @register_onboard_backlight._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @register_onboard_backlight._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @bl_ops, !33, !"bl_ops", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 207, i32 35}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 195, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @update_onboard_backlight._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @update_onboard_backlight._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 165, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @blank._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @blank._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 73, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @set_var._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @set_var._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 127, i32 4}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @set_gamma._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @set_gamma._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/fbtft/fb_ssd1351.c", i32 135, i32 4}
!59 = !{ptr @set_gamma._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @set_gamma._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!62 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i8 0, i8 2}
