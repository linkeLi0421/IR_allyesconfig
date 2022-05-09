; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/pxa168fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/pxa168fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.pxa168fb_info = type { ptr, ptr, ptr, ptr, i32, [16 x i32], i32, i8 }
%struct.pxa168fb_mach_info = type { [16 x i8], i32, ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_pxa168fb__308_812_pxa168fb_driver_init6 = internal global ptr @pxa168fb_driver_init, section ".initcall6.init", align 4
@pxa168fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa168fb_probe, ptr @pxa168fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxa168fb_driver_exit = internal global ptr @pxa168fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [85 x i8] c"pxa168fb.author=Lennert Buytenhek <buytenh@marvell.com> Green Wan <gwan@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [55 x i8] c"pxa168fb.description=Framebuffer driver for PXA168/910\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [43 x i8] c"pxa168fb.file=drivers/video/fbdev/pxa168fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [21 x i8] c"pxa168fb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxa168-fb\00", [22 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no platform data defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa168fb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/pxa168fb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr = internal global ptr @pxa168fb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LCDCLK\00", [25 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to get LCDCLK\00", [43 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr.9 = internal global ptr @pxa168fb_probe._entry.7, section ".printk_index", align 4
@pxa168fb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no IO memory defined\0A\00", [42 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr.12 = internal global ptr @pxa168fb_probe._entry.10, section ".printk_index", align 4
@pxa168fb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no IRQ defined\0A\00", [16 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr.15 = internal global ptr @pxa168fb_probe._entry.13, section ".printk_index", align 4
@pxa168fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa168fb_check_var, ptr @pxa168fb_set_par, ptr @pxa168fb_setcolreg, ptr null, ptr @pxa168fb_blank, ptr @pxa168fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr.18 = internal global ptr @pxa168fb_probe._entry.16, section ".printk_index", align 4
@pxa168fb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register pxa168-fb: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr.21 = internal global ptr @pxa168fb_probe._entry.19, section ".printk_index", align 4
@pxa168fb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"frame buffer device init failed with %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pxa168fb_probe._entry_ptr.24 = internal global ptr @pxa168fb_probe._entry.22, section ".printk_index", align 4
@pxa168fb_init_mode.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxa168fb\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pxa168fb_init_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pxa168fb: find best mode: res = %dx%d\0A\00", [57 x i8] zeroinitializer }, align 32
@set_clock_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Input refresh or pixclock is wrong.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_clock_divider\00", [46 x i8] zeroinitializer }, align 32
@set_clock_divider._entry_ptr = internal global ptr @set_clock_divider._entry, section ".printk_index", align 4
@set_clock_divider._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 279, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Warning: clock source is too slow. Try smaller resolution\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@set_clock_divider._entry_ptr.33 = internal global ptr @set_clock_divider._entry.30, section ".printk_index", align 4
@switch.table.pxa168fb_probe = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 16, i32 16, i32 16, i32 16, i32 24, i32 24, i32 16, i32 16, i32 32, i32 32, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.34 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 11, i32 0, i32 10, i32 0, i32 16, i32 0, i32 11, i32 11, i32 16, i32 0, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.35 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 5, i32 5, i32 5, i32 5, i32 8, i32 8, i32 5, i32 5, i32 8, i32 8, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.36 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 5, i32 5, i32 5, i32 5, i32 8, i32 8, i32 5, i32 5, i32 8, i32 8, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.37 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 6, i32 6, i32 5, i32 5, i32 8, i32 8, i32 6, i32 6, i32 8, i32 8, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.38 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 11, i32 0, i32 10, i32 0, i32 16, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.39 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 24, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.pxa168fb_probe.40 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"pxa168fb_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 804, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 806, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 604, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 608, i32 33 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 610, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 616, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 622, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"pxa168fb_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 544, i32 28 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 734, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 749, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 767, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 579, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 258, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [34 x i8] c"../drivers/video/fbdev/pxa168fb.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 278, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [28 x i8] c"switch.table.pxa168fb_probe\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.34\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.35\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.36\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.37\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.38\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.39\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"switch.table.pxa168fb_probe.40\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_pxa168fb_driver_exit, ptr @__initcall__kmod_pxa168fb__308_812_pxa168fb_driver_init6, ptr @pxa168fb_driver_exit, ptr @pxa168fb_probe._entry, ptr @pxa168fb_probe._entry.10, ptr @pxa168fb_probe._entry.13, ptr @pxa168fb_probe._entry.16, ptr @pxa168fb_probe._entry.19, ptr @pxa168fb_probe._entry.22, ptr @pxa168fb_probe._entry.7, ptr @pxa168fb_probe._entry_ptr, ptr @pxa168fb_probe._entry_ptr.12, ptr @pxa168fb_probe._entry_ptr.15, ptr @pxa168fb_probe._entry_ptr.18, ptr @pxa168fb_probe._entry_ptr.21, ptr @pxa168fb_probe._entry_ptr.24, ptr @pxa168fb_probe._entry_ptr.9, ptr @set_clock_divider._entry, ptr @set_clock_divider._entry.30, ptr @set_clock_divider._entry_ptr, ptr @set_clock_divider._entry_ptr.33, ptr @pxa168fb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @pxa168fb_ops, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @switch.table.pxa168fb_probe, ptr @switch.table.pxa168fb_probe.34, ptr @switch.table.pxa168fb_probe.35, ptr @switch.table.pxa168fb_probe.36, ptr @switch.table.pxa168fb_probe.37, ptr @switch.table.pxa168fb_probe.38, ptr @switch.table.pxa168fb_probe.39, ptr @switch.table.pxa168fb_probe.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168fb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_clock_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_clock_divider._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.34 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.35 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.36 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.37 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.38 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.39 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pxa168fb_probe.40 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa168fb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa168fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa168fb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %call29 = tail call ptr @framebuffer_alloc(i32 noundef 92, ptr noundef %dev) #8
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %par = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 30
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 4
  %info33 = getelementptr inbounds %struct.pxa168fb_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %info33 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call29, ptr %info33, align 4
  %clk34 = getelementptr inbounds %struct.pxa168fb_info, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %clk34 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %clk34, align 4
  %dev36 = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 22
  %7 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev36, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %4, align 4
  %panel_rbswap = getelementptr inbounds %struct.pxa168fb_mach_info, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %panel_rbswap to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %panel_rbswap, align 4
  %panel_rbswap38 = getelementptr inbounds %struct.pxa168fb_info, ptr %4, i32 0, i32 7
  %10 = trunc i32 %bf.load to i8
  %11 = ptrtoint ptr %panel_rbswap38 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load39 = load i8, ptr %panel_rbswap38, align 4
  %12 = shl i8 %10, 3
  %bf.shl = and i8 %12, 64
  %bf.clear40 = and i8 %bf.load39, 63
  %bf.set = or i8 %bf.shl, %bf.clear40
  store i8 %bf.set, ptr %panel_rbswap38, align 4
  %bf.load44 = load i32, ptr %panel_rbswap, align 4
  %13 = trunc i32 %bf.load44 to i8
  %14 = shl i8 %13, 3
  %bf.shl50 = and i8 %14, 32
  %bf.clear51 = and i8 %bf.set, 95
  %bf.set52 = or i8 %bf.shl50, %bf.clear51
  store i8 %bf.set52, ptr %panel_rbswap38, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12352, ptr %flags, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %node, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7
  %call56 = tail call i32 @strlcpy(ptr noundef %fix, ptr noundef nonnull %1, i32 noundef 16) #8
  %type = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type_aux, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 6
  %19 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 7
  %20 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 8
  %21 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %ywrapstep, align 4
  %22 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call12, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 10
  %24 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mmio_start, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call12, i32 0, i32 1
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i, align 4
  %27 = load i32, ptr %call12, align 4
  %sub.i = add i32 %26, 1
  %add.i = sub i32 %sub.i, %27
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %mmio_len, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 12
  %29 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %accel, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 20
  %30 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pxa168fb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.pxa168fb_info, ptr %4, i32 0, i32 5
  %pseudo_palette67 = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 27
  %31 = ptrtoint ptr %pseudo_palette67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pseudo_palette, ptr %pseudo_palette67, align 4
  %32 = load i32, ptr %call12, align 4
  %33 = load i32, ptr %end.i, align 4
  %sub.i267 = sub i32 1, %32
  %add.i268 = add i32 %sub.i267, %33
  %call71 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %32, i32 noundef %add.i268) #8
  %reg_base = getelementptr inbounds %struct.pxa168fb_info, ptr %4, i32 0, i32 3
  %34 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call71, ptr %reg_base, align 4
  %cmp73 = icmp eq ptr %call71, null
  br i1 %cmp73, label %if.end32.failed_free_info_crit_edge, label %if.end75

if.end32.failed_free_info_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_free_info

if.end75:                                         ; preds = %if.end32
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1536000, ptr %smem_len, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 4
  %fb_start_dma = getelementptr inbounds %struct.pxa168fb_info, ptr %4, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %37, i32 noundef 1536000, ptr noundef %fb_start_dma, i32 noundef 3264, i32 noundef 4) #8
  %38 = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 25
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %38, align 4
  %cmp81 = icmp eq ptr %call.i, null
  br i1 %cmp81, label %if.end75.failed_free_info_crit_edge, label %if.end83

if.end75.failed_free_info_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_free_info

if.end83:                                         ; preds = %if.end75
  %40 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fb_start_dma, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %smem_start, align 4
  %43 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %par, align 4
  %fb_start_dma.i = getelementptr inbounds %struct.pxa168fb_info, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %fb_start_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fb_start_dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %reg_base.i = getelementptr inbounds %struct.pxa168fb_info, ptr %44, i32 0, i32 3
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %47) #8, !srcloc !75
  %var = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6
  %modes = getelementptr inbounds %struct.pxa168fb_mach_info, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %modes, align 4
  %pix_fmt = getelementptr inbounds %struct.pxa168fb_mach_info, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pix_fmt, align 4
  %54 = ptrtoint ptr %info33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %53)
  %56 = icmp ult i32 %53, 21
  br i1 %56, label %switch.hole_check, label %if.end83.set_mode.exit_crit_edge

if.end83.set_mode.exit_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_mode.exit

switch.hole_check:                                ; preds = %if.end83
  %switch.shifted = lshr i32 1049407, %53
  %57 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %switch.lobit.not = icmp eq i32 %57, 0
  br i1 %switch.lobit.not, label %switch.hole_check.set_mode.exit_crit_edge, label %switch.lookup

switch.hole_check.set_mode.exit_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_mode.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe, i32 0, i32 %53
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep275 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.34, i32 0, i32 %53
  %59 = ptrtoint ptr %switch.gep275 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load276 = load i32, ptr %switch.gep275, align 4
  %switch.gep277 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.35, i32 0, i32 %53
  %60 = ptrtoint ptr %switch.gep277 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load278 = load i32, ptr %switch.gep277, align 4
  %switch.gep279 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.36, i32 0, i32 %53
  %61 = ptrtoint ptr %switch.gep279 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load280 = load i32, ptr %switch.gep279, align 4
  %switch.gep281 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.37, i32 0, i32 %53
  %62 = ptrtoint ptr %switch.gep281 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load282 = load i32, ptr %switch.gep281, align 4
  %switch.gep283 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.38, i32 0, i32 %53
  %63 = ptrtoint ptr %switch.gep283 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load284 = load i32, ptr %switch.gep283, align 4
  %switch.gep285 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.39, i32 0, i32 %53
  %64 = ptrtoint ptr %switch.gep285 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load286 = load i32, ptr %switch.gep285, align 4
  %switch.gep287 = getelementptr inbounds [21 x i32], ptr @switch.table.pxa168fb_probe.40, i32 0, i32 %53
  %65 = ptrtoint ptr %switch.gep287 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load288 = load i32, ptr %switch.gep287, align 4
  %bits_per_pixel138.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 6
  %66 = ptrtoint ptr %bits_per_pixel138.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %switch.load, ptr %bits_per_pixel138.i.i, align 4
  %red139.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 8
  %67 = ptrtoint ptr %red139.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.load276, ptr %red139.i.i, align 4
  %length142.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 8, i32 1
  %68 = ptrtoint ptr %length142.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %switch.load278, ptr %length142.i.i, align 4
  %green143.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 9
  %69 = ptrtoint ptr %green143.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %switch.load280, ptr %green143.i.i, align 4
  %length146.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 9, i32 1
  %70 = ptrtoint ptr %length146.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %switch.load282, ptr %length146.i.i, align 4
  %blue147.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 10
  %71 = ptrtoint ptr %blue147.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %switch.load284, ptr %blue147.i.i, align 4
  %length150.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 10, i32 1
  %72 = ptrtoint ptr %length150.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %switch.load278, ptr %length150.i.i, align 4
  %transp151.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 11
  %73 = ptrtoint ptr %transp151.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %switch.load286, ptr %transp151.i.i, align 4
  %length154.i.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 11, i32 1
  %74 = ptrtoint ptr %length154.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %switch.load288, ptr %length154.i.i, align 4
  br label %set_mode.exit

set_mode.exit:                                    ; preds = %switch.lookup, %switch.hole_check.set_mode.exit_crit_edge, %if.end83.set_mode.exit_crit_edge
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 2
  %75 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %xres.i, align 4
  %77 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 3
  %78 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %yres.i, align 4
  %yres3.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %yres3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %yres3.i, align 4
  %xres_virtual.i269 = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 2
  %81 = ptrtoint ptr %xres_virtual.i269 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xres_virtual.i269, align 4
  %83 = tail call i32 @llvm.umax.i32(i32 %76, i32 %82) #8
  %84 = ptrtoint ptr %xres_virtual.i269 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %xres_virtual.i269, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %55, i32 0, i32 7, i32 2
  %85 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %smem_len.i, align 4
  %bits_per_pixel.i270 = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 6
  %87 = ptrtoint ptr %bits_per_pixel.i270 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bits_per_pixel.i270, align 4
  %shr.i271 = lshr i32 %88, 3
  %mul.i = mul i32 %shr.i271, %83
  %div.i = udiv i32 %86, %mul.i
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 3
  %89 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div.i, ptr %yres_virtual.i, align 4
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 7
  %90 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %grayscale.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 16
  %91 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %accel_flags.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 4
  %92 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pixclock.i, align 4
  %pixclock16.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 17
  %94 = ptrtoint ptr %pixclock16.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %pixclock16.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 5
  %95 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %left_margin.i, align 4
  %left_margin17.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 18
  %97 = ptrtoint ptr %left_margin17.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %left_margin17.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 6
  %98 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %right_margin.i, align 4
  %right_margin18.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 19
  %100 = ptrtoint ptr %right_margin18.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %right_margin18.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 7
  %101 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %upper_margin.i, align 4
  %upper_margin19.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 20
  %103 = ptrtoint ptr %upper_margin19.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %upper_margin19.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 8
  %104 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lower_margin.i, align 4
  %lower_margin20.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 21
  %106 = ptrtoint ptr %lower_margin20.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %lower_margin20.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 9
  %107 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hsync_len.i, align 4
  %hsync_len21.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 22
  %109 = ptrtoint ptr %hsync_len21.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %hsync_len21.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 10
  %110 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vsync_len.i, align 4
  %vsync_len22.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 23
  %112 = ptrtoint ptr %vsync_len22.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %vsync_len22.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %51, i32 0, i32 11
  %113 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sync.i, align 4
  %sync23.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 24
  %115 = ptrtoint ptr %sync23.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %sync23.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 25
  %116 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %vmode.i, align 4
  %rotate.i = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 6, i32 26
  %117 = ptrtoint ptr %rotate.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %rotate.i, align 4
  %118 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %modes, align 4
  %num_modes = getelementptr inbounds %struct.pxa168fb_mach_info, ptr %1, i32 0, i32 1
  %120 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_modes, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef %119, i32 noundef %121, ptr noundef %modelist) #8
  tail call fastcc void @pxa168fb_init_mode(ptr noundef nonnull %call29)
  %call88 = tail call i32 @pxa168fb_check_var(ptr noundef %var, ptr noundef nonnull %call29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool.not = icmp eq i32 %call88, 0
  br i1 %tobool.not, label %if.end90, label %set_mode.exit.failed_free_fbmem_crit_edge

set_mode.exit.failed_free_fbmem_crit_edge:        ; preds = %set_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_free_fbmem

if.end90:                                         ; preds = %set_mode.exit
  %122 = ptrtoint ptr %clk34 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk34, align 4
  %call.i272 = tail call i32 @clk_prepare(ptr noundef %123) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool.not.i = icmp eq i32 %call.i272, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end90.clk_prepare_enable.exit_crit_edge

if.end90.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end90
  %call1.i = tail call i32 @clk_enable(ptr noundef %123) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %123) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end90.clk_prepare_enable.exit_crit_edge
  %call93 = tail call i32 @pxa168fb_set_par(ptr noundef nonnull %call29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %125, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %panel_rbswap to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load101 = load i32, ptr %panel_rbswap, align 4
  %127 = lshr i32 %bf.load101, 4
  %128 = and i32 %127, 251658240
  %129 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_base, align 4
  %add.ptr104 = getelementptr i8, ptr %130, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %128) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_base, align 4
  %add.ptr109 = getelementptr i8, ptr %132, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg_base, align 4
  %add.ptr114 = getelementptr i8, ptr %134, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_base, align 4
  %add.ptr119 = getelementptr i8, ptr %136, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg_base, align 4
  %add.ptr124 = getelementptr i8, ptr %138, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 14680064) #8, !srcloc !75
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call29, i32 0, i32 12
  %call125 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %clk_prepare_enable.exit.failed_free_clk_crit_edge, label %if.end128

clk_prepare_enable.exit.failed_free_clk_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_free_clk

if.end128:                                        ; preds = %clk_prepare_enable.exit
  %call.i273 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call20, ptr noundef nonnull @pxa168fb_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef %fix, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %cmp134 = icmp slt i32 %call.i273, 0
  br i1 %cmp134, label %do.end138, label %do.body141

do.end138:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %failed_free_cmap

do.body141:                                       ; preds = %if.end128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg_base, align 4
  %add.ptr145 = getelementptr i8, ptr %140, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 8) #8, !srcloc !75
  %call146 = tail call i32 @register_framebuffer(ptr noundef nonnull %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %do.end151, label %if.end153

do.end151:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call146) #11
  br label %failed_free_cmap

if.end153:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %141 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %4, ptr %driver_data.i.i, align 4
  br label %cleanup

failed_free_cmap:                                 ; preds = %do.end151, %do.end138
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %failed_free_clk

failed_free_clk:                                  ; preds = %failed_free_cmap, %clk_prepare_enable.exit.failed_free_clk_crit_edge
  %ret.1 = phi i32 [ -6, %failed_free_cmap ], [ -12, %clk_prepare_enable.exit.failed_free_clk_crit_edge ]
  %142 = ptrtoint ptr %clk34 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %clk34, align 4
  tail call void @clk_disable(ptr noundef %143) #8
  tail call void @clk_unprepare(ptr noundef %143) #8
  br label %failed_free_fbmem

failed_free_fbmem:                                ; preds = %failed_free_clk, %set_mode.exit.failed_free_fbmem_crit_edge
  %ret.2 = phi i32 [ %call88, %set_mode.exit.failed_free_fbmem_crit_edge ], [ %ret.1, %failed_free_clk ]
  %144 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %4, align 4
  %146 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %smem_len, align 4
  %148 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %38, align 4
  %150 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fb_start_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %151, i32 noundef 4) #8
  br label %failed_free_info

failed_free_info:                                 ; preds = %failed_free_fbmem, %if.end75.failed_free_info_crit_edge, %if.end32.failed_free_info_crit_edge
  %ret.3 = phi i32 [ %ret.2, %failed_free_fbmem ], [ -12, %if.end32.failed_free_info_crit_edge ], [ -12, %if.end75.failed_free_info_crit_edge ]
  tail call void @framebuffer_release(ptr noundef nonnull %call29) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %ret.3) #11
  br label %cleanup

cleanup:                                          ; preds = %failed_free_info, %if.end153, %if.end27.cleanup_crit_edge, %do.end25, %do.end17, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %2, %do.end8 ], [ -2, %do.end17 ], [ -2, %do.end25 ], [ %ret.3, %failed_free_info ], [ 0, %if.end153 ], [ -12, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_base = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 400
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %5 = and i32 %4, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #8, !srcloc !75
  %info5 = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %info5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info5, align 4
  tail call void @unregister_framebuffer(ptr noundef %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !75
  %len = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmap = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smem_len, align 4
  %18 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 25
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smem_start, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %17, ptr noundef %20, i32 noundef %22, i32 noundef 4) #8
  %clk = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  tail call void @framebuffer_release(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa168fb_init_mode(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call = tail call ptr @fb_find_best_mode(ptr noundef %var1, ptr noundef %modelist) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fb_videomode_to_var(ptr noundef %var1, ptr noundef nonnull %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var1, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %xres_virtual, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smem_len, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %8, 3
  %mul = mul i32 %shr, %3
  %div = udiv i32 %6, %mul
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %yres_virtual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa168fb_init_mode.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa168fb_init_mode, %if.then9)) #8
          to label %if.else207 [label %if.then9], !srcloc !87

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %var1, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa168fb_init_mode.__UNIQUE_ID_ddebug307, ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %13, i32 noundef %15) #8
  br label %if.else207

if.else207:                                       ; preds = %if.then9, %if.end
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %16 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %left_margin, align 4
  %18 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %var1, align 4
  %add = add i32 %17, %19
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %20 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %right_margin, align 4
  %add13 = add i32 %add, %21
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %22 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hsync_len, align 4
  %add14 = add i32 %add13, %23
  %mul19 = mul i32 %add14, 60
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %24 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %upper_margin, align 4
  %yres15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %yres15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres15, align 4
  %add16 = add i32 %25, %27
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %28 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_margin, align 4
  %add17 = add i32 %add16, %29
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %30 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vsync_len, align 4
  %add18 = add i32 %add17, %31
  %mul20 = mul i32 %mul19, %add18
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20, i64 1000000000000) #12, !srcloc !88
  %asmresult1.i = extractvalue { i64, i64 } %32, 1
  %extract.t28 = trunc i64 %asmresult1.i to i32
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %33 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %extract.t28, ptr %pixclock, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa168fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end36.i [
    i32 8, label %entry.sw.epilog.sink.split.i_crit_edge
    i32 16, label %land.lhs.true.i
  ]

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

land.lhs.true.i:                                  ; preds = %entry
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp ult i32 %6, 6
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.land.lhs.true39.i_crit_edge

land.lhs.true.i.land.lhs.true39.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %length5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %length5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp6.i = icmp ult i32 %8, 7
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.land.lhs.true39.i_crit_edge

land.lhs.true4.i.land.lhs.true39.i_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %blue.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %length8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp9.i = icmp ult i32 %10, 6
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true7.i.land.lhs.true39.i_crit_edge

land.lhs.true7.i.land.lhs.true39.i_crit_edge:     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39.i

if.then10.i:                                      ; preds = %land.lhs.true7.i
  %length11.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %length11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length11.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %12, label %if.then10.i.land.lhs.true39.i_crit_edge [
    i32 0, label %if.end
    i32 1, label %land.lhs.true23.i
  ]

if.then10.i.land.lhs.true39.i_crit_edge:          ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39.i

land.lhs.true23.i:                                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp26.i = icmp ult i32 %8, 6
  br i1 %cmp26.i, label %if.then27.i, label %land.lhs.true23.i.land.lhs.true39.i_crit_edge

land.lhs.true23.i.land.lhs.true39.i_crit_edge:    ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39.i

if.then27.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %red.i, align 4
  %16 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp32.not.i = icmp ult i32 %15, %17
  %.83 = select i1 %cmp32.not.i, i32 3, i32 2
  %.84 = select i1 %cmp32.not.i, i32 0, i32 10
  %.85 = select i1 %cmp32.not.i, i32 10, i32 0
  br label %sw.epilog.sink.split.i

if.end36.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %3)
  %cmp38.i = icmp ult i32 %3, 33
  br i1 %cmp38.i, label %if.end36.i.land.lhs.true39.i_crit_edge, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36.i.land.lhs.true39.i_crit_edge:           ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39.i

land.lhs.true39.i:                                ; preds = %if.end36.i.land.lhs.true39.i_crit_edge, %land.lhs.true23.i.land.lhs.true39.i_crit_edge, %if.then10.i.land.lhs.true39.i_crit_edge, %land.lhs.true7.i.land.lhs.true39.i_crit_edge, %land.lhs.true4.i.land.lhs.true39.i_crit_edge, %land.lhs.true.i.land.lhs.true39.i_crit_edge
  %red40.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length41.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %length41.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cmp42.i = icmp ult i32 %19, 9
  br i1 %cmp42.i, label %land.lhs.true43.i, label %land.lhs.true39.i.cleanup_crit_edge

land.lhs.true39.i.cleanup_crit_edge:              ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true43.i:                                ; preds = %land.lhs.true39.i
  %length45.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %length45.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp46.i = icmp ult i32 %21, 9
  br i1 %cmp46.i, label %land.lhs.true47.i, label %land.lhs.true43.i.cleanup_crit_edge

land.lhs.true43.i.cleanup_crit_edge:              ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true47.i:                                ; preds = %land.lhs.true43.i
  %blue48.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length49.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %length49.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %cmp50.i = icmp ult i32 %23, 9
  br i1 %cmp50.i, label %if.then51.i, label %land.lhs.true47.i.cleanup_crit_edge

land.lhs.true47.i.cleanup_crit_edge:              ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51.i:                                      ; preds = %land.lhs.true47.i
  %24 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %if.then51.i.if.else81.i_crit_edge [
    i32 24, label %land.lhs.true54.i
    i32 32, label %land.lhs.true69.i
  ]

if.then51.i.if.else81.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else81.i

land.lhs.true54.i:                                ; preds = %if.then51.i
  %length56.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %length56.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp57.i = icmp eq i32 %26, 0
  br i1 %cmp57.i, label %if.then58.i, label %land.lhs.true54.i.if.else81.i_crit_edge

land.lhs.true54.i.if.else81.i_crit_edge:          ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else81.i

if.then58.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %red40.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %red40.i, align 4
  %29 = ptrtoint ptr %blue48.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blue48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp63.not.i = icmp ult i32 %28, %30
  %.86 = select i1 %cmp63.not.i, i32 5, i32 4
  %.87 = select i1 %cmp63.not.i, i32 0, i32 16
  %.88 = select i1 %cmp63.not.i, i32 16, i32 0
  br label %sw.epilog.sink.split.i

land.lhs.true69.i:                                ; preds = %if.then51.i
  %length71.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %length71.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cmp72.i = icmp eq i32 %32, 8
  br i1 %cmp72.i, label %if.then73.i, label %land.lhs.true69.i.if.else81.i_crit_edge

land.lhs.true69.i.if.else81.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else81.i

if.then73.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %red40.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %red40.i, align 4
  %35 = ptrtoint ptr %blue48.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blue48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp78.not.i = icmp ult i32 %34, %36
  %.89 = select i1 %cmp78.not.i, i32 9, i32 8
  %.90 = select i1 %cmp78.not.i, i32 0, i32 16
  %.91 = select i1 %cmp78.not.i, i32 16, i32 0
  br label %sw.epilog.sink.split.i

if.else81.i:                                      ; preds = %land.lhs.true69.i.if.else81.i_crit_edge, %land.lhs.true54.i.if.else81.i_crit_edge, %if.then51.i.if.else81.i_crit_edge
  %37 = ptrtoint ptr %red40.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %red40.i, align 4
  %39 = ptrtoint ptr %blue48.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blue48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp86.not.i = icmp ult i32 %38, %40
  %spec.select = select i1 %cmp86.not.i, i32 7, i32 6
  br label %set_pix_fmt.exit

if.end:                                           ; preds = %if.then10.i
  %41 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %red.i, align 4
  %43 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp17.not.i = icmp ult i32 %42, %44
  br i1 %cmp17.not.i, label %sw.bb11.i, label %if.end.sw.epilog.sink.split.i_crit_edge

if.end.sw.epilog.sink.split.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb11.i, %if.end.sw.epilog.sink.split.i_crit_edge, %if.then73.i, %if.then58.i, %if.then27.i, %entry.sw.epilog.sink.split.i_crit_edge
  %retval.0.i.ph64 = phi i32 [ 1, %sw.bb11.i ], [ 0, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %.83, %if.then27.i ], [ %.86, %if.then58.i ], [ %.89, %if.then73.i ], [ 20, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink242.i = phi i32 [ 16, %sw.bb11.i ], [ 16, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 16, %if.then27.i ], [ 24, %if.then58.i ], [ 32, %if.then73.i ], [ %3, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink241.i = phi i32 [ 0, %sw.bb11.i ], [ 11, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %.84, %if.then27.i ], [ %.87, %if.then58.i ], [ %.90, %if.then73.i ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink240.i = phi i32 [ 5, %sw.bb11.i ], [ 5, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 5, %if.then27.i ], [ 8, %if.then58.i ], [ 8, %if.then73.i ], [ %3, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink239.i = phi i32 [ 5, %sw.bb11.i ], [ 5, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 5, %if.then27.i ], [ 8, %if.then58.i ], [ 8, %if.then73.i ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink238.i = phi i32 [ 6, %sw.bb11.i ], [ 6, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 5, %if.then27.i ], [ 8, %if.then58.i ], [ 8, %if.then73.i ], [ %3, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink237.i = phi i32 [ 11, %sw.bb11.i ], [ 0, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %.85, %if.then27.i ], [ %.88, %if.then58.i ], [ %.91, %if.then73.i ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink235.i = phi i32 [ 0, %sw.bb11.i ], [ 0, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 15, %if.then27.i ], [ 0, %if.then58.i ], [ 24, %if.then73.i ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 0, %sw.bb11.i ], [ 0, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 1, %if.then27.i ], [ 0, %if.then58.i ], [ 8, %if.then73.i ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ]
  %45 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink242.i, ptr %bits_per_pixel.i, align 4
  %red139.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %46 = ptrtoint ptr %red139.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink241.i, ptr %red139.i, align 4
  %length142.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %length142.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink240.i, ptr %length142.i, align 4
  %green143.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %48 = ptrtoint ptr %green143.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink239.i, ptr %green143.i, align 4
  %length146.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %length146.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink238.i, ptr %length146.i, align 4
  %blue147.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %50 = ptrtoint ptr %blue147.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink237.i, ptr %blue147.i, align 4
  %length150.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %length150.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink240.i, ptr %length150.i, align 4
  %transp151.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %52 = ptrtoint ptr %transp151.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink235.i, ptr %transp151.i, align 4
  %length154.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %53 = ptrtoint ptr %length154.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink.i, ptr %length154.i, align 4
  br label %set_pix_fmt.exit

set_pix_fmt.exit:                                 ; preds = %sw.epilog.sink.split.i, %if.else81.i
  %retval.0.i.ph60 = phi i32 [ %retval.0.i.ph64, %sw.epilog.sink.split.i ], [ %spec.select, %if.else81.i ]
  %pix_fmt1 = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %pix_fmt1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i.ph60, ptr %pix_fmt1, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %55 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xoffset, align 4
  %57 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %var, align 4
  %add = add i32 %58, %56
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %59 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %60)
  %cmp2 = icmp ugt i32 %add, %60
  br i1 %cmp2, label %set_pix_fmt.exit.cleanup_crit_edge, label %if.end4

set_pix_fmt.exit.cleanup_crit_edge:               ; preds = %set_pix_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %set_pix_fmt.exit
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %61 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %63 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %yres, align 4
  %add5 = add i32 %64, %62
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %65 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %66)
  %cmp6 = icmp ugt i32 %add5, %66
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %67 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %right_margin, align 4
  %add10 = add i32 %68, %58
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %69 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hsync_len, align 4
  %add11 = add i32 %add10, %70
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %71 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %left_margin, align 4
  %add12 = add i32 %add11, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add12)
  %cmp13 = icmp ugt i32 %add12, 2048
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %73 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lower_margin, align 4
  %add17 = add i32 %74, %64
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %75 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vsync_len, align 4
  %add18 = add i32 %add17, %76
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %77 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %upper_margin, align 4
  %add19 = add i32 %add18, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add19)
  %cmp20 = icmp ugt i32 %add19, 2048
  br i1 %cmp20, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %66, %60
  %79 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bits_per_pixel.i, align 4
  %shr = lshr i32 %80, 3
  %mul25 = mul i32 %mul, %shr
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %81 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul25, i32 %82)
  %cmp26 = icmp ugt i32 %mul25, %82
  %. = select i1 %cmp26, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %set_pix_fmt.exit.cleanup_crit_edge, %land.lhs.true47.i.cleanup_crit_edge, %land.lhs.true43.i.cleanup_crit_edge, %land.lhs.true39.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %set_pix_fmt.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %., %if.end22 ], [ -22, %land.lhs.true47.i.cleanup_crit_edge ], [ -22, %land.lhs.true43.i.cleanup_crit_edge ], [ -22, %land.lhs.true39.i.cleanup_crit_edge ], [ -22, %if.end36.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_set_par(ptr noundef %info) #2 align 64 {
entry:
  %mode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #8
  %2 = call ptr @memset(ptr %mode, i32 255, i32 56)
  %pix_fmt = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pix_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %4)
  %cmp = icmp eq i32 %4, 20
  %spec.select = select i1 %cmp, i32 3, i32 2
  %5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %9 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %10, %8
  %div119 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %11 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div119, ptr %line_length, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %conv = trunc i32 %13 to i16
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %14 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %ypanstep, align 2
  %reg_base = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 440
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %18 = and i32 %17, -16777217
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %add.ptr8 = getelementptr i8, ptr %20, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %18) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %yres, align 4
  %shl = shl i32 %22, 16
  %23 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %var1, align 4
  %or = or i32 %shl, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base, align 4
  %add.ptr14 = getelementptr i8, ptr %27, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %25) #8, !srcloc !75
  call void @fb_var_to_videomode(ptr noundef nonnull %mode, ptr noundef %var1) #8
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %28 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixclock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i = icmp eq i32 %29, 0
  br i1 %tobool1.not.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false2.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %entry
  %refresh.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 1
  %30 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %refresh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.i = icmp eq i32 %31, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.do.end.i_crit_edge, label %if.else181.i

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false2.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.28) #11
  br label %set_clock_divider.exit

if.else181.i:                                     ; preds = %lor.lhs.false2.i
  %34 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 1000000000000) #12, !srcloc !88
  %asmresult1.i.i = extractvalue { i64, i64 } %34, 1
  %extract.t = trunc i64 %asmresult1.i.i to i32
  %clk.i = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  %call188.i = call i32 @clk_get_rate(ptr noundef %36) #8
  %div189.i = udiv i32 %call188.i, %extract.t
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div189.i)
  %cmp190.i = icmp slt i32 %div189.i, 2
  br i1 %cmp190.i, label %do.end195.i, label %if.else181.i.if.end197.i_crit_edge

if.else181.i.if.end197.i_crit_edge:               ; preds = %if.else181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

do.end195.i:                                      ; preds = %if.else181.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.31) #11
  br label %if.end197.i

if.end197.i:                                      ; preds = %do.end195.i, %if.else181.i.if.end197.i_crit_edge
  %divider_int.0.i = phi i32 [ 2, %do.end195.i ], [ %div189.i, %if.else181.i.if.end197.i_crit_edge ]
  %or198.i = or i32 %divider_int.0.i, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @arm_heavy_mb() #8
  %39 = call i32 @llvm.bswap.i32(i32 %or198.i) #8
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %39) #8, !srcloc !75
  br label %set_clock_divider.exit

set_clock_divider.exit:                           ; preds = %if.end197.i, %do.end.i
  %42 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base, align 4
  %add.ptr.i121 = getelementptr i8, ptr %43, i32 400
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #8, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %45 = and i32 %44, -65537
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  %active.i = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %active.i, align 4
  %48 = and i8 %bf.load.i, 32
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %or.i = or i32 %50, %46
  %51 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pix_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %52)
  %cmp.i122 = icmp eq i32 %52, 20
  %or2.i = or i32 %or.i, 268435456
  %spec.select.i = select i1 %cmp.i122, i32 %or2.i, i32 %or.i
  %and3.i = and i32 %spec.select.i, -987137
  %53 = shl i32 %52, 15
  %shl.i123 = and i32 %53, -65536
  %or5.i = or i32 %shl.i123, %and3.i
  %and8.i = and i32 %52, 1
  %bf.lshr10.i = lshr i8 %bf.load.i, 6
  %bf.clear11.i = and i8 %bf.lshr10.i, 1
  %bf.cast12.i = zext i8 %bf.clear11.i to i32
  %xor.i = xor i32 %and8.i, %bf.cast12.i
  %shl13.i = shl nuw nsw i32 %xor.i, 12
  %or14.i = or i32 %or5.i, %shl13.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  call void @arm_heavy_mb() #8
  %54 = call i32 @llvm.bswap.i32(i32 %or14.i) #8
  %55 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base, align 4
  %add.ptr16.i = getelementptr i8, ptr %56, i32 400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %54) #8, !srcloc !75
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %57 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sync, align 4
  %59 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base, align 4
  %add.ptr.i125 = getelementptr i8, ptr %60, i32 404
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #8, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %62 = or i32 %61, -2113981920
  %63 = call i32 @llvm.bswap.i32(i32 %62) #8
  %and.i = shl i32 %58, 26
  %64 = and i32 %and.i, 134217728
  %65 = xor i32 %64, 134217728
  %66 = or i32 %63, %65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  call void @arm_heavy_mb() #8
  %67 = call i32 @llvm.bswap.i32(i32 %66) #8
  %68 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %69, i32 404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %67) #8, !srcloc !75
  %70 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base, align 4
  %add.ptr20 = getelementptr i8, ptr %71, i32 252
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %73 = and i32 %72, 65535
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %xres_virtual, align 4
  %77 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bits_per_pixel, align 4
  %mul27 = mul i32 %78, %76
  %shr = lshr i32 %mul27, 3
  %or28 = or i32 %shr, %74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  call void @arm_heavy_mb() #8
  %79 = call i32 @llvm.bswap.i32(i32 %or28)
  %80 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_base, align 4
  %add.ptr33 = getelementptr i8, ptr %81, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %79) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %yres, align 4
  %shl38 = shl i32 %83, 16
  %84 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %var1, align 4
  %or40 = or i32 %shl38, %85
  %86 = call i32 @llvm.bswap.i32(i32 %or40)
  %87 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_base, align 4
  %add.ptr42 = getelementptr i8, ptr %88, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %86) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %yres, align 4
  %shl47 = shl i32 %90, 16
  %91 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %var1, align 4
  %or49 = or i32 %shl47, %92
  %93 = call i32 @llvm.bswap.i32(i32 %or49)
  %94 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_base, align 4
  %add.ptr51 = getelementptr i8, ptr %95, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %93) #8, !srcloc !75
  call fastcc void @set_dumb_panel_control(ptr noundef %info)
  %96 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %par, align 4
  %98 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %var1, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %100 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %right_margin.i, align 4
  %add.i126 = add i32 %101, %99
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %102 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hsync_len.i, align 4
  %add1.i = add i32 %add.i126, %103
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %104 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %left_margin.i, align 4
  %add2.i = add i32 %add1.i, %105
  %106 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %yres, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %108 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lower_margin.i, align 4
  %add3.i = add i32 %109, %107
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %110 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vsync_len.i, align 4
  %add4.i = add i32 %add3.i, %111
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %112 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %upper_margin.i, align 4
  %add5.i = add i32 %add4.i, %113
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  call void @arm_heavy_mb() #8
  %shl.i127 = shl i32 %add5.i, 16
  %or.i128 = or i32 %shl.i127, %add2.i
  %114 = call i32 @llvm.bswap.i32(i32 %or.i128) #8
  %reg_base.i129 = getelementptr inbounds %struct.pxa168fb_info, ptr %97, i32 0, i32 3
  %115 = ptrtoint ptr %reg_base.i129 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_base.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %116, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %114) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  call void @arm_heavy_mb() #8
  %117 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %left_margin.i, align 4
  %shl55 = shl i32 %118, 16
  %119 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %right_margin.i, align 4
  %or56 = or i32 %shl55, %120
  %121 = call i32 @llvm.bswap.i32(i32 %or56)
  %122 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_base, align 4
  %add.ptr58 = getelementptr i8, ptr %123, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %121) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %upper_margin.i, align 4
  %shl62 = shl i32 %125, 16
  %126 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lower_margin.i, align 4
  %or63 = or i32 %shl62, %127
  %128 = call i32 @llvm.bswap.i32(i32 %or63)
  %129 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_base, align 4
  %add.ptr65 = getelementptr i8, ptr %130, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %128) #8, !srcloc !75
  %131 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_base, align 4
  %add.ptr69 = getelementptr i8, ptr %132, i32 440
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #8, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  call void @arm_heavy_mb() #8
  %134 = or i32 %133, 16777216
  %135 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_base, align 4
  %add.ptr78 = getelementptr i8, ptr %136, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %134) #8, !srcloc !75
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.pxa168fb_info, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 452
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %and = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %and2 = and i32 %3, -134217729
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2)
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #8, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %trans, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %red, 19595
  %mul1 = mul i32 %green, 38470
  %add = add i32 %mul1, %mul
  %mul2 = mul i32 %blue, 7471
  %add3 = add i32 %add, %mul2
  %shr = lshr i32 %add3, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then ], [ %blue, %entry.if.end_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then ], [ %green, %entry.if.end_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then ], [ %red, %entry.if.end_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp4 = icmp ult i32 %regno, 16
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %if.then5, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %red7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.0, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %7
  %shr.i = lshr i32 %and.i, %sub.i
  %8 = ptrtoint ptr %red7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %red7, align 4
  %shl.i = shl i32 %shr.i, %9
  %green9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i53 = and i32 %green.addr.0, 65535
  %length.i54 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %10 = ptrtoint ptr %length.i54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i54, align 4
  %sub.i55 = sub i32 16, %11
  %shr.i56 = lshr i32 %and.i53, %sub.i55
  %12 = ptrtoint ptr %green9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %green9, align 4
  %shl.i57 = shl i32 %shr.i56, %13
  %or = or i32 %shl.i57, %shl.i
  %blue12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i58 = and i32 %blue.addr.0, 65535
  %length.i59 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %14 = ptrtoint ptr %length.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i59, align 4
  %sub.i60 = sub i32 16, %15
  %shr.i61 = lshr i32 %and.i58, %sub.i60
  %16 = ptrtoint ptr %blue12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blue12, align 4
  %shl.i62 = shl i32 %shr.i61, %17
  %or14 = or i32 %or, %shl.i62
  %arrayidx = getelementptr %struct.pxa168fb_info, ptr %1, i32 0, i32 5, i32 %regno
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or14, ptr %arrayidx, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.end.if.end15_crit_edge
  %19 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp18 = icmp eq i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %regno)
  %cmp20 = icmp ult i32 %regno, 256
  %or.cond52 = and i1 %cmp20, %cmp18
  br i1 %or.cond52, label %if.then21, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %21 = and i32 %green.addr.0, 65280
  %22 = lshr i32 %blue.addr.0, 8
  %23 = shl i32 %red.addr.0, 8
  %shl.i63 = and i32 %23, 16711680
  %conv11.i = and i32 %22, 255
  %or.i = or i32 %conv11.i, %21
  %or12.i = or i32 %or.i, %shl.i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or12.i)
  %reg_base = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %or28 = or i32 %regno, 33536
  %27 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %add.ptr30 = getelementptr i8, ptr %29, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %27) #8, !srcloc !75
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end15.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cmp.not = icmp eq i32 %blank, 0
  %is_blanked = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %is_blanked to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_blanked, align 4
  %bf.shl = select i1 %cmp.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %is_blanked, align 4
  tail call fastcc void @set_dumb_panel_control(ptr noundef %info)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %0 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %par.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %4 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %7, %3
  %add.i = add i32 %mul.i, %1
  %fb_start_dma.i = getelementptr inbounds %struct.pxa168fb_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %fb_start_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fb_start_dma.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel.i, align 4
  %shr.i = lshr i32 %11, 3
  %mul2.i = mul i32 %shr.i, %add.i
  %add3.i = add i32 %mul2.i, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %add3.i) #8
  %reg_base.i = getelementptr inbounds %struct.pxa168fb_info, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !75
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dumb_panel_control(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %reg_base = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 440
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %is_blanked = getelementptr inbounds %struct.pxa168fb_info, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %is_blanked to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %is_blanked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dumb_mode = getelementptr inbounds %struct.pxa168fb_mach_info, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %dumb_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load3 = load i32, ptr %dumb_mode, align 4
  %11 = shl i32 %bf.load3, 4
  %phi.bo = and i32 %11, -268435456
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.false ], [ 1879048192, %entry.cond.end_crit_edge ]
  %12 = lshr i32 %8, 24
  %and = and i32 %12, 1
  %or = or i32 %cond, %and
  %gpio_output_data = getelementptr inbounds %struct.pxa168fb_mach_info, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %gpio_output_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load5 = load i32, ptr %gpio_output_data, align 4
  %14 = shl i32 %bf.load5, 13
  %shl8 = and i32 %14, 267386880
  %15 = lshr i32 %bf.load5, 3
  %shl13 = and i32 %15, 1044480
  %16 = lshr i32 %bf.load5, 16
  %17 = and i32 %16, 128
  %18 = and i32 %bf.load5, 64
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %19 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sync, align 4
  %and27 = shl i32 %20, 2
  %21 = and i32 %and27, 32
  %22 = lshr i32 %bf.load5, 1
  %23 = and i32 %22, 16
  %24 = and i32 %and27, 8
  %25 = xor i32 %24, 8
  %26 = and i32 %and27, 4
  %27 = xor i32 %26, 4
  %28 = and i32 %15, 2
  %or9 = or i32 %or, %18
  %or14 = or i32 %or9, %shl8
  %or20 = or i32 %or14, %shl13
  %or26 = or i32 %or20, %17
  %or30 = or i32 %or26, %23
  %or36 = or i32 %or30, %28
  %or42 = or i32 %or36, %21
  %or48 = or i32 %or42, %25
  %or54 = or i32 %or48, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 4
  %add.ptr56 = getelementptr i8, ptr %31, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %29) #8, !srcloc !75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_pxa168fb__308_812_pxa168fb_driver_init6, !1, !"__initcall__kmod_pxa168fb__308_812_pxa168fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 812, i32 1}
!2 = !{ptr @__exitcall_pxa168fb_driver_exit, !1, !"__exitcall_pxa168fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 814, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 816, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 817, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 806, i32 11}
!12 = !{ptr @pxa168fb_driver, !13, !"pxa168fb_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 804, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 604, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pxa168fb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pxa168fb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 608, i32 33}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 610, i32 3}
!26 = !{ptr @pxa168fb_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pxa168fb_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 616, i32 3}
!30 = !{ptr @pxa168fb_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pxa168fb_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 622, i32 3}
!34 = !{ptr @pxa168fb_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pxa168fb_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 734, i32 3}
!38 = !{ptr @pxa168fb_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pxa168fb_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 749, i32 3}
!42 = !{ptr @pxa168fb_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pxa168fb_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 767, i32 2}
!46 = !{ptr @pxa168fb_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pxa168fb_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pxa168fb_ops, !49, !"pxa168fb_ops", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 544, i32 28}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 579, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pxa168fb_init_mode.__UNIQUE_ID_ddebug307, !51, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 258, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @set_clock_divider._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @set_clock_divider._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/pxa168fb.c", i32 278, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @set_clock_divider._entry.30, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @set_clock_divider._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2155990690}
!75 = !{i64 4634590}
!76 = !{i64 2156014486}
!77 = !{i64 2156014909}
!78 = !{i64 2156015382}
!79 = !{i64 2156015780}
!80 = !{i64 2156016178}
!81 = !{i64 2156016686}
!82 = !{i64 2156018871}
!83 = !{i64 4635008}
!84 = !{i64 2156023057}
!85 = !{i64 2156023295}
!86 = !{i64 2156023734}
!87 = !{i64 2148972085, i64 2148972090, i64 2148972103, i64 2148972147, i64 2148972181, i64 2148972202}
!88 = !{i64 2148205132, i64 2148205412, i64 2148205746, i64 2148206080}
!89 = !{i64 2155992756}
!90 = !{i64 2155992985}
!91 = !{i64 2155993426}
!92 = !{i64 2155988421}
!93 = !{i64 2155989108}
!94 = !{i64 2155989376}
!95 = !{i64 2155990063}
!96 = !{i64 2155990289}
!97 = !{i64 2155994197}
!98 = !{i64 2155994421}
!99 = !{i64 2155994847}
!100 = !{i64 2155995357}
!101 = !{i64 2155992026}
!102 = !{i64 2155995882}
!103 = !{i64 2155996453}
!104 = !{i64 2155997272}
!105 = !{i64 2155997500}
!106 = !{i64 2155999059}
!107 = !{i64 2155999325}
!108 = !{i64 2155997916}
!109 = !{i64 2155998333}
!110 = !{i64 2155991386}
!111 = !{i64 2155991616}
