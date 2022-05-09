; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/s3c-fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/s3c-fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c_fb_driverdata = type { %struct.s3c_fb_variant, [5 x ptr] }
%struct.s3c_fb_variant = type { i8, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, [5 x i16], i8 }
%struct.s3c_fb_win_variant = type { i8, i16, i16, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.s3c_fb = type { %struct.spinlock, ptr, ptr, ptr, ptr, %struct.s3c_fb_variant, i8, i8, ptr, [5 x ptr], i32, i32, %struct.s3c_fb_vsync }
%struct.s3c_fb_vsync = type { %struct.wait_queue_head, i32 }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s3c_fb_pd_win = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.s3c_fb_win = type { ptr, ptr, ptr, %struct.s3c_fb_palette, %struct.s3c_fb_win_variant, ptr, [16 x i32], i32 }
%struct.s3c_fb_palette = type { %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_s3c_fb__374_1808_s3c_fb_driver_init6 = internal global ptr @s3c_fb_driver_init, section ".initcall6.init", align 4
@s3c_fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c_fb_probe, ptr @s3c_fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3cfb_pm_ops, ptr null, ptr null }, ptr @s3c_fb_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c_fb_driver_exit = internal global ptr @s3c_fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author375 = internal constant [43 x i8] c"s3c_fb.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description376 = internal constant [54 x i8] c"s3c_fb.description=Samsung S3C SoC Framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file377 = internal constant [39 x i8] c"s3c_fb.file=drivers/video/fbdev/s3c-fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license378 = internal constant [19 x i8] c"s3c_fb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias379 = internal constant [29 x i8] c"s3c_fb.alias=platform:s3c-fb\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s3c-fb\00", [25 x i8] zeroinitializer }, align 32
@s3cfb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c_fb_suspend, ptr @s3c_fb_resume, ptr @s3c_fb_suspend, ptr @s3c_fb_resume, ptr @s3c_fb_suspend, ptr @s3c_fb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_fb_runtime_suspend, ptr @s3c_fb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c_fb_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c_fb_data_64xx to i32) }, %struct.platform_device_id { [20 x i8] c"s3c2443-fb\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c_fb_data_s3c2443 to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"too many windows, cannot attach\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c_fb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/s3c-fb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr = internal global ptr @s3c_fb_probe._entry, section ".printk_index", align 4
@s3c_fb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no platform data specified\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr.8 = internal global ptr @s3c_fb_probe._entry.6, section ".printk_index", align 4
@s3c_fb_probe.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s3c_fb\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allocate new framebuffer %p\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c_fb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&sfb->slock\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr.15 = internal global ptr @s3c_fb_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_fimd\00", [22 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get lcd clock\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr.19 = internal global ptr @s3c_fb_probe._entry.17, section ".printk_index", align 4
@s3c_fb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to acquire irq resource\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr.22 = internal global ptr @s3c_fb_probe._entry.20, section ".printk_index", align 4
@s3c_fb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr.25 = internal global ptr @s3c_fb_probe._entry.23, section ".printk_index", align 4
@s3c_fb_probe.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"got resources (regs %p), probing windows\0A\00", [54 x i8] zeroinitializer }, align 32
@s3c_fb_probe.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %08x => %p\0A\00", [16 x i8] zeroinitializer }, align 32
@s3c_fb_probe.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_probe.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_probe.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create window %d\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c_fb_probe._entry_ptr.30 = internal global ptr @s3c_fb_probe._entry.28, section ".printk_index", align 4
@s3c_fb_irq.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.31, ptr @.str.3, ptr @.str.27, i8 0, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s3c_fb_irq\00", [21 x i8] zeroinitializer }, align 32
@s3c_fb_disable_irq.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.32, ptr @.str.3, ptr @.str.27, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_fb_disable_irq\00", [45 x i8] zeroinitializer }, align 32
@s3c_fb_clear_win.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str.3, ptr @.str.27, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_fb_clear_win\00", [47 x i8] zeroinitializer }, align 32
@s3c_fb_clear_win.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str.3, ptr @.str.27, i8 1, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_clear_win.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str.3, ptr @.str.27, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_clear_win.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str.3, ptr @.str.27, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_clear_win.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str.3, ptr @.str.27, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.34, ptr @.str.3, ptr @.str.27, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c_fb_set_rgb_timing\00", [42 x i8] zeroinitializer }, align 32
@s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.34, ptr @.str.3, ptr @.str.27, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.34, ptr @.str.3, ptr @.str.27, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.34, ptr @.str.3, ptr @.str.27, i8 1, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_calc_pixclk.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_fb_calc_pixclk\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pixclk=%u, clk=%lu, div=%d (%lu)\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_fb_probe_win\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"probing window %d, variant %p\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sfb->vsync_info.wait\00", [42 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 1212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate display memory\0A\00", [61 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry_ptr = internal global ptr @s3c_fb_probe_win._entry, section ".printk_index", align 4
@s3c_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_fb_check_var, ptr @s3c_fb_set_par, ptr @s3c_fb_setcolreg, ptr null, ptr @s3c_fb_blank, ptr @s3c_fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @s3c_fb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 1254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"check_var failed on initial video params\0A\00", [54 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry_ptr.43 = internal global ptr @s3c_fb_probe_win._entry.41, section ".printk_index", align 4
@s3c_fb_probe_win._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 1264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate fb cmap\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry_ptr.46 = internal global ptr @s3c_fb_probe_win._entry.44, section ".printk_index", align 4
@s3c_fb_probe_win.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.37, ptr @.str.3, ptr @.str.47, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"about to register framebuffer\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.37, ptr @.str.3, i32 1274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register framebuffer\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry_ptr.50 = internal global ptr @s3c_fb_probe_win._entry.48, section ".printk_index", align 4
@s3c_fb_probe_win._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.37, ptr @.str.3, i32 1278, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"window %d: fb %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c_fb_probe_win._entry_ptr.54 = internal global ptr @s3c_fb_probe_win._entry.51, section ".printk_index", align 4
@s3c_fb_alloc_memory.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3c_fb_alloc_memory\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"allocating memory for display\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_fb_alloc_memory.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str.3, ptr @.str.57, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"real_size=%u (%u.%u), virt_size=%u (%u.%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@s3c_fb_alloc_memory.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str.3, ptr @.str.58, i8 1, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"want %u bytes for window\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c_fb_alloc_memory.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str.3, ptr @.str.59, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mapped %x to %p\0A\00", [47 x i8] zeroinitializer }, align 32
@s3c_fb_setcolreg.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_fb_setcolreg\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: win %d: %d => rgb=%d/%d/%d\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_fb_update_palette.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c_fb_update_palette\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: win %d, reg %d (%p): %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_fb_update_palette.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.62, ptr @.str.3, ptr @.str.27, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_update_palette.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.62, ptr @.str.3, ptr @.str.27, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_update_palette.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.62, ptr @.str.3, ptr @.str.27, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_blank.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c_fb_blank\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blank mode %d\0A\00", [17 x i8] zeroinitializer }, align 32
@s3c_fb_blank.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.64, ptr @.str.3, ptr @.str.27, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_blank.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.64, ptr @.str.3, ptr @.str.27, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_blank.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.64, ptr @.str.3, ptr @.str.27, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@shadow_protect_win.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.66, ptr @.str.3, ptr @.str.27, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shadow_protect_win\00", [45 x i8] zeroinitializer }, align 32
@shadow_protect_win.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.66, ptr @.str.3, ptr @.str.27, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@shadow_protect_win.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.66, ptr @.str.3, ptr @.str.27, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@shadow_protect_win.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.66, ptr @.str.3, ptr @.str.27, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_enable.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.67, ptr @.str.3, ptr @.str.27, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c_fb_enable\00", [18 x i8] zeroinitializer }, align 32
@s3c_fb_pan_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid bpp\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_fb_pan_display\00", [45 x i8] zeroinitializer }, align 32
@s3c_fb_pan_display._entry_ptr = internal global ptr @s3c_fb_pan_display._entry, section ".printk_index", align 4
@s3c_fb_pan_display.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.69, ptr @.str.3, ptr @.str.27, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_pan_display.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.69, ptr @.str.3, ptr @.str.27, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_enable_irq.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.70, ptr @.str.3, ptr @.str.27, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c_fb_enable_irq\00", [46 x i8] zeroinitializer }, align 32
@s3c_fb_check_var.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_fb_check_var\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"checking parameters\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c_fb_check_var.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.71, ptr @.str.3, ptr @.str.73, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"win %d: unsupported bpp %d\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c_fb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.71, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@s3c_fb_check_var._entry_ptr = internal global ptr @s3c_fb_check_var._entry, section ".printk_index", align 4
@s3c_fb_check_var.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.71, ptr @.str.3, ptr @.str.74, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: verified parameters\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c_fb_set_par.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c_fb_set_par\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting framebuffer parameters\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_fb_set_par.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_set_par.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.75, ptr @.str.3, ptr @.str.27, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vidosd_set_alpha.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.77, ptr @.str.3, ptr @.str.27, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidosd_set_alpha\00", [47 x i8] zeroinitializer }, align 32
@vidosd_set_size.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.78, ptr @.str.3, ptr @.str.27, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidosd_set_size\00", [16 x i8] zeroinitializer }, align 32
@s3c_fb_release_win.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.79, ptr @.str.3, ptr @.str.27, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_fb_release_win\00", [45 x i8] zeroinitializer }, align 32
@s3c_fb_resume.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.80, ptr @.str.3, ptr @.str.27, i8 1, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c_fb_resume\00", [18 x i8] zeroinitializer }, align 32
@s3c_fb_resume.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.80, ptr @.str.3, ptr @.str.27, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_resume.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.80, ptr @.str.3, ptr @.str.27, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_resume.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.80, ptr @.str.3, ptr @.str.27, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3c_fb_resume.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 1, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resuming window %d\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c_fb_runtime_resume.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.82, ptr @.str.3, ptr @.str.27, i8 1, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c_fb_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@s3c_fb_data_64xx = internal global { %struct.s3c_fb_driverdata, [40 x i8] } { %struct.s3c_fb_driverdata { %struct.s3c_fb_variant { i8 0, i16 5, i32 16, i16 32, i16 384, i16 320, i16 160, i16 208, i16 256, i16 64, i16 16, [5 x i16] [i16 1024, i16 2048, i16 768, i16 800, i16 832], i8 -112 }, [5 x ptr] [ptr @s3c_fb_data_64xx_wins, ptr getelementptr (i8, ptr @s3c_fb_data_64xx_wins, i64 12), ptr getelementptr (i8, ptr @s3c_fb_data_64xx_wins, i64 24), ptr getelementptr (i8, ptr @s3c_fb_data_64xx_wins, i64 36), ptr getelementptr (i8, ptr @s3c_fb_data_64xx_wins, i64 48)] }, [40 x i8] zeroinitializer }, align 32
@s3c_fb_data_s3c2443 = internal global { %struct.s3c_fb_driverdata, [40 x i8] } { %struct.s3c_fb_driverdata { %struct.s3c_fb_variant { i8 -128, i16 2, i32 8, i16 20, i16 208, i16 176, i16 100, i16 124, i16 148, i16 40, i16 12, [5 x i16] [i16 1024, i16 2048, i16 0, i16 0, i16 0], i8 16 }, [5 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.83, ptr null, ptr null, ptr null] }, [40 x i8] zeroinitializer }, align 32
@s3c_fb_data_64xx_wins = internal global { [5 x %struct.s3c_fb_win_variant], [36 x i8] } { [5 x %struct.s3c_fb_win_variant] [%struct.s3c_fb_win_variant { i8 -128, i16 8, i16 256, i32 8552587 }, %struct.s3c_fb_win_variant { i8 -32, i16 12, i16 256, i32 159809675 }, %struct.s3c_fb_win_variant { i8 -16, i16 12, i16 16, i32 159809675 }, %struct.s3c_fb_win_variant { i8 -80, i16 0, i16 16, i32 159809547 }, %struct.s3c_fb_win_variant { i8 -80, i16 0, i16 4, i32 159809539 }], [36 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.s3c_fb_win_variant, [20 x i8] } { %struct.s3c_fb_win_variant { i8 0, i16 0, i16 256, i32 8421515 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.s3c_fb_win_variant, [20 x i8] } { %struct.s3c_fb_win_variant { i8 -96, i16 0, i16 256, i32 159809675 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 18, i64 19, i64 24, i64 25, i64 28, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 8, i64 12, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.85 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"s3c_fb_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1798, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1803, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"s3cfb_pm_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1792, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"s3c_fb_driver_ids\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1780, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1372, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1378, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1386, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1392, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1394, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1396, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1403, i32 36 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1405, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1423, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1431, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1435, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1444, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1479, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 971, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 954, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1342, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1311, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 362, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1183, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1185, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1212, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"s3c_fb_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1039, i32 28 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1254, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1264, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1268, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1274, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1278, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1088, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1093, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1104, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1110, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 748, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 707, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 803, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 430, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 472, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 892, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 934, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 246, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 252, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 329, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 333, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 498, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 414, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 399, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1152, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1580, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1615, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1650, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"s3c_fb_data_64xx\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1712, i32 33 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c"s3c_fb_data_s3c2443\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1744, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant [22 x i8] c"s3c_fb_data_64xx_wins\00", align 1
@___asan_gen_.346 = private constant [32 x i8] c"../drivers/video/fbdev/s3c-fb.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1659, i32 34 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_alias379, ptr @__UNIQUE_ID_author375, ptr @__UNIQUE_ID_description376, ptr @__UNIQUE_ID_file377, ptr @__UNIQUE_ID_license378, ptr @__exitcall_s3c_fb_driver_exit, ptr @__initcall__kmod_s3c_fb__374_1808_s3c_fb_driver_init6, ptr @s3c_fb_check_var._entry, ptr @s3c_fb_check_var._entry_ptr, ptr @s3c_fb_driver_exit, ptr @s3c_fb_pan_display._entry, ptr @s3c_fb_pan_display._entry_ptr, ptr @s3c_fb_probe._entry, ptr @s3c_fb_probe._entry.13, ptr @s3c_fb_probe._entry.17, ptr @s3c_fb_probe._entry.20, ptr @s3c_fb_probe._entry.23, ptr @s3c_fb_probe._entry.28, ptr @s3c_fb_probe._entry.6, ptr @s3c_fb_probe._entry_ptr, ptr @s3c_fb_probe._entry_ptr.15, ptr @s3c_fb_probe._entry_ptr.19, ptr @s3c_fb_probe._entry_ptr.22, ptr @s3c_fb_probe._entry_ptr.25, ptr @s3c_fb_probe._entry_ptr.30, ptr @s3c_fb_probe._entry_ptr.8, ptr @s3c_fb_probe_win._entry, ptr @s3c_fb_probe_win._entry.41, ptr @s3c_fb_probe_win._entry.44, ptr @s3c_fb_probe_win._entry.48, ptr @s3c_fb_probe_win._entry.51, ptr @s3c_fb_probe_win._entry_ptr, ptr @s3c_fb_probe_win._entry_ptr.43, ptr @s3c_fb_probe_win._entry_ptr.46, ptr @s3c_fb_probe_win._entry_ptr.50, ptr @s3c_fb_probe_win._entry_ptr.54, ptr @s3c_fb_driver, ptr @.str, ptr @s3cfb_pm_ops, ptr @s3c_fb_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @s3c_fb_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @s3c_fb_probe_win.__key, ptr @.str.39, ptr @.str.40, ptr @s3c_fb_ops, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @s3c_fb_data_64xx, ptr @s3c_fb_data_s3c2443, ptr @s3c_fb_data_64xx_wins, ptr @.compoundliteral, ptr @.compoundliteral.83], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cfb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe_win.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe_win._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe_win._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe_win._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe_win._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_probe_win._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_pan_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_data_64xx to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_data_s3c2443 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_data_64xx_wins to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_fb_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c_fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_fb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = inttoptr i32 %3 to ptr
  %nr_windows = getelementptr inbounds %struct.s3c_fb_variant, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nr_windows, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp = icmp ugt i16 %6, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.body13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe, %if.then18)) #7
          to label %do.end21 [label %if.then18], !srcloc !280

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_probe.__UNIQUE_ID_ddebug362, ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body13
  %dev22 = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %dev22, align 4
  %pdata = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %pdata, align 4
  %variant23 = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 5
  %11 = call ptr @memcpy(ptr %variant23, ptr %4, i32 36)
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @s3c_fb_probe.__key, i16 noundef signext 3) #7
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %bus_clk = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %bus_clk, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.end38

do.end35:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  %13 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end38:                                         ; preds = %do.end21
  %call.i392 = tail call i32 @clk_prepare(ptr noundef %call29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392)
  %tobool.not.i = icmp eq i32 %call.i392, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.clk_prepare_enable.exit_crit_edge

if.end38.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end38
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call29) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end38.clk_prepare_enable.exit_crit_edge
  %has_clksel = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 5, i32 12
  %16 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %has_clksel, align 2
  %17 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool42.not = icmp eq i8 %17, 0
  br i1 %tobool42.not, label %if.then43, label %clk_prepare_enable.exit.if.end56_crit_edge

clk_prepare_enable.exit.if.end56_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then43:                                        ; preds = %clk_prepare_enable.exit
  %call44 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #7
  %lcd_clk = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call44, ptr %lcd_clk, align 4
  %cmp.i393 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i393, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %19 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lcd_clk, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %err_bus_clk

if.end53:                                         ; preds = %if.then43
  %call.i394 = tail call i32 @clk_prepare(ptr noundef %call44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394)
  %tobool.not.i395 = icmp eq i32 %call.i394, 0
  br i1 %tobool.not.i395, label %if.end.i398, label %if.end53.if.end56_crit_edge

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end.i398:                                      ; preds = %if.end53
  %call1.i396 = tail call i32 @clk_enable(ptr noundef %call44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i396)
  %tobool2.not.i397 = icmp eq i32 %call1.i396, 0
  br i1 %tobool2.not.i397, label %if.end.i398.if.end56_crit_edge, label %if.then3.i399

if.end.i398.if.end56_crit_edge:                   ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then3.i399:                                    ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call44) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then3.i399, %if.end.i398.if.end56_crit_edge, %if.end53.if.end56_crit_edge, %clk_prepare_enable.exit.if.end56_crit_edge
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 4
  tail call void @pm_runtime_enable(ptr noundef %23) #7
  %call58 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call58, ptr %regs, align 4
  %cmp.i401 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call58 to i32
  br label %err_lcd_clk

if.end64:                                         ; preds = %if.end56
  %call65 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %err_lcd_clk

if.end71:                                         ; preds = %if.end64
  %26 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call65, align 4
  %irq_no = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %irq_no to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq_no, align 4
  %call.i402 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %27, ptr noundef nonnull @s3c_fb_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i402)
  %tobool74.not = icmp eq i32 %call.i402, 0
  br i1 %tobool74.not, label %do.body80, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %err_lcd_clk

do.body80:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe, %if.then92)) #7
          to label %do.end96 [label %if.then92], !srcloc !280

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_probe.__UNIQUE_ID_ddebug363, ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %30) #7
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body80
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev22, align 4
  %call.i403 = tail call i32 @__pm_runtime_resume(ptr noundef %33, i32 noundef 4) #7
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %8, align 4
  tail call void %35() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe, %if.then112)) #7
          to label %do.end116 [label %if.then112], !srcloc !280

if.then112:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  %vidcon1 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %8, i32 0, i32 4
  %36 = ptrtoint ptr %vidcon1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vidcon1, align 4
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_probe.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef %37, ptr noundef %add.ptr) #7
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %do.end96
  %vidcon1117 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %8, i32 0, i32 4
  %40 = ptrtoint ptr %vidcon1117 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vidcon1117, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr119 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %41) #7, !srcloc !281
  %44 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load123 = load i8, ptr %has_clksel, align 2
  %45 = and i8 %bf.load123, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool127.not = icmp eq i8 %45, 0
  br i1 %tobool127.not, label %do.end116.if.end157_crit_edge, label %if.then128

do.end116.if.end157_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then128:                                       ; preds = %do.end116
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %add.ptr130 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  %49 = and i32 %48, -393217
  %50 = or i32 %49, 131072
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe, %if.then147)) #7
          to label %do.end152 [label %if.then147], !srcloc !280

if.then147:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr149 = getelementptr i8, ptr %53, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_probe.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef %51, ptr noundef %add.ptr149) #7
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %if.then128
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr154 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %51) #7, !srcloc !281
  br label %if.end157

if.end157:                                        ; preds = %do.end152, %do.end116.if.end157_crit_edge
  %56 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nr_windows, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp161415.not = icmp eq i16 %57, 0
  br i1 %cmp161415.not, label %if.end157.for.end220_crit_edge, label %if.end157.for.body_crit_edge

if.end157.for.body_crit_edge:                     ; preds = %if.end157
  br label %for.body

if.end157.for.end220_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end220

for.cond163.preheader:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp167419 = icmp ugt i16 %59, 1
  br i1 %cmp167419, label %for.body169.lr.ph, label %for.cond163.preheader.for.end220_crit_edge

for.cond163.preheader.for.end220_crit_edge:       ; preds = %for.cond163.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end220

for.body169.lr.ph:                                ; preds = %for.cond163.preheader
  %keycon = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 5, i32 5
  br label %for.body169

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end157.for.body_crit_edge
  %win.0416 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end157.for.body_crit_edge ]
  tail call fastcc void @s3c_fb_clear_win(ptr noundef nonnull %call.i, i32 noundef %win.0416)
  %inc = add nuw nsw i32 %win.0416, 1
  %58 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nr_windows, align 2
  %conv160 = zext i16 %59 to i32
  %cmp161 = icmp ult i32 %inc, %conv160
  br i1 %cmp161, label %for.body.for.body_crit_edge, label %for.cond163.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body169:                                      ; preds = %do.end214.for.body169_crit_edge, %for.body169.lr.ph
  %win.1420 = phi i32 [ 0, %for.body169.lr.ph ], [ %inc219, %do.end214.for.body169_crit_edge ]
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %62 = ptrtoint ptr %keycon to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %keycon, align 4
  %conv173 = zext i16 %63 to i32
  %add.ptr174 = getelementptr i8, ptr %61, i32 %conv173
  %mul = shl i32 %win.1420, 3
  %add.ptr175 = getelementptr i8, ptr %add.ptr174, i32 %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe, %if.then189)) #7
          to label %do.end193 [label %if.then189], !srcloc !280

if.then189:                                       ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_probe.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 16777215, ptr noundef %add.ptr175) #7
  br label %do.end193

do.end193:                                        ; preds = %if.then189, %for.body169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 16777215) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe, %if.then210)) #7
          to label %do.end214 [label %if.then210], !srcloc !280

if.then210:                                       ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr211 = getelementptr i8, ptr %add.ptr175, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_probe.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 16777215, ptr noundef %add.ptr211) #7
  br label %do.end214

do.end214:                                        ; preds = %if.then210, %do.end193
  %add.ptr215 = getelementptr i8, ptr %add.ptr175, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215, i32 16777215) #7, !srcloc !281
  %inc219 = add nuw nsw i32 %win.1420, 1
  %64 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nr_windows, align 2
  %conv166 = zext i16 %65 to i32
  %sub = add nsw i32 %conv166, -1
  %cmp167 = icmp slt i32 %inc219, %sub
  br i1 %cmp167, label %do.end214.for.body169_crit_edge, label %do.end214.for.end220_crit_edge

do.end214.for.end220_crit_edge:                   ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end220

do.end214.for.body169_crit_edge:                  ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body169

for.end220:                                       ; preds = %do.end214.for.end220_crit_edge, %for.cond163.preheader.for.end220_crit_edge, %if.end157.for.end220_crit_edge
  tail call fastcc void @s3c_fb_set_rgb_timing(ptr noundef nonnull %call.i)
  %66 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nr_windows, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp225422.not = icmp eq i16 %67, 0
  br i1 %cmp225422.not, label %for.end220.for.end253_crit_edge, label %for.end220.for.body227_crit_edge

for.end220.for.body227_crit_edge:                 ; preds = %for.end220
  br label %for.body227

for.end220.for.end253_crit_edge:                  ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end253

for.body227:                                      ; preds = %for.inc251.for.body227_crit_edge, %for.end220.for.body227_crit_edge
  %win.2423 = phi i32 [ %inc252, %for.inc251.for.body227_crit_edge ], [ 0, %for.end220.for.body227_crit_edge ]
  %arrayidx = getelementptr %struct.s3c_fb_platdata, ptr %8, i32 0, i32 1, i32 %win.2423
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %tobool229.not = icmp eq ptr %69, null
  br i1 %tobool229.not, label %for.body227.for.inc251_crit_edge, label %if.end231

for.body227.for.inc251_crit_edge:                 ; preds = %for.body227
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc251

if.end231:                                        ; preds = %for.body227
  %arrayidx233 = getelementptr %struct.s3c_fb_driverdata, ptr %4, i32 0, i32 1, i32 %win.2423
  %70 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx233, align 4
  %arrayidx234 = getelementptr %struct.s3c_fb, ptr %call.i, i32 0, i32 9, i32 %win.2423
  %call235 = tail call fastcc i32 @s3c_fb_probe_win(ptr noundef nonnull %call.i, i32 noundef %win.2423, ptr noundef %71, ptr noundef %arrayidx234)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236 = icmp slt i32 %call235, 0
  br i1 %cmp236, label %for.body245.preheader, label %if.end231.for.inc251_crit_edge

if.end231.for.inc251_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc251

for.body245.preheader:                            ; preds = %if.end231
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %win.2423) #10
  br label %for.body245

for.body245:                                      ; preds = %for.body245.for.body245_crit_edge, %for.body245.preheader
  %win.3426 = phi i32 [ %dec, %for.body245.for.body245_crit_edge ], [ %win.2423, %for.body245.preheader ]
  %arrayidx247 = getelementptr %struct.s3c_fb, ptr %call.i, i32 0, i32 9, i32 %win.3426
  %72 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx247, align 4
  tail call fastcc void @s3c_fb_release_win(ptr noundef nonnull %call.i, ptr noundef %73)
  %dec = add nsw i32 %win.3426, -1
  %cmp243 = icmp sgt i32 %win.3426, 0
  br i1 %cmp243, label %for.body245.for.body245_crit_edge, label %err_pm_runtime

for.body245.for.body245_crit_edge:                ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body245

for.inc251:                                       ; preds = %if.end231.for.inc251_crit_edge, %for.body227.for.inc251_crit_edge
  %inc252 = add nuw nsw i32 %win.2423, 1
  %74 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %nr_windows, align 2
  %conv224 = zext i16 %75 to i32
  %cmp225 = icmp ult i32 %inc252, %conv224
  br i1 %cmp225, label %for.inc251.for.body227_crit_edge, label %for.inc251.for.end253_crit_edge

for.inc251.for.end253_crit_edge:                  ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end253

for.inc251.for.body227_crit_edge:                 ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body227

for.end253:                                       ; preds = %for.inc251.for.end253_crit_edge, %for.end220.for.end253_crit_edge
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %77 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev22, align 4
  %call.i405 = tail call i32 @__pm_runtime_idle(ptr noundef %78, i32 noundef 4) #7
  br label %cleanup

err_pm_runtime:                                   ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev22, align 4
  %call.i406 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 4) #7
  br label %err_lcd_clk

err_lcd_clk:                                      ; preds = %err_pm_runtime, %do.end78, %do.end70, %if.then61
  %ret.0 = phi i32 [ %25, %if.then61 ], [ %call.i402, %do.end78 ], [ %call235, %err_pm_runtime ], [ -2, %do.end70 ]
  %81 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev22, align 4
  tail call void @__pm_runtime_disable(ptr noundef %82, i1 noundef zeroext true) #7
  %83 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load261 = load i8, ptr %has_clksel, align 2
  %84 = and i8 %bf.load261, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool265.not = icmp eq i8 %84, 0
  br i1 %tobool265.not, label %if.then266, label %err_lcd_clk.err_bus_clk_crit_edge

err_lcd_clk.err_bus_clk_crit_edge:                ; preds = %err_lcd_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bus_clk

if.then266:                                       ; preds = %err_lcd_clk
  call void @__sanitizer_cov_trace_pc() #9
  %lcd_clk267 = getelementptr inbounds %struct.s3c_fb, ptr %call.i, i32 0, i32 3
  %85 = ptrtoint ptr %lcd_clk267 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lcd_clk267, align 4
  tail call void @clk_disable(ptr noundef %86) #7
  tail call void @clk_unprepare(ptr noundef %86) #7
  br label %err_bus_clk

err_bus_clk:                                      ; preds = %if.then266, %err_lcd_clk.err_bus_clk_crit_edge, %do.end50
  %ret.1 = phi i32 [ %ret.0, %err_lcd_clk.err_bus_clk_crit_edge ], [ %ret.0, %if.then266 ], [ %21, %do.end50 ]
  %87 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %88) #7
  tail call void @clk_unprepare(ptr noundef %88) #7
  br label %cleanup

cleanup:                                          ; preds = %err_bus_clk, %for.end253, %do.end35, %if.end8.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %15, %do.end35 ], [ %ret.1, %err_bus_clk ], [ 0, %for.end253 ], [ -22, %do.end7 ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %arrayidx = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_fb_release_win(ptr noundef %1, ptr noundef nonnull %5)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_fb_release_win(ptr noundef %1, ptr noundef nonnull %7)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_fb_release_win(ptr noundef %1, ptr noundef nonnull %9)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_fb_release_win(ptr noundef %1, ptr noundef nonnull %11)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %13, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s3c_fb_release_win(ptr noundef %1, ptr noundef nonnull %13)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %has_clksel = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %has_clksel, align 2
  %15 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.then5, label %for.inc.4.if.end6_crit_edge

for.inc.4.if.end6_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %lcd_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lcd_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.inc.4.if.end6_crit_edge
  %bus_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.s3c_fb, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #7
  %add.ptr = getelementptr i8, ptr %1, i32 308
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body3

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_irq.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_irq, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !280

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_irq.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31, i32 noundef 2, ptr noundef %add.ptr) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2) #7, !srcloc !281
  %vsync_info = getelementptr inbounds %struct.s3c_fb, ptr %dev_id, i32 0, i32 12
  %count = getelementptr inbounds %struct.s3c_fb, ptr %dev_id, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %count, align 4
  tail call void @__wake_up(ptr noundef %vsync_info, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1, align 4
  %irq_flags.i = getelementptr inbounds %struct.s3c_fb, ptr %dev_id, i32 0, i32 11
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %irq_flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end15.s3c_fb_disable_irq.exit_crit_edge, label %if.then.i

if.end15.s3c_fb_disable_irq.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_fb_disable_irq.exit

if.then.i:                                        ; preds = %if.end15
  %add.ptr.i = getelementptr i8, ptr %7, i32 304
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !285
  %9 = and i32 %8, -17825793
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_disable_irq.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_irq, %if.then11.i)) #7
          to label %do.end.i [label %if.then11.i], !srcloc !280

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_disable_irq.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32, i32 noundef %10, ptr noundef %add.ptr.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %if.then.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !281
  br label %s3c_fb_disable_irq.exit

s3c_fb_disable_irq.exit:                          ; preds = %do.end.i, %if.end15.s3c_fb_disable_irq.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_fb_clear_win(ptr nocapture noundef readonly %sfb, i32 noundef %win) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_clear_win, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wincon = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %wincon to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wincon, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %mul = shl i32 %win, 2
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_clear_win.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef %add.ptr5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wincon7 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %wincon7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wincon7, align 4
  %conv8 = zext i16 %5 to i32
  %add.ptr9 = getelementptr i8, ptr %1, i32 %conv8
  %mul10 = shl i32 %win, 2
  %add.ptr11 = getelementptr i8, ptr %add.ptr9, i32 %mul10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_clear_win, %if.then27)) #7
          to label %do.end37 [label %if.then27], !srcloc !280

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %osd = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 9
  %6 = ptrtoint ptr %osd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %osd, align 4
  %conv29 = zext i16 %7 to i32
  %osd_stride = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 10
  %8 = ptrtoint ptr %osd_stride to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %osd_stride, align 2
  %conv31 = zext i16 %9 to i32
  %mul32 = mul i32 %conv31, %win
  %add = add i32 %mul32, %conv29
  %add.ptr34 = getelementptr i8, ptr %1, i32 %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_clear_win.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef %add.ptr34) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then27, %do.end
  %osd39 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 9
  %10 = ptrtoint ptr %osd39 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %osd39, align 4
  %conv40 = zext i16 %11 to i32
  %osd_stride42 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 10
  %12 = ptrtoint ptr %osd_stride42 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %osd_stride42, align 2
  %conv43 = zext i16 %13 to i32
  %mul44 = mul i32 %conv43, %win
  %add45 = add i32 %mul44, %conv40
  %add.ptr47 = getelementptr i8, ptr %1, i32 %add45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_clear_win, %if.then63)) #7
          to label %do.end76 [label %if.then63], !srcloc !280

if.then63:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %osd39 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %osd39, align 4
  %conv66 = zext i16 %15 to i32
  %16 = ptrtoint ptr %osd_stride42 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %osd_stride42, align 2
  %conv69 = zext i16 %17 to i32
  %mul70 = mul i32 %conv69, %win
  %add71 = add nuw nsw i32 %conv66, 4
  %add72 = add i32 %add71, %mul70
  %add.ptr73 = getelementptr i8, ptr %1, i32 %add72
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_clear_win.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef %add.ptr73) #7
  br label %do.end76

do.end76:                                         ; preds = %if.then63, %do.end37
  %18 = ptrtoint ptr %osd39 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %osd39, align 4
  %conv79 = zext i16 %19 to i32
  %20 = ptrtoint ptr %osd_stride42 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %osd_stride42, align 2
  %conv82 = zext i16 %21 to i32
  %mul83 = mul i32 %conv82, %win
  %add84 = add nuw nsw i32 %conv79, 4
  %add85 = add i32 %add84, %mul83
  %add.ptr86 = getelementptr i8, ptr %1, i32 %add85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 0) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_clear_win, %if.then102)) #7
          to label %do.end115 [label %if.then102], !srcloc !280

if.then102:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %osd39 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %osd39, align 4
  %conv105 = zext i16 %23 to i32
  %24 = ptrtoint ptr %osd_stride42 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %osd_stride42, align 2
  %conv108 = zext i16 %25 to i32
  %mul109 = mul i32 %conv108, %win
  %add110 = add nuw nsw i32 %conv105, 8
  %add111 = add i32 %add110, %mul109
  %add.ptr112 = getelementptr i8, ptr %1, i32 %add111
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_clear_win.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef %add.ptr112) #7
  br label %do.end115

do.end115:                                        ; preds = %if.then102, %do.end76
  %26 = ptrtoint ptr %osd39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %osd39, align 4
  %conv118 = zext i16 %27 to i32
  %28 = ptrtoint ptr %osd_stride42 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %osd_stride42, align 2
  %conv121 = zext i16 %29 to i32
  %mul122 = mul i32 %conv121, %win
  %add123 = add nuw nsw i32 %conv118, 8
  %add124 = add i32 %add123, %mul122
  %add.ptr125 = getelementptr i8, ptr %1, i32 %add124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 0) #7, !srcloc !281
  %has_shadowcon = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 12
  %30 = ptrtoint ptr %has_shadowcon to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %has_shadowcon, align 2
  %31 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool129.not = icmp eq i8 %31, 0
  br i1 %tobool129.not, label %do.end115.if.end164_crit_edge, label %if.then130

do.end115.if.end164_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then130:                                       ; preds = %do.end115
  %32 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1, align 4
  %add.ptr132 = getelementptr i8, ptr %33, i32 52
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #7, !srcloc !282
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !286
  %add136 = add i32 %win, 10
  %shl = shl nuw i32 1, %add136
  %shl137 = shl nuw i32 1, %win
  %or = or i32 %shl, %shl137
  %add138 = add i32 %win, 5
  %shl139 = shl nuw i32 1, %add138
  %or140 = or i32 %or, %shl139
  %neg = xor i32 %or140, -1
  %and = and i32 %35, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_clear_win, %if.then154)) #7
          to label %do.end159 [label %if.then154], !srcloc !280

if.then154:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs1, align 4
  %add.ptr156 = getelementptr i8, ptr %37, i32 52
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_clear_win.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef %and, ptr noundef %add.ptr156) #7
  br label %do.end159

do.end159:                                        ; preds = %if.then154, %if.then130
  %38 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1, align 4
  %add.ptr161 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %and) #7, !srcloc !281
  br label %if.end164

if.end164:                                        ; preds = %do.end159, %do.end115.if.end164_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_fb_set_rgb_timing(ptr nocapture noundef readonly %sfb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 8
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %vtiming = getelementptr inbounds %struct.s3c_fb_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vtiming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vtiming, align 4
  %regs1 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 4
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else188.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else188.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsync_len.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %upper_margin.i, align 4
  %add3.i = add i32 %9, %11
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lower_margin.i, align 4
  %add4.i = add i32 %add3.i, %13
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres.i, align 4
  %add5.i = add i32 %add4.i, %15
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hsync_len.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %left_margin.i, align 4
  %add.i = add i32 %17, %19
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %right_margin.i, align 4
  %add1.i = add i32 %add.i, %21
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xres.i, align 4
  %add2.i = add i32 %add1.i, %23
  %mul.i = mul i32 %add5.i, %add2.i
  %refresh.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %refresh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %..i = select i1 %tobool.not.i, i32 60, i32 %25
  %mul6.i = mul i32 %mul.i, %..i
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6.i, i64 1000000000000) #11, !srcloc !287
  %asmresult1.i.i = extractvalue { i64, i64 } %26, 1
  %extract.t195 = trunc i64 %asmresult1.i.i to i32
  %27 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %extract.t195, ptr %pixclock, align 4
  br label %if.end

if.end:                                           ; preds = %if.else188.i, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixclock, align 4
  %has_clksel.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 12
  %30 = ptrtoint ptr %has_clksel.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %has_clksel.i, align 2
  %31 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i184 = icmp eq i8 %31, 0
  %lcd_clk.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 3
  %bus_clk.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 2
  %lcd_clk.sink.i = select i1 %tobool.not.i184, ptr %lcd_clk.i, ptr %bus_clk.i
  %32 = ptrtoint ptr %lcd_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lcd_clk.sink.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %33) #7
  %conv.i = zext i32 %call1.i to i64
  %conv2.i = zext i32 %29 to i64
  %mul.i185 = mul nuw i64 %conv.i, %conv2.i
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i185, i32 0) #11, !srcloc !288
  %asmresult.i.i186 = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i187 = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i185, i64 %asmresult.i.i186, i32 %asmresult4.i.i187) #11, !srcloc !289
  %asmresult10.i.i188 = extractvalue { i64, i32 } %35, 0
  %extract300.i = lshr i64 %asmresult10.i.i188, 29
  %extract.t301.i = trunc i64 %extract300.i to i32
  %div192.i = udiv i32 %extract.t301.i, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_calc_pixclk.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_rgb_timing, %if.then202.i)) #7
          to label %s3c_fb_calc_pixclk.exit [label %if.then202.i], !srcloc !280

if.then202.i:                                     ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %extract.t301.i)
  %38 = icmp ult i32 %extract.t301.i, 1000
  br i1 %38, label %if.then202.i.cond.end207.i_crit_edge, label %cond.true204.i

if.then202.i.cond.end207.i_crit_edge:             ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end207.i

cond.true204.i:                                   ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #9
  %div205.i = udiv i32 %call1.i, %div192.i
  br label %cond.end207.i

cond.end207.i:                                    ; preds = %cond.true204.i, %if.then202.i.cond.end207.i_crit_edge
  %cond208.i = phi i32 [ %div205.i, %cond.true204.i ], [ %call1.i, %if.then202.i.cond.end207.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_calc_pixclk.__UNIQUE_ID_ddebug311, ptr noundef %37, ptr noundef nonnull @.str.36, i32 noundef %29, i32 noundef %call1.i, i32 noundef %div192.i, i32 noundef %cond208.i) #7
  br label %s3c_fb_calc_pixclk.exit

s3c_fb_calc_pixclk.exit:                          ; preds = %cond.end207.i, %if.end
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 4
  %vidcon0 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %vidcon0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vidcon0, align 4
  %and = and i32 %42, -16337
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %extract.t301.i)
  %cmp = icmp ugt i32 %extract.t301.i, 1999
  %sub = shl nuw nsw i32 %div192.i, 6
  %or = add nsw i32 %sub, -48
  %or5 = select i1 %cmp, i32 %or, i32 0
  %data.0 = or i32 %and, %or5
  %variant = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5
  %43 = ptrtoint ptr %variant to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %variant, align 4
  %or10 = or i32 %data.0, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool8.not193 = icmp slt i8 %bf.load, 0
  %data.1 = select i1 %tobool8.not193, i32 %or10, i32 %data.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_rgb_timing, %if.then17)) #7
          to label %do.end [label %if.then17], !srcloc !280

if.then17:                                        ; preds = %s3c_fb_calc_pixclk.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i32 noundef %data.1, ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then17, %s3c_fb_calc_pixclk.exit
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %data.1) #7, !srcloc !281
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 7
  %44 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %upper_margin, align 4
  %sub22 = shl i32 %45, 16
  %shl23 = add i32 %sub22, -65536
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 8
  %46 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lower_margin, align 4
  %sub24 = shl i32 %47, 8
  %shl25 = add i32 %sub24, -256
  %or26 = or i32 %shl25, %shl23
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 10
  %48 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vsync_len, align 4
  %sub27 = add i32 %49, -1
  %or29 = or i32 %or26, %sub27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_rgb_timing, %if.then43)) #7
          to label %do.end48 [label %if.then43], !srcloc !280

if.then43:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %vidtcon = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %vidtcon to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vidtcon, align 4
  %add.ptr45 = getelementptr i8, ptr %5, i32 %51
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i32 noundef %or29, ptr noundef %add.ptr45) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.end
  %vidtcon50 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %vidtcon50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vidtcon50, align 4
  %add.ptr51 = getelementptr i8, ptr %5, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %or29) #7, !srcloc !281
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 5
  %54 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %left_margin, align 4
  %sub54 = shl i32 %55, 16
  %shl55 = add i32 %sub54, -65536
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %right_margin, align 4
  %sub56 = shl i32 %57, 8
  %shl57 = add i32 %sub56, -256
  %or58 = or i32 %shl57, %shl55
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 9
  %58 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hsync_len, align 4
  %sub59 = add i32 %59, -1
  %or61 = or i32 %or58, %sub59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_rgb_timing, %if.then75)) #7
          to label %do.end82 [label %if.then75], !srcloc !280

if.then75:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %vidtcon50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vidtcon50, align 4
  %add.ptr78 = getelementptr i8, ptr %5, i32 %61
  %add.ptr79 = getelementptr i8, ptr %add.ptr78, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i32 noundef %or61, ptr noundef %add.ptr79) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then75, %do.end48
  %62 = ptrtoint ptr %vidtcon50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vidtcon50, align 4
  %add.ptr85 = getelementptr i8, ptr %5, i32 %63
  %add.ptr86 = getelementptr i8, ptr %add.ptr85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %or61) #7, !srcloc !281
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %yres, align 4
  %sub89 = add i32 %65, -1
  %and90 = shl i32 %sub89, 11
  %shl91 = and i32 %and90, 4192256
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 2
  %66 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xres, align 4
  %sub92 = add i32 %67, -1
  %and93 = and i32 %sub92, 2047
  %or95 = or i32 %shl91, %and93
  %68 = shl i32 %sub89, 12
  %shl99 = and i32 %68, 8388608
  %or100 = or i32 %or95, %shl99
  %69 = shl i32 %sub92, 11
  %shl105 = and i32 %69, 4194304
  %or106 = or i32 %or100, %shl105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_rgb_timing, %if.then120)) #7
          to label %do.end127 [label %if.then120], !srcloc !280

if.then120:                                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %vidtcon50 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vidtcon50, align 4
  %add.ptr123 = getelementptr i8, ptr %5, i32 %71
  %add.ptr124 = getelementptr i8, ptr %add.ptr123, i32 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i32 noundef %or106, ptr noundef %add.ptr124) #7
  br label %do.end127

do.end127:                                        ; preds = %if.then120, %do.end82
  %72 = ptrtoint ptr %vidtcon50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vidtcon50, align 4
  %add.ptr130 = getelementptr i8, ptr %5, i32 %73
  %add.ptr131 = getelementptr i8, ptr %add.ptr130, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %or106) #7, !srcloc !281
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c_fb_probe_win(ptr noundef %sfb, i32 noundef %win_no, ptr noundef %variant, ptr nocapture noundef writeonly %res) unnamed_addr #2 align 64 {
entry:
  %initmode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %initmode) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe_win.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe_win, %if.then)) #7
          to label %do.body3 [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_probe_win.__UNIQUE_ID_ddebug351, ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %win_no, ptr noundef %variant) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  %vsync_info = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %vsync_info, ptr noundef nonnull @.str.39, ptr noundef nonnull @s3c_fb_probe_win.__key) #7
  %palette_sz = getelementptr inbounds %struct.s3c_fb_win_variant, ptr %variant, i32 0, i32 2
  %2 = ptrtoint ptr %palette_sz to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %palette_sz, align 4
  %conv = zext i16 %3 to i32
  %mul6 = shl nuw nsw i32 %conv, 4
  %add = add nuw nsw i32 %mul6, 144
  %dev7 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  %call8 = tail call ptr @framebuffer_alloc(i32 noundef %add, ptr noundef %5) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.body3.cleanup_crit_edge, label %if.end11

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.body3
  %pdata = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 8
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %arrayidx = getelementptr %struct.s3c_fb_platdata, ptr %7, i32 0, i32 1, i32 %win_no
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %vtiming = getelementptr inbounds %struct.s3c_fb_platdata, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %vtiming to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vtiming, align 4
  %12 = call ptr @memcpy(ptr %initmode, ptr %11, i32 56)
  %max_bpp = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %max_bpp to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_bpp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp = icmp eq i16 %14, 0
  br i1 %cmp, label %do.end31, label %if.end11.if.end37_crit_edge, !prof !290

if.end11.if.end37_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end31:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %if.end11.if.end37_crit_edge
  %xres = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %xres to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %xres, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp47 = icmp eq i16 %16, 0
  br i1 %cmp47, label %do.end64, label %if.end37.if.end70_crit_edge, !prof !290

if.end37.if.end70_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

do.end64:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1198, i32 noundef 9, ptr noundef null) #7
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %if.end37.if.end70_crit_edge
  %yres = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %yres to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %yres, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp80 = icmp eq i16 %18, 0
  br i1 %cmp80, label %do.end97, label %if.end70.if.end103_crit_edge, !prof !290

if.end70.if.end103_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

do.end97:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1199, i32 noundef 9, ptr noundef null) #7
  br label %if.end103

if.end103:                                        ; preds = %do.end97, %if.end70.if.end103_crit_edge
  %par = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 30
  %19 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %par, align 4
  %21 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %res, align 4
  %variant111 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %variant111, ptr %variant, i32 12)
  %fbinfo112 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %fbinfo112 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8, ptr %fbinfo112, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sfb, ptr %parent, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %9, ptr %20, align 4
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 7
  %26 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %win_no, ptr %index, align 4
  %add.ptr = getelementptr %struct.s3c_fb_win, ptr %20, i32 1
  %palette_buffer = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 5
  %27 = ptrtoint ptr %palette_buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %palette_buffer, align 4
  %call114 = tail call fastcc i32 @s3c_fb_alloc_memory(ptr noundef %sfb, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end121, label %do.end119

do.end119:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end121:                                        ; preds = %if.end103
  %30 = ptrtoint ptr %variant111 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %variant111, align 4
  %31 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool123.not = icmp eq i8 %31, 0
  %.sink312 = select i1 %tobool123.not, i32 16, i32 11
  %.sink311 = select i1 %tobool123.not, i32 8, i32 5
  %.sink309 = select i1 %tobool123.not, i32 8, i32 6
  %32 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink312, ptr %32, align 4
  %34 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink311, ptr %34, align 4
  %36 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink311, ptr %36, align 4
  %38 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 3, i32 1, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink309, ptr %38, align 4
  %40 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %42 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 3, i32 2, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink311, ptr %42, align 4
  %44 = ptrtoint ptr %xres to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %xres, align 2
  %conv157 = zext i16 %45 to i32
  %xres158 = getelementptr inbounds %struct.fb_videomode, ptr %initmode, i32 0, i32 2
  %46 = ptrtoint ptr %xres158 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv157, ptr %xres158, align 4
  %47 = ptrtoint ptr %yres to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %yres, align 2
  %conv160 = zext i16 %48 to i32
  %yres161 = getelementptr inbounds %struct.fb_videomode, ptr %initmode, i32 0, i32 3
  %49 = ptrtoint ptr %yres161 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv160, ptr %yres161, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 6
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %initmode) #7
  %fix = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 7
  %type = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %type, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 7, i32 12
  %51 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %accel, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 6, i32 13
  %52 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %activate, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 6, i32 25
  %53 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %vmode, align 4
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %9, align 2
  %conv165 = zext i16 %55 to i32
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 6, i32 6
  %56 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv165, ptr %bits_per_pixel, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 20
  %57 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @s3c_fb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 2
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %flags, align 4
  %pseudo_palette = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 6
  %pseudo_palette167 = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 27
  %59 = ptrtoint ptr %pseudo_palette167 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pseudo_palette, ptr %pseudo_palette167, align 4
  %call169 = call i32 @s3c_fb_check_var(ptr noundef %var, ptr noundef nonnull %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %do.end175, label %if.end177

do.end175:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end177:                                        ; preds = %if.end121
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call8, i32 0, i32 12
  %palette_sz179 = getelementptr inbounds %struct.s3c_fb_win, ptr %20, i32 0, i32 4, i32 2
  %62 = ptrtoint ptr %palette_sz179 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %palette_sz179, align 4
  %conv180 = zext i16 %63 to i32
  %call181 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef %conv180, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.then184, label %do.end190

if.then184:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %call186 = call i32 @fb_set_cmap(ptr noundef %cmap, ptr noundef nonnull %call8) #7
  br label %if.end192

do.end190:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.45) #10
  br label %if.end192

if.end192:                                        ; preds = %do.end190, %if.then184
  %call193 = call i32 @s3c_fb_set_par(ptr noundef nonnull %call8)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_probe_win.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_probe_win, %if.then206)) #7
          to label %do.end210 [label %if.then206], !srcloc !280

if.then206:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_probe_win.__UNIQUE_ID_ddebug352, ptr noundef %67, ptr noundef nonnull @.str.47) #7
  br label %do.end210

do.end210:                                        ; preds = %if.then206, %if.end192
  %call211 = call i32 @register_framebuffer(ptr noundef nonnull %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 0
  %68 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev7, align 4
  br i1 %cmp212, label %do.end217, label %do.end222

do.end217:                                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.49) #10
  br label %cleanup

do.end222:                                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.52, i32 noundef %win_no, ptr noundef %fix) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end222, %do.end217, %do.end175, %do.end119, %do.body3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call114, %do.end119 ], [ %call169, %do.end175 ], [ %call211, %do.end217 ], [ 0, %do.end222 ], [ -12, %do.body3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %initmode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_fb_release_win(ptr nocapture noundef readonly %sfb, ptr nocapture noundef readonly %win) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fbinfo = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 2
  %0 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbinfo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %entry
  %has_shadowcon = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %has_shadowcon to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_shadowcon, align 2
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then.if.end21_crit_edge, label %if.then2

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then2:                                         ; preds = %if.then
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !282
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !291
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 7
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %9
  %add = add i32 %9, 5
  %shl5 = shl nuw i32 1, %add
  %10 = or i32 %shl5, %shl
  %11 = xor i32 %10, -1
  %and7 = and i32 %7, %11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_release_win.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_release_win, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !280

if.then14:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 52
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_release_win.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.79, i32 noundef %and7, ptr noundef %add.ptr16) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.then2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %and7) #7, !srcloc !281
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.then.if.end21_crit_edge
  %16 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fbinfo, align 4
  tail call void @unregister_framebuffer(ptr noundef %17) #7
  %18 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fbinfo, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %cmap = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  %22 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fbinfo, align 4
  %24 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 25
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end28.s3c_fb_free_memory.exit_crit_edge, label %if.then.i

if.end28.s3c_fb_free_memory.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_fb_free_memory.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smem_len.i, align 4
  %add.i = add i32 %30, 4095
  %and.i = and i32 %add.i, -4096
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %smem_start.i, align 4
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef %and.i, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 4) #7
  br label %s3c_fb_free_memory.exit

s3c_fb_free_memory.exit:                          ; preds = %if.then.i, %if.end28.s3c_fb_free_memory.exit_crit_edge
  %33 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fbinfo, align 4
  tail call void @framebuffer_release(ptr noundef %34) #7
  br label %if.end30

if.end30:                                         ; preds = %s3c_fb_free_memory.exit, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c_fb_alloc_memory(ptr nocapture noundef readonly %sfb, ptr nocapture noundef readonly %win) unnamed_addr #2 align 64 {
entry:
  %map_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %win, align 4
  %fbinfo = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 2
  %2 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbinfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_dma) #7
  %4 = ptrtoint ptr %map_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %map_dma, align 4, !annotation !292
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_alloc_memory, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug346, ptr noundef %6, ptr noundef nonnull @.str.56) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xres = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %xres to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %xres, align 2
  %conv = zext i16 %8 to i32
  %yres = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %yres to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %yres, align 2
  %conv4 = zext i16 %10 to i32
  %mul = mul nuw i32 %conv4, %conv
  %virtual_x = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %virtual_x to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %virtual_x, align 2
  %conv5 = zext i16 %12 to i32
  %virtual_y = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %virtual_y to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %virtual_y, align 2
  %conv6 = zext i16 %14 to i32
  %mul7 = mul nuw i32 %conv6, %conv5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_alloc_memory, %if.then20)) #7
          to label %do.end32 [label %if.then20], !srcloc !280

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %15 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev21, align 4
  %17 = ptrtoint ptr %xres to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xres, align 2
  %conv23 = zext i16 %18 to i32
  %19 = ptrtoint ptr %yres to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %yres, align 2
  %conv25 = zext i16 %20 to i32
  %21 = ptrtoint ptr %virtual_x to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %virtual_x, align 2
  %conv27 = zext i16 %22 to i32
  %23 = ptrtoint ptr %virtual_y to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %virtual_y, align 2
  %conv29 = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug347, ptr noundef %16, ptr noundef nonnull @.str.57, i32 noundef %mul, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %mul7, i32 noundef %conv27, i32 noundef %conv29) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then20, %do.end
  %25 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %mul7)
  %max_bpp = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %max_bpp to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_bpp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %27)
  %cmp35 = icmp ugt i16 %27, 16
  %narrow = select i1 %cmp35, i16 32, i16 %27
  %cond42 = zext i16 %narrow to i32
  %mul43 = mul i32 %25, %cond42
  %div118 = lshr i32 %mul43, 3
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div118, ptr %smem_len, align 4
  %add = add nuw nsw i32 %div118, 4095
  %and = and i32 %add, 1073737728
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_alloc_memory, %if.then56)) #7
          to label %do.end60 [label %if.then56], !srcloc !280

if.then56:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %29 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug348, ptr noundef %30, ptr noundef nonnull @.str.58, i32 noundef %and) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.end32
  %dev61 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %31 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev61, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %32, i32 noundef %and, ptr noundef nonnull %map_dma, i32 noundef 3264, i32 noundef 4) #7
  %33 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %33, align 4
  %tobool63.not = icmp eq ptr %call.i, null
  br i1 %tobool63.not, label %do.end60.cleanup_crit_edge, label %do.body66

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body66:                                        ; preds = %do.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_alloc_memory, %if.then78)) #7
          to label %do.end82 [label %if.then78], !srcloc !280

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev61, align 4
  %37 = ptrtoint ptr %map_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %map_dma, align 4
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug349, ptr noundef %36, ptr noundef nonnull @.str.59, i32 noundef %38, ptr noundef %40) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body66
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %33, align 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 %and)
  %44 = ptrtoint ptr %map_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %map_dma, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %smem_start, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %do.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end82 ], [ -12, %do.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_dma) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_check_var.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_check_var, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_check_var.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.72) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9)
  %11 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %12 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %13, i32 %15)
  %17 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %yres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 4
  %valid_bpp.i = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %valid_bpp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %valid_bpp.i, align 4
  %sub.i = add i32 %19, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body14, label %if.end32

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_check_var.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_check_var, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !280

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 4
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_check_var.__UNIQUE_ID_ddebug309, ptr noundef %23, ptr noundef nonnull @.str.73, i32 noundef %25, i32 noundef %27) #7
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %28 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %transp, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %length, align 4
  %30 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end116 [
    i32 1, label %if.end32.sw.bb_crit_edge
    i32 2, label %if.end32.sw.bb_crit_edge209
    i32 4, label %if.end32.sw.bb_crit_edge210
    i32 8, label %if.end32.sw.bb_crit_edge211
    i32 19, label %sw.bb62
    i32 18, label %if.end32.sw.bb67_crit_edge
    i32 16, label %sw.bb81
    i32 32, label %if.end32.sw.bb94_crit_edge
    i32 28, label %if.end32.sw.bb94_crit_edge212
    i32 25, label %if.end32.sw.bb94_crit_edge213
    i32 24, label %if.end32.sw.bb100_crit_edge
  ]

if.end32.sw.bb100_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb100

if.end32.sw.bb94_crit_edge213:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb94

if.end32.sw.bb94_crit_edge212:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb94

if.end32.sw.bb94_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb94

if.end32.sw.bb67_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.end32.sw.bb_crit_edge211:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end32.sw.bb_crit_edge210:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end32.sw.bb_crit_edge209:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge209, %if.end32.sw.bb_crit_edge210, %if.end32.sw.bb_crit_edge211
  %index35 = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %index35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index35, align 4
  %arrayidx = getelementptr %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 11, i32 %32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp36.not = icmp eq i16 %34, 0
  %red52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  br i1 %cmp36.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %red52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %red52, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %36 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %green, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %37 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue, align 4
  %length43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %length43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %length43, align 4
  %length45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %length45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %length45, align 4
  %length47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %length47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %length47, align 4
  %41 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %transp, align 4
  %42 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %length, align 4
  br label %do.body118

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %red52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %red52, align 4
  %length56 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %length56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %19, ptr %length56, align 4
  %green57 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %45 = call ptr @memcpy(ptr %green57, ptr %red52, i32 12)
  %blue59 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %46 = call ptr @memcpy(ptr %blue59, ptr %red52, i32 12)
  br label %do.body118

sw.bb62:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 18, ptr %transp, align 4
  %48 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %length, align 4
  br label %sw.bb67

sw.bb67:                                          ; preds = %sw.bb62, %if.end32.sw.bb67_crit_edge
  %49 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %bits_per_pixel, align 4
  %red69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %50 = ptrtoint ptr %red69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12, ptr %red69, align 4
  %green71 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %51 = ptrtoint ptr %green71 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %green71, align 4
  %blue73 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %52 = ptrtoint ptr %blue73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %blue73, align 4
  %length76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %length76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 6, ptr %length76, align 4
  %length78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %length78 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %length78, align 4
  %length80 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %length80 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 6, ptr %length80, align 4
  br label %do.body118

sw.bb81:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %red82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %56 = ptrtoint ptr %red82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 11, ptr %red82, align 4
  %green84 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %57 = ptrtoint ptr %green84 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 5, ptr %green84, align 4
  %blue86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %58 = ptrtoint ptr %blue86 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %blue86, align 4
  %length89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %length89 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %length89, align 4
  %length91 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %length91 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %length91, align 4
  %length93 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %length93 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5, ptr %length93, align 4
  br label %do.body118

sw.bb94:                                          ; preds = %if.end32.sw.bb94_crit_edge, %if.end32.sw.bb94_crit_edge212, %if.end32.sw.bb94_crit_edge213
  %sub = add nsw i32 %19, -24
  %62 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub, ptr %length, align 4
  %63 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 24, ptr %transp, align 4
  br label %sw.bb100

sw.bb100:                                         ; preds = %sw.bb94, %if.end32.sw.bb100_crit_edge
  %64 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %bits_per_pixel, align 4
  %red102 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %65 = ptrtoint ptr %red102 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 16, ptr %red102, align 4
  %length105 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %66 = ptrtoint ptr %length105 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %length105, align 4
  %green106 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %67 = ptrtoint ptr %green106 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %green106, align 4
  %length109 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %length109 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8, ptr %length109, align 4
  %blue110 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %69 = ptrtoint ptr %blue110 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %blue110, align 4
  %length113 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %length113 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %length113, align 4
  br label %do.body118

do.end116:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %dev117 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %71 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.68) #10
  br label %cleanup

do.body118:                                       ; preds = %sw.bb100, %sw.bb81, %sw.bb67, %if.else, %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_check_var.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_check_var, %if.then130)) #7
          to label %cleanup [label %if.then130], !srcloc !280

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  %dev131 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev131, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_check_var.__UNIQUE_ID_ddebug310, ptr noundef %74, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.71) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %do.body118, %do.end116, %if.then26, %do.body14
  %retval.0 = phi i32 [ -22, %do.end116 ], [ -22, %if.then26 ], [ 0, %if.then130 ], [ -22, %do.body14 ], [ 0, %do.body118 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %regs2 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 4
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug319, ptr noundef %9, ptr noundef nonnull @.str.76) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #7
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext true)
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %13, label %sw.default [
    i32 32, label %do.end.sw.bb_crit_edge
    i32 24, label %do.end.sw.bb_crit_edge809
    i32 16, label %do.end.sw.bb_crit_edge810
    i32 12, label %do.end.sw.bb_crit_edge811
    i32 8, label %sw.bb7
    i32 1, label %sw.bb15
  ]

do.end.sw.bb_crit_edge811:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge810:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge809:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge809, %do.end.sw.bb_crit_edge810, %do.end.sw.bb_crit_edge811
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %15 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %visual, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  %palette_sz = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %palette_sz to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %palette_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %17)
  %cmp = icmp ugt i16 %17, 255
  %visual11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %visual11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %visual11, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %visual11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %visual11, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %visual17 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %visual17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %visual17, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %visual19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %visual19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %visual19, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %if.else, %if.then9, %sw.bb
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %23, %13
  %div720 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %24 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div720, ptr %line_length, align 4
  %25 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %var1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %26)
  %cmp25 = icmp ugt i32 %23, %26
  %conv27 = zext i1 %cmp25 to i16
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %27 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv27, ptr %xpanstep, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp31 = icmp ugt i32 %29, %31
  %conv34 = zext i1 %cmp31 to i16
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %32 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv34, ptr %ypanstep, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then49)) #7
          to label %do.end53 [label %if.then49], !srcloc !280

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %mul50 = shl i32 %7, 2
  %add = add i32 %mul50, 32
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %add.ptr) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %sw.epilog
  %mul54 = shl i32 %7, 2
  %add55 = add i32 %mul54, 32
  %add.ptr56 = getelementptr i8, ptr %5, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #7, !srcloc !281
  %output_on = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %output_on to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %output_on, align 1, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool59.not = icmp eq i8 %34, 0
  br i1 %tobool59.not, label %if.then60, label %do.end53.if.end61_crit_edge

do.end53.if.end61_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %do.end53
  %35 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs2, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  %38 = ptrtoint ptr %output_on to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %output_on, align 1, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i = icmp eq i8 %39, 0
  br i1 %tobool2.not.i, label %if.then.i, label %if.then60.if.then5.i_crit_edge

if.then60.if.then5.i_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then.i:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev5, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #7
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i, %if.then60.if.then5.i_crit_edge
  %42 = or i32 %37, 50331648
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_enable.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then18.i)) #7
          to label %s3c_fb_enable.exit [label %if.then18.i], !srcloc !280

if.then18.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_enable.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67, i32 noundef %43, ptr noundef %45) #7
  br label %s3c_fb_enable.exit

s3c_fb_enable.exit:                               ; preds = %if.then18.i, %if.then5.i
  %46 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %43) #7, !srcloc !281
  %48 = ptrtoint ptr %output_on to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %output_on, align 1
  br label %if.end61

if.end61:                                         ; preds = %s3c_fb_enable.exit, %do.end53.if.end61_crit_edge
  %mul62 = shl i32 %7, 3
  %add.ptr63 = getelementptr i8, ptr %5, i32 %mul62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then77)) #7
          to label %do.end84 [label %if.then77], !srcloc !280

if.then77:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %smem_start, align 4
  %buf_start = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 6
  %51 = ptrtoint ptr %buf_start to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %buf_start, align 2
  %conv80 = zext i16 %52 to i32
  %add.ptr81 = getelementptr i8, ptr %add.ptr63, i32 %conv80
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %50, ptr noundef %add.ptr81) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %if.end61
  %smem_start86 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %smem_start86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %smem_start86, align 4
  %buf_start88 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 6
  %55 = ptrtoint ptr %buf_start88 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %buf_start88, align 2
  %conv89 = zext i16 %56 to i32
  %add.ptr90 = getelementptr i8, ptr %add.ptr63, i32 %conv89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %54) #7, !srcloc !281
  %57 = ptrtoint ptr %smem_start86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %smem_start86, align 4
  %59 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %line_length, align 4
  %61 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %yres, align 4
  %mul98 = mul i32 %62, %60
  %add99 = add i32 %mul98, %58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then113)) #7
          to label %do.end119 [label %if.then113], !srcloc !280

if.then113:                                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  %buf_end = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 7
  %63 = ptrtoint ptr %buf_end to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %buf_end, align 4
  %conv115 = zext i16 %64 to i32
  %add.ptr116 = getelementptr i8, ptr %add.ptr63, i32 %conv115
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %add99, ptr noundef %add.ptr116) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then113, %do.end84
  %buf_end121 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 7
  %65 = ptrtoint ptr %buf_end121 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %buf_end121, align 4
  %conv122 = zext i16 %66 to i32
  %add.ptr123 = getelementptr i8, ptr %add.ptr63, i32 %conv122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %add99) #7, !srcloc !281
  %67 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %var1, align 4
  %69 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bits_per_pixel, align 4
  %mul128 = mul i32 %70, %68
  %shr = lshr i32 %mul128, 3
  %71 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %line_length, align 4
  %sub = sub i32 %72, %shr
  %and = shl i32 %sub, 13
  %shl = and i32 %and, 67100672
  %and131 = and i32 %shr, 8191
  %73 = shl i32 %sub, 14
  %shl138 = and i32 %73, 134217728
  %74 = shl i32 %mul128, 10
  %shl142 = and i32 %74, 67108864
  %or = or i32 %shl142, %and131
  %or139 = or i32 %or, %shl
  %or143 = or i32 %or139, %shl138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then157)) #7
          to label %do.end165 [label %if.then157], !srcloc !280

if.then157:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  %buf_size = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 8
  %75 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %buf_size, align 2
  %conv159 = zext i16 %76 to i32
  %add.ptr160 = getelementptr i8, ptr %5, i32 %conv159
  %add.ptr162 = getelementptr i8, ptr %add.ptr160, i32 %mul54
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %or143, ptr noundef %add.ptr162) #7
  br label %do.end165

do.end165:                                        ; preds = %if.then157, %do.end119
  %buf_size167 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 8
  %77 = ptrtoint ptr %buf_size167 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %buf_size167, align 2
  %conv168 = zext i16 %78 to i32
  %add.ptr169 = getelementptr i8, ptr %5, i32 %conv168
  %add.ptr171 = getelementptr i8, ptr %add.ptr169, i32 %mul54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %or143) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then187)) #7
          to label %do.end198 [label %if.then187], !srcloc !280

if.then187:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #9
  %osd = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 9
  %79 = ptrtoint ptr %osd to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %osd, align 4
  %conv189 = zext i16 %80 to i32
  %osd_stride = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 10
  %81 = ptrtoint ptr %osd_stride to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %osd_stride, align 2
  %conv191 = zext i16 %82 to i32
  %mul192 = mul i32 %7, %conv191
  %add193 = add i32 %mul192, %conv189
  %add.ptr195 = getelementptr i8, ptr %5, i32 %add193
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %add.ptr195) #7
  br label %do.end198

do.end198:                                        ; preds = %if.then187, %do.end165
  %osd200 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 9
  %83 = ptrtoint ptr %osd200 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %osd200, align 4
  %conv201 = zext i16 %84 to i32
  %osd_stride203 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 10
  %85 = ptrtoint ptr %osd_stride203 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %osd_stride203, align 2
  %conv204 = zext i16 %86 to i32
  %mul205 = mul i32 %7, %conv204
  %add206 = add i32 %mul205, %conv201
  %add.ptr208 = getelementptr i8, ptr %5, i32 %add206
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 0) #7, !srcloc !281
  %87 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bits_per_pixel, align 4
  %89 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %var1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %88)
  %cmp.i = icmp ugt i32 %88, 16
  br i1 %cmp.i, label %s3c_fb_align_word.exit.thread, label %if.end.i768

s3c_fb_align_word.exit.thread:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #9
  %sub213 = add i32 %90, -1
  %and215796 = shl i32 %sub213, 11
  %shl216797 = and i32 %and215796, 4192256
  %91 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %yres, align 4
  %sub218798 = add i32 %92, 2047
  %and219799 = and i32 %sub218798, 2047
  %or221800 = or i32 %and219799, %shl216797
  br label %s3c_fb_align_word.exit770

if.end.i768:                                      ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #9
  %div.rhs.trunc.i = trunc i32 %88 to i16
  %div5.i = udiv i16 256, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div5.i to i32
  %sub.i = add i32 %90, 2046
  %add.i = add i32 %sub.i, %div.zext.i
  %neg.i = sub nsw i32 0, %div.zext.i
  %and.i = and i32 %add.i, %neg.i
  %and215 = shl i32 %and.i, 11
  %shl216 = and i32 %and215, 4192256
  %93 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %yres, align 4
  %sub218 = add i32 %94, 2047
  %and219 = and i32 %sub218, 2047
  %or221 = or i32 %shl216, %and219
  %sub.i764 = add i32 %90, -2
  %add.i765 = add i32 %sub.i764, %div.zext.i
  %and.i767 = and i32 %add.i765, %neg.i
  br label %s3c_fb_align_word.exit770

s3c_fb_align_word.exit770:                        ; preds = %if.end.i768, %s3c_fb_align_word.exit.thread
  %or221801 = phi i32 [ %or221, %if.end.i768 ], [ %or221800, %s3c_fb_align_word.exit.thread ]
  %95 = phi i32 [ %94, %if.end.i768 ], [ %92, %s3c_fb_align_word.exit.thread ]
  %retval.0.i769 = phi i32 [ %and.i767, %if.end.i768 ], [ %sub213, %s3c_fb_align_word.exit.thread ]
  %96 = shl i32 %retval.0.i769, 12
  %shl228 = and i32 %96, 8388608
  %or229 = or i32 %shl228, %or221801
  %sub231 = shl i32 %95, 11
  %97 = add i32 %sub231, 8386560
  %shl234 = and i32 %97, 4194304
  %or235 = or i32 %or229, %shl234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then249)) #7
          to label %do.end262 [label %if.then249], !srcloc !280

if.then249:                                       ; preds = %s3c_fb_align_word.exit770
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %osd200 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %osd200, align 4
  %conv252 = zext i16 %99 to i32
  %100 = ptrtoint ptr %osd_stride203 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %osd_stride203, align 2
  %conv255 = zext i16 %101 to i32
  %mul256 = mul i32 %7, %conv255
  %add257 = add nuw nsw i32 %conv252, 4
  %add258 = add i32 %add257, %mul256
  %add.ptr259 = getelementptr i8, ptr %5, i32 %add258
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %or235, ptr noundef %add.ptr259) #7
  br label %do.end262

do.end262:                                        ; preds = %if.then249, %s3c_fb_align_word.exit770
  %102 = ptrtoint ptr %osd200 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %osd200, align 4
  %conv265 = zext i16 %103 to i32
  %104 = ptrtoint ptr %osd_stride203 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %osd_stride203, align 2
  %conv268 = zext i16 %105 to i32
  %mul269 = mul i32 %7, %conv268
  %add270 = add nuw nsw i32 %conv265, 4
  %add271 = add i32 %add270, %mul269
  %add.ptr272 = getelementptr i8, ptr %5, i32 %add271
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272, i32 %or235) #7, !srcloc !281
  %106 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %var1, align 4
  %108 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %yres, align 4
  %mul277 = mul i32 %109, %107
  %110 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parent, align 4
  %variant.i = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 4
  %112 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i = load i8, ptr %variant.i, align 4
  %113 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i, label %do.end262.vidosd_set_alpha.exit_crit_edge, label %do.body1.i

do.end262.vidosd_set_alpha.exit_crit_edge:        ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidosd_set_alpha.exit

do.body1.i:                                       ; preds = %do.end262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidosd_set_alpha.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then5.i773)) #7
          to label %do.end.i [label %if.then5.i773], !srcloc !280

if.then5.i773:                                    ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i771 = getelementptr inbounds %struct.s3c_fb, ptr %111, i32 0, i32 4
  %114 = ptrtoint ptr %regs.i771 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i771, align 4
  %osd.i = getelementptr inbounds %struct.s3c_fb, ptr %111, i32 0, i32 5, i32 9
  %116 = ptrtoint ptr %osd.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %osd.i, align 4
  %conv.i = zext i16 %117 to i32
  %118 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %index, align 4
  %osd_stride.i = getelementptr inbounds %struct.s3c_fb, ptr %111, i32 0, i32 5, i32 10
  %120 = ptrtoint ptr %osd_stride.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %osd_stride.i, align 2
  %conv8.i = zext i16 %121 to i32
  %mul.i = mul i32 %119, %conv8.i
  %add.i772 = add nuw nsw i32 %conv.i, 8
  %add9.i = add i32 %add.i772, %mul.i
  %add.ptr.i = getelementptr i8, ptr %115, i32 %add9.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidosd_set_alpha.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.77, i32 noundef 4095, ptr noundef %add.ptr.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i773, %do.body1.i
  %regs10.i = getelementptr inbounds %struct.s3c_fb, ptr %111, i32 0, i32 4
  %122 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs10.i, align 4
  %osd12.i = getelementptr inbounds %struct.s3c_fb, ptr %111, i32 0, i32 5, i32 9
  %124 = ptrtoint ptr %osd12.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %osd12.i, align 4
  %conv13.i = zext i16 %125 to i32
  %126 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %index, align 4
  %osd_stride16.i = getelementptr inbounds %struct.s3c_fb, ptr %111, i32 0, i32 5, i32 10
  %128 = ptrtoint ptr %osd_stride16.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %osd_stride16.i, align 2
  %conv17.i = zext i16 %129 to i32
  %mul18.i = mul i32 %127, %conv17.i
  %add19.i = add nuw nsw i32 %conv13.i, 8
  %add20.i = add i32 %add19.i, %mul18.i
  %add.ptr21.i = getelementptr i8, ptr %123, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 4095) #7, !srcloc !281
  br label %vidosd_set_alpha.exit

vidosd_set_alpha.exit:                            ; preds = %do.end.i, %do.end262.vidosd_set_alpha.exit_crit_edge
  %130 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %parent, align 4
  %osd_size_off.i = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 4, i32 1
  %132 = ptrtoint ptr %osd_size_off.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %osd_size_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not.i775 = icmp eq i16 %133, 0
  br i1 %tobool.not.i775, label %vidosd_set_alpha.exit.vidosd_set_size.exit_crit_edge, label %do.body1.i776

vidosd_set_alpha.exit.vidosd_set_size.exit_crit_edge: ; preds = %vidosd_set_alpha.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidosd_set_size.exit

do.body1.i776:                                    ; preds = %vidosd_set_alpha.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidosd_set_size.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then5.i786)) #7
          to label %do.end.i787 [label %if.then5.i786], !srcloc !280

if.then5.i786:                                    ; preds = %do.body1.i776
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i777 = getelementptr inbounds %struct.s3c_fb, ptr %131, i32 0, i32 4
  %134 = ptrtoint ptr %regs.i777 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i777, align 4
  %osd.i778 = getelementptr inbounds %struct.s3c_fb, ptr %131, i32 0, i32 5, i32 9
  %136 = ptrtoint ptr %osd.i778 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %osd.i778, align 4
  %conv.i779 = zext i16 %137 to i32
  %138 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %index, align 4
  %osd_stride.i781 = getelementptr inbounds %struct.s3c_fb, ptr %131, i32 0, i32 5, i32 10
  %140 = ptrtoint ptr %osd_stride.i781 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %osd_stride.i781, align 2
  %conv8.i782 = zext i16 %141 to i32
  %mul.i783 = mul i32 %139, %conv8.i782
  %add.i784 = add i32 %mul.i783, %conv.i779
  %add.ptr.i785 = getelementptr i8, ptr %135, i32 %add.i784
  %142 = ptrtoint ptr %osd_size_off.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %osd_size_off.i, align 2
  %conv11.i = zext i16 %143 to i32
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i785, i32 %conv11.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidosd_set_size.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.78, i32 noundef %mul277, ptr noundef %add.ptr12.i) #7
  br label %do.end.i787

do.end.i787:                                      ; preds = %if.then5.i786, %do.body1.i776
  %regs13.i = getelementptr inbounds %struct.s3c_fb, ptr %131, i32 0, i32 4
  %144 = ptrtoint ptr %regs13.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs13.i, align 4
  %osd15.i = getelementptr inbounds %struct.s3c_fb, ptr %131, i32 0, i32 5, i32 9
  %146 = ptrtoint ptr %osd15.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %osd15.i, align 4
  %conv16.i = zext i16 %147 to i32
  %148 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %index, align 4
  %osd_stride19.i = getelementptr inbounds %struct.s3c_fb, ptr %131, i32 0, i32 5, i32 10
  %150 = ptrtoint ptr %osd_stride19.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %osd_stride19.i, align 2
  %conv20.i = zext i16 %151 to i32
  %mul21.i = mul i32 %149, %conv20.i
  %add22.i = add i32 %mul21.i, %conv16.i
  %add.ptr23.i = getelementptr i8, ptr %145, i32 %add22.i
  %152 = ptrtoint ptr %osd_size_off.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %osd_size_off.i, align 2
  %conv26.i = zext i16 %153 to i32
  %add.ptr27.i = getelementptr i8, ptr %add.ptr23.i, i32 %conv26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %mul277) #7, !srcloc !281
  br label %vidosd_set_size.exit

vidosd_set_size.exit:                             ; preds = %do.end.i787, %vidosd_set_alpha.exit.vidosd_set_size.exit_crit_edge
  %has_shadowcon = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 12
  %154 = ptrtoint ptr %has_shadowcon to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load = load i8, ptr %has_shadowcon, align 2
  %155 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool279.not = icmp eq i8 %155, 0
  br i1 %tobool279.not, label %vidosd_set_size.exit.if.end311_crit_edge, label %if.then280

vidosd_set_size.exit.if.end311_crit_edge:         ; preds = %vidosd_set_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end311

if.then280:                                       ; preds = %vidosd_set_size.exit
  %156 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs2, align 4
  %add.ptr282 = getelementptr i8, ptr %157, i32 52
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr282) #7, !srcloc !282
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  %shl286 = shl nuw i32 1, %7
  %or287 = or i32 %159, %shl286
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then301)) #7
          to label %do.end306 [label %if.then301], !srcloc !280

if.then301:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs2, align 4
  %add.ptr303 = getelementptr i8, ptr %161, i32 52
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %or287, ptr noundef %add.ptr303) #7
  br label %do.end306

do.end306:                                        ; preds = %if.then301, %if.then280
  %162 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs2, align 4
  %add.ptr308 = getelementptr i8, ptr %163, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr308, i32 %or287) #7, !srcloc !281
  br label %if.end311

if.end311:                                        ; preds = %do.end306, %vidosd_set_size.exit.if.end311_crit_edge
  %164 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %index, align 4
  %shl313 = shl nuw i32 1, %165
  %enabled = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 6
  %166 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %enabled, align 4
  %168 = trunc i32 %shl313 to i8
  %conv316 = or i8 %167, %168
  store i8 %conv316, ptr %enabled, align 4
  %169 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %bits_per_pixel, align 4
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %170, label %if.end311.sw.epilog391_crit_edge [
    i32 1, label %sw.bb318
    i32 2, label %sw.bb322
    i32 4, label %sw.bb326
    i32 8, label %sw.bb330
    i32 16, label %sw.bb340
    i32 24, label %if.end311.sw.bb352_crit_edge
    i32 32, label %if.end311.sw.bb352_crit_edge812
  ]

if.end311.sw.bb352_crit_edge812:                  ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

if.end311.sw.bb352_crit_edge:                     ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

if.end311.sw.epilog391_crit_edge:                 ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog391

sw.bb318:                                         ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog391

sw.bb322:                                         ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog391

sw.bb326:                                         ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog391

sw.bb330:                                         ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %172 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp331.not = icmp eq i32 %173, 0
  %. = select i1 %cmp331.not, i32 131597, i32 131601
  br label %sw.epilog391

sw.bb340:                                         ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  %length342 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %174 = ptrtoint ptr %length342 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %length342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp343.not = icmp eq i32 %175, 0
  %.721 = select i1 %cmp343.not, i32 65557, i32 65561
  br label %sw.epilog391

sw.bb352:                                         ; preds = %if.end311.sw.bb352_crit_edge, %if.end311.sw.bb352_crit_edge812
  %length353 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %176 = ptrtoint ptr %length353 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %length353, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %177)
  %cmp354 = icmp eq i32 %177, 6
  %length358 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %178 = ptrtoint ptr %length358 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %length358, align 4
  br i1 %cmp354, label %if.then356, label %if.else366

if.then356:                                       ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp359.not = icmp eq i32 %179, 0
  %.722 = select i1 %cmp359.not, i32 32801, i32 32809
  br label %sw.epilog391

if.else366:                                       ; preds = %sw.bb352
  %180 = zext i32 %179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %179, label %if.else384 [
    i32 1, label %if.else366.sw.epilog391_crit_edge
    i32 4, label %if.else366.if.then382_crit_edge
    i32 8, label %if.else366.if.then382_crit_edge813
  ]

if.else366.if.then382_crit_edge813:               ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

if.else366.if.then382_crit_edge:                  ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

if.else366.sw.epilog391_crit_edge:                ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog391

if.then382:                                       ; preds = %if.else366.if.then382_crit_edge, %if.else366.if.then382_crit_edge813
  br label %sw.epilog391

if.else384:                                       ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog391

sw.epilog391:                                     ; preds = %if.else384, %if.then382, %if.else366.sw.epilog391_crit_edge, %if.then356, %sw.bb340, %sw.bb330, %sw.bb326, %sw.bb322, %sw.bb318, %if.end311.sw.epilog391_crit_edge
  %data.3 = phi i32 [ 1, %if.end311.sw.epilog391_crit_edge ], [ %.721, %sw.bb340 ], [ %., %sw.bb330 ], [ 262665, %sw.bb326 ], [ 262661, %sw.bb322 ], [ 263169, %sw.bb318 ], [ 32887, %if.then382 ], [ 32813, %if.else384 ], [ %.722, %if.then356 ], [ 32885, %if.else366.sw.epilog391_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp392 = icmp sgt i32 %7, 0
  br i1 %cmp392, label %if.then394, label %sw.epilog391.do.body446_crit_edge

sw.epilog391.do.body446_crit_edge:                ; preds = %sw.epilog391
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body446

if.then394:                                       ; preds = %sw.epilog391
  %keycon396 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 5
  %181 = ptrtoint ptr %keycon396 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %keycon396, align 4
  %conv397 = zext i16 %182 to i32
  %add.ptr398 = getelementptr i8, ptr %5, i32 %conv397
  %mul400 = add i32 %mul62, -8
  %add.ptr401 = getelementptr i8, ptr %add.ptr398, i32 %mul400
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then415)) #7
          to label %do.end419 [label %if.then415], !srcloc !280

if.then415:                                       ; preds = %if.then394
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef -117440513, ptr noundef %add.ptr401) #7
  br label %do.end419

do.end419:                                        ; preds = %if.then415, %if.then394
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr401, i32 -117440513) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then436)) #7
          to label %do.end440 [label %if.then436], !srcloc !280

if.then436:                                       ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr437 = getelementptr i8, ptr %add.ptr401, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef 16777215, ptr noundef %add.ptr437) #7
  br label %do.end440

do.end440:                                        ; preds = %if.then436, %do.end419
  %add.ptr441 = getelementptr i8, ptr %add.ptr401, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr441, i32 16777215) #7, !srcloc !281
  br label %do.body446

do.body446:                                       ; preds = %do.end440, %sw.epilog391.do.body446_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then458)) #7
          to label %do.end466 [label %if.then458], !srcloc !280

if.then458:                                       ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #9
  %wincon = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 3
  %183 = ptrtoint ptr %wincon to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %wincon, align 4
  %conv460 = zext i16 %184 to i32
  %add.ptr461 = getelementptr i8, ptr %5, i32 %conv460
  %add.ptr463 = getelementptr i8, ptr %add.ptr461, i32 %mul54
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %data.3, ptr noundef %add.ptr463) #7
  br label %do.end466

do.end466:                                        ; preds = %if.then458, %do.body446
  %wincon468 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 3
  %185 = ptrtoint ptr %wincon468 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %wincon468, align 4
  %conv469 = zext i16 %186 to i32
  %add.ptr470 = getelementptr i8, ptr %5, i32 %conv469
  %add.ptr472 = getelementptr i8, ptr %add.ptr470, i32 %mul54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr472, i32 %data.3) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then488)) #7
          to label %do.end496 [label %if.then488], !srcloc !280

if.then488:                                       ; preds = %do.end466
  call void @__sanitizer_cov_trace_pc() #9
  %winmap = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 4
  %187 = ptrtoint ptr %winmap to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %winmap, align 2
  %conv490 = zext i16 %188 to i32
  %add.ptr491 = getelementptr i8, ptr %5, i32 %conv490
  %add.ptr493 = getelementptr i8, ptr %add.ptr491, i32 %mul54
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %add.ptr493) #7
  br label %do.end496

do.end496:                                        ; preds = %if.then488, %do.end466
  %winmap498 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 4
  %189 = ptrtoint ptr %winmap498 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %winmap498, align 2
  %conv499 = zext i16 %190 to i32
  %add.ptr500 = getelementptr i8, ptr %5, i32 %conv499
  %add.ptr502 = getelementptr i8, ptr %add.ptr500, i32 %mul54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr502, i32 0) #7, !srcloc !281
  %191 = ptrtoint ptr %has_shadowcon to i32
  call void @__asan_load1_noabort(i32 %191)
  %bf.load506 = load i8, ptr %has_shadowcon, align 2
  %192 = and i8 %bf.load506, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool510.not = icmp eq i8 %192, 0
  br i1 %tobool510.not, label %do.end496.if.end552_crit_edge, label %if.then511

do.end496.if.end552_crit_edge:                    ; preds = %do.end496
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end552

if.then511:                                       ; preds = %do.end496
  %193 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs2, align 4
  %add.ptr515 = getelementptr i8, ptr %194, i32 608
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr515) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !296
  %196 = and i32 %195, -16777217
  %197 = tail call i32 @llvm.bswap.i32(i32 %196)
  %length521 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %198 = ptrtoint ptr %length521 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %length521, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %199)
  %cmp522 = icmp ugt i32 %199, 4
  %or525 = zext i1 %cmp522 to i32
  %data.4 = or i32 %197, %or525
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_set_par, %if.then542)) #7
          to label %do.end547 [label %if.then542], !srcloc !280

if.then542:                                       ; preds = %if.then511
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs2, align 4
  %add.ptr544 = getelementptr i8, ptr %201, i32 608
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_set_par.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %data.4, ptr noundef %add.ptr544) #7
  br label %do.end547

do.end547:                                        ; preds = %if.then542, %if.then511
  %202 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs2, align 4
  %add.ptr549 = getelementptr i8, ptr %203, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr549, i32 %data.4) #7, !srcloc !281
  br label %if.end552

if.end552:                                        ; preds = %do.end547, %do.end496.if.end552_crit_edge
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext false)
  %204 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev5, align 4
  %call.i788 = tail call i32 @__pm_runtime_idle(ptr noundef %205, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_setcolreg.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_setcolreg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_setcolreg.__UNIQUE_ID_ddebug336, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef %7, i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %visual, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %11, label %do.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb16
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %13 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pseudo_palette, align 4
  %red6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %16
  %shr.i = lshr i32 %and.i, %sub.i
  %17 = ptrtoint ptr %red6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %red6, align 4
  %shl.i = shl i32 %shr.i, %18
  %green9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i64 = and i32 %green, 65535
  %length.i65 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %19 = ptrtoint ptr %length.i65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i65, align 4
  %sub.i66 = sub i32 16, %20
  %shr.i67 = lshr i32 %and.i64, %sub.i66
  %21 = ptrtoint ptr %green9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %green9, align 4
  %shl.i68 = shl i32 %shr.i67, %22
  %or = or i32 %shl.i68, %shl.i
  %blue12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i69 = and i32 %blue, 65535
  %length.i70 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %23 = ptrtoint ptr %length.i70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i70, align 4
  %sub.i71 = sub i32 16, %24
  %shr.i72 = lshr i32 %and.i69, %sub.i71
  %25 = ptrtoint ptr %blue12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blue12, align 4
  %shl.i73 = shl i32 %shr.i72, %26
  %or14 = or i32 %or, %shl.i73
  %arrayidx = getelementptr i32, ptr %14, i32 %regno
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or14, ptr %arrayidx, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %do.end
  %palette_sz = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %palette_sz to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %palette_sz, align 4
  %conv = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %regno)
  %cmp17 = icmp ugt i32 %conv, %regno
  br i1 %cmp17, label %if.then19, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %palette = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 3
  %and.i74 = and i32 %red, 65535
  %length.i75 = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %length.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i75, align 4
  %sub.i76 = sub i32 16, %31
  %shr.i77 = lshr i32 %and.i74, %sub.i76
  %32 = ptrtoint ptr %palette to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %palette, align 4
  %shl.i78 = shl i32 %shr.i77, %33
  %g = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 3, i32 1
  %and.i79 = and i32 %green, 65535
  %length.i80 = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 3, i32 1, i32 1
  %34 = ptrtoint ptr %length.i80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i80, align 4
  %sub.i81 = sub i32 16, %35
  %shr.i82 = lshr i32 %and.i79, %sub.i81
  %36 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %g, align 4
  %shl.i83 = shl i32 %shr.i82, %37
  %or23 = or i32 %shl.i83, %shl.i78
  %b = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 3, i32 2
  %and.i84 = and i32 %blue, 65535
  %length.i85 = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 3, i32 2, i32 1
  %38 = ptrtoint ptr %length.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i85, align 4
  %sub.i86 = sub i32 16, %39
  %shr.i87 = lshr i32 %and.i84, %sub.i86
  %40 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b, align 4
  %shl.i88 = shl i32 %shr.i87, %41
  %or26 = or i32 %or23, %shl.i88
  tail call fastcc void @s3c_fb_update_palette(ptr noundef %3, ptr noundef %1, i32 noundef %regno, i32 noundef %or26)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %sw.bb16.cleanup_crit_edge, %if.then5, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup_crit_edge ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then5 ]
  %42 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev3, align 4
  %call.i90 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 4) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %index1 = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index1, align 4
  %output_on2 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %output_on2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %output_on2, align 1, !range !293
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_blank.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_blank, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_blank.__UNIQUE_ID_ddebug337, ptr noundef %9, ptr noundef nonnull @.str.65, i32 noundef %blank_mode) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev6 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #7
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %wincon8 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %wincon8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wincon8, align 4
  %conv9 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv9
  %mul = shl i32 %5, 2
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %mul
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !282
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !297
  %18 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %blank_mode, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %do.end.sw.bb17_crit_edge
    i32 0, label %sw.bb50
  ]

do.end.sw.bb17_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %17, -2
  %shl = shl nuw i32 1, %5
  %enabled = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enabled, align 4
  %21 = trunc i32 %shl to i8
  %22 = xor i8 %21, -1
  %conv16 = and i8 %20, %22
  store i8 %conv16, ptr %enabled, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %do.end.sw.bb17_crit_edge
  %wincon.0 = phi i32 [ %17, %do.end.sw.bb17_crit_edge ], [ %and, %sw.bb ]
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_blank.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_blank, %if.then31)) #7
          to label %do.end40 [label %if.then31], !srcloc !280

if.then31:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %winmap = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %winmap to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %winmap, align 2
  %conv34 = zext i16 %26 to i32
  %add.ptr35 = getelementptr i8, ptr %24, i32 %conv34
  %add.ptr37 = getelementptr i8, ptr %add.ptr35, i32 %mul
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_blank.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.64, i32 noundef 16777216, ptr noundef %add.ptr37) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then31, %sw.bb17
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %winmap43 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 4
  %29 = ptrtoint ptr %winmap43 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %winmap43, align 2
  %conv44 = zext i16 %30 to i32
  %add.ptr45 = getelementptr i8, ptr %28, i32 %conv44
  %add.ptr47 = getelementptr i8, ptr %add.ptr45, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 16777216) #7, !srcloc !281
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb50:                                          ; preds = %do.end
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_blank.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_blank, %if.then64)) #7
          to label %do.end74 [label %if.then64], !srcloc !280

if.then64:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %winmap67 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %winmap67 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %winmap67, align 2
  %conv68 = zext i16 %34 to i32
  %add.ptr69 = getelementptr i8, ptr %32, i32 %conv68
  %add.ptr71 = getelementptr i8, ptr %add.ptr69, i32 %mul
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_blank.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef %add.ptr71) #7
  br label %do.end74

do.end74:                                         ; preds = %if.then64, %sw.bb50
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %winmap77 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 4
  %37 = ptrtoint ptr %winmap77 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %winmap77, align 2
  %conv78 = zext i16 %38 to i32
  %add.ptr79 = getelementptr i8, ptr %36, i32 %conv78
  %add.ptr81 = getelementptr i8, ptr %add.ptr79, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #7, !srcloc !281
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext false)
  %or = or i32 %17, 1
  %shl84 = shl nuw i32 1, %5
  %enabled85 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %enabled85 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enabled85, align 4
  %41 = trunc i32 %shl84 to i8
  %conv88 = or i8 %40, %41
  store i8 %conv88, ptr %enabled85, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev6, align 4
  %call.i189 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 4) #7
  br label %cleanup

sw.epilog:                                        ; preds = %do.end74, %do.end40
  %wincon.1 = phi i32 [ %or, %do.end74 ], [ %wincon.0, %do.end40 ]
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_blank.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_blank, %if.then105)) #7
          to label %do.end115 [label %if.then105], !srcloc !280

if.then105:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %46 = ptrtoint ptr %wincon8 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %wincon8, align 4
  %conv109 = zext i16 %47 to i32
  %add.ptr110 = getelementptr i8, ptr %45, i32 %conv109
  %add.ptr112 = getelementptr i8, ptr %add.ptr110, i32 %mul
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_blank.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.64, i32 noundef %wincon.1, ptr noundef %add.ptr112) #7
  br label %do.end115

do.end115:                                        ; preds = %if.then105, %sw.epilog
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %50 = ptrtoint ptr %wincon8 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %wincon8, align 4
  %conv119 = zext i16 %51 to i32
  %add.ptr120 = getelementptr i8, ptr %49, i32 %conv119
  %add.ptr122 = getelementptr i8, ptr %add.ptr120, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %wincon.1) #7, !srcloc !281
  %enabled125 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 6
  %52 = ptrtoint ptr %enabled125 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enabled125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool127.not = icmp ne i8 %53, 0
  %cond = zext i1 %tobool127.not to i32
  tail call fastcc void @s3c_fb_enable(ptr noundef %3, i32 noundef %cond)
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext false)
  %54 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev6, align 4
  %call.i190 = tail call i32 @__pm_runtime_idle(ptr noundef %55, i32 noundef 4) #7
  %56 = ptrtoint ptr %output_on2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %output_on2, align 1, !range !293
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %57)
  %cmp = icmp eq i8 %7, %57
  %conv133 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %sw.default
  %retval.0 = phi i32 [ 1, %sw.default ], [ %conv133, %do.end115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %mul = shl i32 %7, 3
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %10 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line_length, align 4
  %mul1 = mul i32 %13, %11
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp = icmp ugt i32 %15, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %16 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xoffset, align 4
  %shr = lshr i32 %15, 3
  %mul5 = mul i32 %17, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %15, label %do.end [
    i32 4, label %sw.bb
    i32 2, label %sw.bb11
    i32 1, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %xoffset8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %19 = ptrtoint ptr %xoffset8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xoffset8, align 4
  %shr9 = lshr i32 %20, 1
  br label %if.end

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %xoffset12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %21 = ptrtoint ptr %xoffset12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xoffset12, align 4
  %shr13 = lshr i32 %22, 2
  br label %if.end

sw.bb15:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %xoffset16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %23 = ptrtoint ptr %xoffset16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xoffset16, align 4
  %shr17 = lshr i32 %24, 3
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.68) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb15, %sw.bb11, %sw.bb, %if.then
  %mul5.pn = phi i32 [ %mul5, %if.then ], [ %shr17, %sw.bb15 ], [ %shr13, %sw.bb11 ], [ %shr9, %sw.bb ]
  %start_boff.0 = add i32 %mul5.pn, %mul1
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres, align 4
  %mul25 = mul i32 %28, %13
  %add26 = add i32 %mul25, %start_boff.0
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_pan_display.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_pan_display, %if.then32)) #7
          to label %do.end38 [label %if.then32], !srcloc !280

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smem_start, align 4
  %add34 = add i32 %30, %start_boff.0
  %buf_start = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 6
  %31 = ptrtoint ptr %buf_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %buf_start, align 2
  %conv = zext i16 %32 to i32
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %conv
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_pan_display.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.69, i32 noundef %add34, ptr noundef %add.ptr35) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %if.end
  %smem_start40 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %smem_start40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smem_start40, align 4
  %add41 = add i32 %34, %start_boff.0
  %buf_start43 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 6
  %35 = ptrtoint ptr %buf_start43 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %buf_start43, align 2
  %conv44 = zext i16 %36 to i32
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %conv44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %add41) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_pan_display.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_pan_display, %if.then61)) #7
          to label %do.end70 [label %if.then61], !srcloc !280

if.then61:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %smem_start40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smem_start40, align 4
  %add64 = add i32 %38, %add26
  %buf_end = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 7
  %39 = ptrtoint ptr %buf_end to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %buf_end, align 4
  %conv66 = zext i16 %40 to i32
  %add.ptr67 = getelementptr i8, ptr %add.ptr, i32 %conv66
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_pan_display.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.69, i32 noundef %add64, ptr noundef %add.ptr67) #7
  br label %do.end70

do.end70:                                         ; preds = %if.then61, %do.end38
  %41 = ptrtoint ptr %smem_start40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %smem_start40, align 4
  %add73 = add i32 %42, %add26
  %buf_end75 = getelementptr inbounds %struct.s3c_fb, ptr %3, i32 0, i32 5, i32 7
  %43 = ptrtoint ptr %buf_end75 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %buf_end75, align 4
  %conv76 = zext i16 %44 to i32
  %add.ptr77 = getelementptr i8, ptr %add.ptr, i32 %conv76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %add73) #7, !srcloc !281
  tail call fastcc void @shadow_protect_win(ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.end
  %retval.0 = phi i32 [ 0, %do.end70 ], [ -22, %do.end ]
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %call.i125 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 4) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074021920, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074021920
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1025) #7
  %4 = inttoptr i32 %arg to ptr
  %5 = tail call i32 @llvm.read_register.i32(metadata !270) #7
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !298
  %and.i = and i32 %7, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !300
  %8 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #7, !srcloc !301
  %asmresult = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #7, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %asmresult1 = extractvalue { i32, i32 } %8, 1
  %call3 = tail call fastcc i32 @s3c_fb_wait_for_vsync(ptr noundef %3, i32 noundef %asmresult1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end ], [ -14, %sw.bb.sw.epilog_crit_edge ], [ -25, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_fb_update_palette(ptr nocapture noundef readonly %sfb, ptr nocapture noundef readonly %win, i32 noundef %reg, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.s3c_fb, ptr %sfb, i32 0, i32 5, i32 11, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_update_palette, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_update_palette.__UNIQUE_ID_ddebug332, ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %9, i32 noundef %reg, ptr noundef %add.ptr, i32 noundef %value) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %palette_buffer = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 5
  %10 = ptrtoint ptr %palette_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %palette_buffer, align 4
  %arrayidx4 = getelementptr i32, ptr %11, i32 %reg
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %value, ptr %arrayidx4, align 4
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 416
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !282
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_update_palette, %if.then23)) #7
          to label %do.end28 [label %if.then23], !srcloc !280

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %16, 512
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 416
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_update_palette.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.62, i32 noundef %or, ptr noundef %add.ptr25) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.end
  %or29 = or i32 %16, 512
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %20, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %or29) #7, !srcloc !281
  %variant34 = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 4
  %21 = ptrtoint ptr %variant34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %variant34, align 4
  %22 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %do.body43, label %do.body37

do.body37:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !303
  tail call void @arm_heavy_mb() #7
  %conv40 = trunc i32 %value to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %mul = shl i32 %reg, 1
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 %23) #7, !srcloc !304
  br label %do.body67

do.body43:                                        ; preds = %do.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_update_palette, %if.then55)) #7
          to label %do.end60 [label %if.then55], !srcloc !280

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %mul56 = shl i32 %reg, 2
  %add.ptr57 = getelementptr i8, ptr %add.ptr, i32 %mul56
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_update_palette.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.62, i32 noundef %value, ptr noundef %add.ptr57) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  %mul61 = shl i32 %reg, 2
  %add.ptr62 = getelementptr i8, ptr %add.ptr, i32 %mul61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %value) #7, !srcloc !281
  br label %do.body67

do.body67:                                        ; preds = %do.end60, %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_update_palette, %if.then79)) #7
          to label %do.end84 [label %if.then79], !srcloc !280

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr81 = getelementptr i8, ptr %25, i32 416
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_update_palette.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.62, i32 noundef %16, ptr noundef %add.ptr81) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body67
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr86 = getelementptr i8, ptr %27, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %16) #7, !srcloc !281
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shadow_protect_win(ptr nocapture noundef readonly %win, i1 noundef zeroext %protect) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %has_prtcon = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %has_prtcon to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_prtcon, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %protect, label %if.then, label %if.else53

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else, label %do.body3

do.body3:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_protect_win.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_protect_win, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !280

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @shadow_protect_win.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, i32 noundef 2048, ptr noundef %add.ptr) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body3
  %regs9 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs9, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 2048) #7, !srcloc !281
  br label %if.end133

if.else:                                          ; preds = %if.then
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %if.else.if.end133_crit_edge, label %if.then18

if.else.if.end133_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then18:                                        ; preds = %if.else
  %regs19 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %regs19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs19, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !282
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_protect_win.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_protect_win, %if.then37)) #7
          to label %do.end42 [label %if.then37], !srcloc !280

if.then37:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 7
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %add = add i32 %13, 10
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %11
  %14 = ptrtoint ptr %regs19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs19, align 4
  %add.ptr39 = getelementptr i8, ptr %15, i32 52
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @shadow_protect_win.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, i32 noundef %or, ptr noundef %add.ptr39) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %if.then18
  %index43 = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 7
  %16 = ptrtoint ptr %index43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index43, align 4
  %add44 = add i32 %17, 10
  %shl45 = shl nuw i32 1, %add44
  %or46 = or i32 %shl45, %11
  %18 = ptrtoint ptr %regs19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs19, align 4
  %add.ptr48 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %or46) #7, !srcloc !281
  br label %if.end133

if.else53:                                        ; preds = %entry
  br i1 %tobool1.not, label %if.else84, label %do.body62

do.body62:                                        ; preds = %if.else53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_protect_win.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_protect_win, %if.then74)) #7
          to label %do.end79 [label %if.then74], !srcloc !280

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %regs75 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %regs75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs75, align 4
  %add.ptr76 = getelementptr i8, ptr %21, i32 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @shadow_protect_win.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef %add.ptr76) #7
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body62
  %regs80 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %regs80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs80, align 4
  %add.ptr81 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #7, !srcloc !281
  br label %if.end133

if.else84:                                        ; preds = %if.else53
  %24 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool91.not = icmp eq i8 %24, 0
  br i1 %tobool91.not, label %if.else84.if.end133_crit_edge, label %if.then92

if.else84.if.end133_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then92:                                        ; preds = %if.else84
  %regs95 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %regs95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs95, align 4
  %add.ptr96 = getelementptr i8, ptr %26, i32 52
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #7, !srcloc !282
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !306
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_protect_win.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_protect_win, %if.then113)) #7
          to label %do.end121 [label %if.then113], !srcloc !280

if.then113:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %index114 = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 7
  %29 = ptrtoint ptr %index114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index114, align 4
  %add115 = add i32 %30, 10
  %shl116 = shl nuw i32 1, %add115
  %neg = xor i32 %shl116, -1
  %and = and i32 %28, %neg
  %31 = ptrtoint ptr %regs95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs95, align 4
  %add.ptr118 = getelementptr i8, ptr %32, i32 52
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @shadow_protect_win.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, i32 noundef %and, ptr noundef %add.ptr118) #7
  br label %do.end121

do.end121:                                        ; preds = %if.then113, %if.then92
  %index122 = getelementptr inbounds %struct.s3c_fb_win, ptr %win, i32 0, i32 7
  %33 = ptrtoint ptr %index122 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index122, align 4
  %add123 = add i32 %34, 10
  %shl124 = shl nuw i32 1, %add123
  %neg125 = xor i32 %shl124, -1
  %and126 = and i32 %28, %neg125
  %35 = ptrtoint ptr %regs95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs95, align 4
  %add.ptr128 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %and126) #7, !srcloc !281
  br label %if.end133

if.end133:                                        ; preds = %do.end121, %if.else84.if.end133_crit_edge, %do.end79, %do.end42, %if.else.if.end133_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_fb_enable(ptr nocapture noundef %sfb, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !282
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %output_on = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 7
  %4 = ptrtoint ptr %output_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %output_on, align 1, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.then5_crit_edge

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  br label %if.then5

if.then5:                                         ; preds = %if.then, %land.lhs.true.if.then5_crit_edge
  %or = or i32 %3, 3
  br label %do.body12

if.else:                                          ; preds = %entry
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else.do.body12_crit_edge, label %if.then7

if.else.do.body12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = and i32 %3, -4
  %and9 = or i32 %or8, 2
  br label %do.body12

do.body12:                                        ; preds = %if.then7, %if.else.do.body12_crit_edge, %if.then5
  %vidcon0.0 = phi i32 [ %or, %if.then5 ], [ %and9, %if.then7 ], [ %3, %if.else.do.body12_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_enable.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_enable, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !280

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_enable.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67, i32 noundef %vidcon0.0, ptr noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %vidcon0.0) #7, !srcloc !281
  br i1 %tobool, label %do.end.if.end33_crit_edge, label %land.lhs.true27

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true27:                                  ; preds = %do.end
  %output_on28 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 7
  %12 = ptrtoint ptr %output_on28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %output_on28, align 1, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not = icmp eq i8 %13, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end33_crit_edge, label %if.then30

land.lhs.true27.if.end33_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %14 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev31, align 4
  %call.i53 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true27.if.end33_crit_edge, %do.end.if.end33_crit_edge
  %output_on35 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 7
  %frombool36 = zext i1 %tobool to i8
  %16 = ptrtoint ptr %output_on35 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool36, ptr %output_on35, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c_fb_wait_for_vsync(ptr noundef %sfb, i32 noundef %crtc) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc)
  %cmp.not = icmp eq i32 %crtc, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %vsync_info = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 12
  %count1 = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 4
  %regs1.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 4
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %irq_flags.i = getelementptr inbounds %struct.s3c_fb, ptr %sfb, i32 0, i32 11
  %call.i73 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %irq_flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.s3c_fb_enable_irq.exit_crit_edge

if.end.s3c_fb_enable_irq.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_fb_enable_irq.exit

if.then.i:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %5, i32 304
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !307
  %7 = and i32 %6, -32506113
  %8 = or i32 %7, 26214400
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_enable_irq.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_wait_for_vsync, %if.then14.i)) #7
          to label %do.end.i [label %if.then14.i], !srcloc !280

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_enable_irq.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.70, i32 noundef %9, ptr noundef %add.ptr.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %if.then.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !281
  br label %s3c_fb_enable_irq.exit

s3c_fb_enable_irq.exit:                           ; preds = %do.end.i, %if.end.s3c_fb_enable_irq.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1005) #7
  %10 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp8.not = icmp eq i32 %3, %11
  br i1 %cmp8.not, label %if.then15, label %if.end47.thread

if.end47.thread:                                  ; preds = %s3c_fb_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i7483 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #7
  br label %cleanup54

if.then15:                                        ; preds = %s3c_fb_enable_irq.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call1990 = call i32 @prepare_to_wait_event(ptr noundef %vsync_info, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %15 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %16)
  %cmp23.not91.not = icmp eq i32 %3, %16
  br i1 %cmp23.not91.not, label %if.then15.if.end39_crit_edge, label %if.then15.if.end47_crit_edge

if.then15.if.end47_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then15.if.end39_crit_edge:                     ; preds = %if.then15
  br label %if.end39

if.end39:                                         ; preds = %cleanup.if.end39_crit_edge, %if.then15.if.end39_crit_edge
  %__ret16.194 = phi i32 [ %__ret16.1, %cleanup.if.end39_crit_edge ], [ 5, %if.then15.if.end39_crit_edge ]
  %call1993 = phi i32 [ %call19, %cleanup.if.end39_crit_edge ], [ %call1990, %if.then15.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1993)
  %tobool40.not = icmp eq i32 %call1993, 0
  br i1 %tobool40.not, label %cleanup, label %if.end47.thread85

if.end47.thread85:                                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i7487 = call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #7
  br label %cleanup54

cleanup:                                          ; preds = %if.end39
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret16.194) #7
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %vsync_info, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %19 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %20)
  %cmp23.not = icmp eq i32 %3, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool27.not = icmp eq i32 %call43, 0
  %spec.store.select56 = select i1 %tobool27.not, i32 1, i32 %call43
  %__ret16.1 = select i1 %cmp23.not, i32 %call43, i32 %spec.store.select56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %tobool33.not = icmp eq i32 %__ret16.1, 0
  %not.cmp23.not = xor i1 %cmp23.not, true
  %21 = select i1 %not.cmp23.not, i1 true, i1 %tobool33.not
  br i1 %21, label %if.end47.loopexit, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end47.loopexit:                                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %phi.cmp = icmp eq i32 %__ret16.1, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %if.end47

if.end47:                                         ; preds = %if.end47.loopexit, %if.then15.if.end47_crit_edge
  %__ret16.1.lcssa = phi i32 [ 0, %if.then15.if.end47_crit_edge ], [ %phi.sel, %if.end47.loopexit ]
  call void @finish_wait(ptr noundef %vsync_info, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call.i74 = call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 4) #7
  br label %cleanup54

cleanup54:                                        ; preds = %if.end47, %if.end47.thread85, %if.end47.thread, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup54_crit_edge ], [ 0, %if.end47.thread ], [ 0, %if.end47.thread85 ], [ %__ret16.1.lcssa, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %arrayidx = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fbinfo = getelementptr inbounds %struct.s3c_fb_win, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbinfo, align 4
  %call3 = tail call i32 @s3c_fb_blank(i32 noundef 4, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %fbinfo.1 = getelementptr inbounds %struct.s3c_fb_win, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fbinfo.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fbinfo.1, align 4
  %call3.1 = tail call i32 @s3c_fb_blank(i32 noundef 4, ptr noundef %11)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %fbinfo.2 = getelementptr inbounds %struct.s3c_fb_win, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %fbinfo.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fbinfo.2, align 4
  %call3.2 = tail call i32 @s3c_fb_blank(i32 noundef 4, ptr noundef %15)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %17, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %fbinfo.3 = getelementptr inbounds %struct.s3c_fb_win, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %fbinfo.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fbinfo.3, align 4
  %call3.3 = tail call i32 @s3c_fb_blank(i32 noundef 4, ptr noundef %19)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 0
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %21, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %fbinfo.4 = getelementptr inbounds %struct.s3c_fb_win, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %fbinfo.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fbinfo.4, align 4
  %call3.4 = tail call i32 @s3c_fb_blank(i32 noundef 4, ptr noundef %23)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %has_clksel = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 12
  %24 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %has_clksel, align 2
  %25 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool4.not = icmp eq i8 %25, 0
  br i1 %tobool4.not, label %if.then5, label %for.inc.4.if.end6_crit_edge

for.inc.4.if.end6_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %lcd_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lcd_clk, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.inc.4.if.end6_crit_edge
  %bus_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %29) #7
  tail call void @clk_unprepare(ptr noundef %29) #7
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  %call.i17 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %dev1 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %bus_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 4
  %call.i208 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool.not.i = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %has_clksel = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 12
  %8 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %has_clksel, align 2
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  %lcd_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lcd_clk, align 4
  %call.i209 = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool.not.i210 = icmp eq i32 %call.i209, 0
  br i1 %tobool.not.i210, label %if.end.i213, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i213:                                      ; preds = %if.then
  %call1.i211 = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i211)
  %tobool2.not.i212 = icmp eq i32 %call1.i211, 0
  br i1 %tobool2.not.i212, label %if.end.i213.if.end_crit_edge, label %if.then3.i214

if.end.i213.if.end_crit_edge:                     ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i214:                                    ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then3.i214, %if.end.i213.if.end_crit_edge, %if.then.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void %13() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_resume.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_resume, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !280

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vidcon1 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %vidcon1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vidcon1, align 4
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_resume.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.80, i32 noundef %15, ptr noundef %add.ptr) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %vidcon112 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %vidcon112 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vidcon112, align 4
  %regs13 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs13, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %19) #7, !srcloc !281
  %22 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load18 = load i8, ptr %has_clksel, align 2
  %23 = and i8 %bf.load18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %do.end.if.end52_crit_edge, label %if.then23

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then23:                                        ; preds = %do.end
  %24 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs13, align 4
  %add.ptr25 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !308
  %27 = and i32 %26, -393217
  %28 = or i32 %27, 131072
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_resume.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_resume, %if.then42)) #7
          to label %do.end47 [label %if.then42], !srcloc !280

if.then42:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs13, align 4
  %add.ptr44 = getelementptr i8, ptr %31, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_resume.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.80, i32 noundef %29, ptr noundef %add.ptr44) #7
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %if.then23
  %32 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs13, align 4
  %add.ptr49 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %29) #7, !srcloc !281
  br label %if.end52

if.end52:                                         ; preds = %do.end47, %do.end.if.end52_crit_edge
  %nr_windows = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nr_windows, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp223.not = icmp eq i16 %35, 0
  br i1 %cmp223.not, label %if.end52.for.end115_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

if.end52.for.end115_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.cond55.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp59227 = icmp ugt i16 %37, 1
  br i1 %cmp59227, label %for.body61.lr.ph, label %for.cond55.preheader.for.end115_crit_edge

for.cond55.preheader.for.end115_crit_edge:        ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.body61.lr.ph:                                 ; preds = %for.cond55.preheader
  %keycon = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 5
  br label %for.body61

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end52.for.body_crit_edge
  %win_no.0224 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  tail call fastcc void @s3c_fb_clear_win(ptr noundef %1, i32 noundef %win_no.0224)
  %inc = add nuw nsw i32 %win_no.0224, 1
  %36 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nr_windows, align 2
  %conv = zext i16 %37 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond55.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body61:                                       ; preds = %cleanup.for.body61_crit_edge, %for.body61.lr.ph
  %win_no.1228 = phi i32 [ 0, %for.body61.lr.ph ], [ %inc114, %cleanup.for.body61_crit_edge ]
  %arrayidx = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 %win_no.1228
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool67.not = icmp eq ptr %39, null
  br i1 %tobool67.not, label %for.body61.cleanup_crit_edge, label %if.end69

for.body61.cleanup_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %for.body61
  %40 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs13, align 4
  %42 = ptrtoint ptr %keycon to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %keycon, align 4
  %conv65 = zext i16 %43 to i32
  %add.ptr66 = getelementptr i8, ptr %41, i32 %conv65
  tail call fastcc void @shadow_protect_win(ptr noundef nonnull %39, i1 noundef zeroext true)
  %mul = shl i32 %win_no.1228, 3
  %add.ptr70 = getelementptr i8, ptr %add.ptr66, i32 %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_resume.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_resume, %if.then84)) #7
          to label %do.end88 [label %if.then84], !srcloc !280

if.then84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_resume.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.80, i32 noundef 16777215, ptr noundef %add.ptr70) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %if.end69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 16777215) #7, !srcloc !281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_resume.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_resume, %if.then105)) #7
          to label %do.end109 [label %if.then105], !srcloc !280

if.then105:                                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr106 = getelementptr i8, ptr %add.ptr70, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_resume.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.80, i32 noundef 16777215, ptr noundef %add.ptr106) #7
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.end88
  %add.ptr110 = getelementptr i8, ptr %add.ptr70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 16777215) #7, !srcloc !281
  tail call fastcc void @shadow_protect_win(ptr noundef nonnull %39, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %for.body61.cleanup_crit_edge
  %inc114 = add nuw nsw i32 %win_no.1228, 1
  %44 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nr_windows, align 2
  %conv58 = zext i16 %45 to i32
  %sub = add nsw i32 %conv58, -1
  %cmp59 = icmp slt i32 %inc114, %sub
  br i1 %cmp59, label %cleanup.for.body61_crit_edge, label %cleanup.for.end115_crit_edge

cleanup.for.end115_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

cleanup.for.body61_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

for.end115:                                       ; preds = %cleanup.for.end115_crit_edge, %for.cond55.preheader.for.end115_crit_edge, %if.end52.for.end115_crit_edge
  tail call fastcc void @s3c_fb_set_rgb_timing(ptr noundef %1)
  br label %for.body119

for.body119:                                      ; preds = %for.inc142.for.body119_crit_edge, %for.end115
  %win_no.2230 = phi i32 [ 0, %for.end115 ], [ %inc143, %for.inc142.for.body119_crit_edge ]
  %arrayidx121 = getelementptr %struct.s3c_fb, ptr %1, i32 0, i32 9, i32 %win_no.2230
  %46 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx121, align 4
  %tobool122.not = icmp eq ptr %47, null
  br i1 %tobool122.not, label %for.body119.for.inc142_crit_edge, label %do.body125

for.body119.for.inc142_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc142

do.body125:                                       ; preds = %for.body119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_resume.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_resume, %if.then137)) #7
          to label %do.end140 [label %if.then137], !srcloc !280

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_fb_resume.__UNIQUE_ID_ddebug372, ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %win_no.2230) #7
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body125
  %fbinfo = getelementptr inbounds %struct.s3c_fb_win, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %fbinfo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fbinfo, align 4
  %call141 = tail call i32 @s3c_fb_set_par(ptr noundef %49)
  br label %for.inc142

for.inc142:                                       ; preds = %do.end140, %for.body119.for.inc142_crit_edge
  %inc143 = add nuw nsw i32 %win_no.2230, 1
  %exitcond.not = icmp eq i32 %inc143, 5
  br i1 %exitcond.not, label %for.end144, label %for.inc142.for.body119_crit_edge

for.inc142.for.body119_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body119

for.end144:                                       ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1, align 4
  %call.i216 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %has_clksel = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_clksel, align 2
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lcd_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bus_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_fb_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %bus_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %has_clksel = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 5, i32 12
  %6 = ptrtoint ptr %has_clksel to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %has_clksel, align 2
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  %lcd_clk = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcd_clk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i26:                                       ; preds = %if.then
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end.i26.if.end_crit_edge, label %if.then3.i27

if.end.i26.if.end_crit_edge:                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then3.i27, %if.end.i26.if.end_crit_edge, %if.then.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void %11() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_fb_runtime_resume.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_fb_runtime_resume, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !280

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vidcon1 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %vidcon1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vidcon1, align 4
  %regs = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_fb_runtime_resume.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.82, i32 noundef %13, ptr noundef %add.ptr) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %vidcon110 = getelementptr inbounds %struct.s3c_fb_platdata, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %vidcon110 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vidcon110, align 4
  %regs11 = getelementptr inbounds %struct.s3c_fb, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs11, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %17) #7, !srcloc !281
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !65, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !84, !86, !88, !90, !91, !93, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !164, !165, !167, !169, !171, !173, !174, !176, !178, !180, !182, !183, !185, !186, !187, !188, !190, !192, !194, !195, !197, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !239, !241, !242, !244, !245, !247, !249, !250, !252, !254, !256, !258, !259, !261, !262, !264, !266, !268}
!llvm.named.register.sp = !{!270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @__initcall__kmod_s3c_fb__374_1808_s3c_fb_driver_init6, !1, !"__initcall__kmod_s3c_fb__374_1808_s3c_fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1808, i32 1}
!2 = !{ptr @__exitcall_s3c_fb_driver_exit, !1, !"__exitcall_s3c_fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author375, !4, !"__UNIQUE_ID_author375", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1810, i32 1}
!5 = !{ptr @__UNIQUE_ID_description376, !6, !"__UNIQUE_ID_description376", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1811, i32 1}
!7 = !{ptr @__UNIQUE_ID_file377, !8, !"__UNIQUE_ID_file377", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1812, i32 1}
!9 = !{ptr @__UNIQUE_ID_license378, !8, !"__UNIQUE_ID_license378", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias379, !11, !"__UNIQUE_ID_alias379", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1813, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1803, i32 11}
!14 = !{ptr @s3c_fb_driver, !15, !"s3c_fb_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1798, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1372, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c_fb_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c_fb_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1378, i32 3}
!26 = !{ptr @s3c_fb_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s3c_fb_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1386, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @s3c_fb_probe.__UNIQUE_ID_ddebug362, !29, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!32 = !{ptr @s3c_fb_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1392, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1394, i32 35}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1396, i32 3}
!39 = !{ptr @s3c_fb_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @s3c_fb_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1403, i32 36}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1405, i32 4}
!45 = !{ptr @s3c_fb_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @s3c_fb_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1423, i32 3}
!49 = !{ptr @s3c_fb_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @s3c_fb_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1431, i32 3}
!53 = !{ptr @s3c_fb_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @s3c_fb_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1435, i32 2}
!57 = !{ptr @s3c_fb_probe.__UNIQUE_ID_ddebug363, !56, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1444, i32 2}
!60 = !{ptr @s3c_fb_probe.__UNIQUE_ID_ddebug364, !59, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!61 = !{ptr @s3c_fb_probe.__UNIQUE_ID_ddebug365, !62, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1451, i32 3}
!63 = !{ptr @s3c_fb_probe.__UNIQUE_ID_ddebug366, !64, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1464, i32 3}
!65 = !{ptr @s3c_fb_probe.__UNIQUE_ID_ddebug367, !66, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1465, i32 3}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1479, i32 4}
!69 = !{ptr @s3c_fb_probe._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @s3c_fb_probe._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 971, i32 3}
!73 = !{ptr @s3c_fb_irq.__UNIQUE_ID_ddebug345, !72, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 954, i32 3}
!76 = !{ptr @s3c_fb_disable_irq.__UNIQUE_ID_ddebug344, !75, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1342, i32 2}
!79 = !{ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug357, !78, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!80 = !{ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug358, !81, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1343, i32 2}
!82 = !{ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug359, !83, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1344, i32 2}
!84 = !{ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug360, !85, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1345, i32 2}
!86 = !{ptr @s3c_fb_clear_win.__UNIQUE_ID_ddebug361, !87, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1352, i32 3}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1311, i32 2}
!90 = !{ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug353, !89, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!91 = !{ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug354, !92, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1316, i32 2}
!93 = !{ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug355, !94, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1321, i32 2}
!95 = !{ptr @s3c_fb_set_rgb_timing.__UNIQUE_ID_ddebug356, !96, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1327, i32 2}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 362, i32 2}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @s3c_fb_calc_pixclk.__UNIQUE_ID_ddebug311, !98, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1183, i32 2}
!103 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @s3c_fb_probe_win.__UNIQUE_ID_ddebug351, !102, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!105 = !{ptr @s3c_fb_probe_win.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1185, i32 2}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1212, i32 3}
!110 = !{ptr @s3c_fb_probe_win._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @s3c_fb_probe_win._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1254, i32 3}
!114 = !{ptr @s3c_fb_probe_win._entry.41, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @s3c_fb_probe_win._entry_ptr.43, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1264, i32 3}
!118 = !{ptr @s3c_fb_probe_win._entry.44, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @s3c_fb_probe_win._entry_ptr.46, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1268, i32 2}
!122 = !{ptr @s3c_fb_probe_win.__UNIQUE_ID_ddebug352, !121, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1274, i32 3}
!125 = !{ptr @s3c_fb_probe_win._entry.48, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @s3c_fb_probe_win._entry_ptr.50, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1278, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @s3c_fb_probe_win._entry.51, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @s3c_fb_probe_win._entry_ptr.54, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1088, i32 2}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug346, !133, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1093, i32 2}
!138 = !{ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug347, !137, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1104, i32 2}
!141 = !{ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug348, !140, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1110, i32 2}
!144 = !{ptr @s3c_fb_alloc_memory.__UNIQUE_ID_ddebug349, !143, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!145 = !{ptr @s3c_fb_ops, !146, !"s3c_fb_ops", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1039, i32 28}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 748, i32 2}
!149 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @s3c_fb_setcolreg.__UNIQUE_ID_ddebug336, !148, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 707, i32 2}
!153 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug332, !152, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!155 = !{ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug333, !156, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 713, i32 2}
!157 = !{ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug334, !158, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 718, i32 3}
!159 = !{ptr @s3c_fb_update_palette.__UNIQUE_ID_ddebug335, !160, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!160 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 720, i32 2}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 803, i32 2}
!163 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @s3c_fb_blank.__UNIQUE_ID_ddebug337, !162, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!165 = !{ptr @s3c_fb_blank.__UNIQUE_ID_ddebug338, !166, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 818, i32 3}
!167 = !{ptr @s3c_fb_blank.__UNIQUE_ID_ddebug339, !168, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 825, i32 3}
!169 = !{ptr @s3c_fb_blank.__UNIQUE_ID_ddebug340, !170, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 839, i32 2}
!171 = !{ptr @.str.66, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 430, i32 4}
!173 = !{ptr @shadow_protect_win.__UNIQUE_ID_ddebug314, !172, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!174 = !{ptr @shadow_protect_win.__UNIQUE_ID_ddebug315, !175, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!175 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 433, i32 4}
!176 = !{ptr @shadow_protect_win.__UNIQUE_ID_ddebug316, !177, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!177 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 438, i32 4}
!178 = !{ptr @shadow_protect_win.__UNIQUE_ID_ddebug317, !179, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!179 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 441, i32 4}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 472, i32 2}
!182 = !{ptr @s3c_fb_enable.__UNIQUE_ID_ddebug318, !181, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!183 = !{ptr @.str.68, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 892, i32 4}
!185 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @s3c_fb_pan_display._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @s3c_fb_pan_display._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @s3c_fb_pan_display.__UNIQUE_ID_ddebug341, !189, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 904, i32 2}
!190 = !{ptr @s3c_fb_pan_display.__UNIQUE_ID_ddebug342, !191, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!191 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 905, i32 2}
!192 = !{ptr @.str.70, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 934, i32 3}
!194 = !{ptr @s3c_fb_enable_irq.__UNIQUE_ID_ddebug343, !193, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 246, i32 2}
!197 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @s3c_fb_check_var.__UNIQUE_ID_ddebug304, !196, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 252, i32 3}
!201 = !{ptr @s3c_fb_check_var.__UNIQUE_ID_ddebug309, !200, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!202 = !{ptr @s3c_fb_check_var._entry, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 329, i32 3}
!204 = !{ptr @s3c_fb_check_var._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 333, i32 2}
!207 = !{ptr @s3c_fb_check_var.__UNIQUE_ID_ddebug310, !206, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!208 = !{ptr @.str.75, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 498, i32 2}
!210 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug319, !209, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!212 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug320, !213, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 531, i32 2}
!214 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug321, !215, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!215 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 541, i32 2}
!216 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug322, !217, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!217 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 544, i32 2}
!218 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug323, !219, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!219 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 551, i32 2}
!220 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug324, !221, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!221 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 557, i32 2}
!222 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug325, !223, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!223 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 566, i32 2}
!224 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug326, !225, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!225 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 581, i32 3}
!226 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug327, !227, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!227 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 658, i32 3}
!228 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug328, !229, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!229 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 659, i32 3}
!230 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug329, !231, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!231 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 662, i32 2}
!232 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug330, !233, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!233 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 663, i32 2}
!234 = !{ptr @s3c_fb_set_par.__UNIQUE_ID_ddebug331, !235, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!235 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 673, i32 3}
!236 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 414, i32 3}
!238 = !{ptr @vidosd_set_alpha.__UNIQUE_ID_ddebug313, !237, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!239 = !{ptr @.str.78, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 399, i32 3}
!241 = !{ptr @vidosd_set_size.__UNIQUE_ID_ddebug312, !240, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!242 = !{ptr @.str.79, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1152, i32 4}
!244 = !{ptr @s3c_fb_release_win.__UNIQUE_ID_ddebug350, !243, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!245 = !{ptr @s3cfb_pm_ops, !246, !"s3cfb_pm_ops", i1 false, i1 false}
!246 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1792, i32 32}
!247 = !{ptr @.str.80, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1580, i32 2}
!249 = !{ptr @s3c_fb_resume.__UNIQUE_ID_ddebug368, !248, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!250 = !{ptr @s3c_fb_resume.__UNIQUE_ID_ddebug369, !251, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!251 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1587, i32 3}
!252 = !{ptr @s3c_fb_resume.__UNIQUE_ID_ddebug370, !253, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!253 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1602, i32 3}
!254 = !{ptr @s3c_fb_resume.__UNIQUE_ID_ddebug371, !255, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!255 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1603, i32 3}
!256 = !{ptr @.str.81, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1615, i32 3}
!258 = !{ptr @s3c_fb_resume.__UNIQUE_ID_ddebug372, !257, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!259 = !{ptr @.str.82, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1650, i32 2}
!261 = !{ptr @s3c_fb_runtime_resume.__UNIQUE_ID_ddebug373, !260, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!262 = !{ptr @s3c_fb_driver_ids, !263, !"s3c_fb_driver_ids", i1 false, i1 false}
!263 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1780, i32 40}
!264 = !{ptr @s3c_fb_data_64xx, !265, !"s3c_fb_data_64xx", i1 false, i1 false}
!265 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1712, i32 33}
!266 = !{ptr @s3c_fb_data_64xx_wins, !267, !"s3c_fb_data_64xx_wins", i1 false, i1 false}
!267 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1659, i32 34}
!268 = !{ptr @s3c_fb_data_s3c2443, !269, !"s3c_fb_data_s3c2443", i1 false, i1 false}
!269 = !{!"../drivers/video/fbdev/s3c-fb.c", i32 1744, i32 33}
!270 = !{!"sp"}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{i64 2148736307, i64 2148736312, i64 2148736325, i64 2148736369, i64 2148736403, i64 2148736424}
!281 = !{i64 6274996}
!282 = !{i64 6275414}
!283 = !{i64 2156232109}
!284 = !{i64 2156137508}
!285 = !{i64 2156134480}
!286 = !{i64 2156211674}
!287 = !{i64 2148645026, i64 2148645306, i64 2148645640, i64 2148645974}
!288 = !{i64 1159482, i64 1159509, i64 1159531, i64 1159559}
!289 = !{i64 1159890, i64 1159917, i64 1159950, i64 1159971, i64 1159998, i64 1160024}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{i64 2156171510}
!292 = !{!"auto-init"}
!293 = !{i8 0, i8 2}
!294 = !{i64 2156055901}
!295 = !{i64 2156078541}
!296 = !{i64 2156096378}
!297 = !{i64 2156115444}
!298 = !{i64 5766427}
!299 = !{i64 5766624}
!300 = !{i64 2153251857}
!301 = !{i64 2156151570, i64 2156151850, i64 2156152184, i64 2156152518}
!302 = !{i64 2156101893}
!303 = !{i64 2156104716}
!304 = !{i64 6274376}
!305 = !{i64 2156046973}
!306 = !{i64 2156052678}
!307 = !{i64 2156131275}
!308 = !{i64 2156248390}
