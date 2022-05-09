; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/clps711x-fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/clps711x-fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.clps711x_fb_info = type { ptr, ptr, ptr, i32, %struct.fb_videomode, ptr, i32, i8 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_clps711x_fb__301_391_clps711x_fb_driver_init6 = internal global ptr @clps711x_fb_driver_init, section ".initcall6.init", align 4
@clps711x_fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clps711x_fb_probe, ptr @clps711x_fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clps711x_fb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clps711x_fb_driver_exit = internal global ptr @clps711x_fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [55 x i8] c"clps711x_fb.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [56 x i8] c"clps711x_fb.description=Cirrus Logic CLPS711X FB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [49 x i8] c"clps711x_fb.file=drivers/video/fbdev/clps711x-fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [24 x i8] c"clps711x_fb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clps711x-fb\00", [20 x i8] zeroinitializer }, align 32
@clps711x_fb_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,ep7209-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,ep7209-syscon1\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@clps711x_fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No display defined\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clps711x_fb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/clps711x-fb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clps711x_fb_probe._entry_ptr = internal global ptr @clps711x_fb_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ac-prescale\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmap-invert\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bits-per-pixel\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@clps711x_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clps711x_fb_check_var, ptr @clps711x_fb_set_par, ptr @clps711x_fb_setcolreg, ptr null, ptr @clps711x_fb_blank, ptr null, ptr @sys_fillrect, ptr @sys_copyarea, ptr @sys_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clps711x-lcd\00", [19 x i8] zeroinitializer }, align 32
@clps711x_lcd_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @clps711x_lcd_get_power, ptr @clps711x_lcd_set_power, ptr null, ptr null, ptr null, ptr @clps711x_lcd_check_fb }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"clps711x_fb_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 383, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 385, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"clps711x_fb_dt_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 377, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 272, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 278, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 280, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 291, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 292, i32 49 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 294, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 316, i32 41 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"clps711x_fb_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 345, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"clps711x_lcd_ops\00", align 1
@___asan_gen_.65 = private constant [37 x i8] c"../drivers/video/fbdev/clps711x-fb.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 202, i32 23 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_clps711x_fb_driver_exit, ptr @__initcall__kmod_clps711x_fb__301_391_clps711x_fb_driver_init6, ptr @clps711x_fb_driver_exit, ptr @clps711x_fb_probe._entry, ptr @clps711x_fb_probe._entry_ptr, ptr @clps711x_fb_driver, ptr @.str, ptr @clps711x_fb_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @clps711x_fb_ops, ptr @.str.12, ptr @clps711x_lcd_ops], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_fb_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_lcd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clps711x_fb_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clps711x_fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @clps711x_fb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !51
  %call = tail call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 84, ptr noundef %dev1) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_fb_release_crit_edge, label %if.end9

if.end5.out_fb_release_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end9:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call11 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %7, i32 noundef %add.i) #12
  %base = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %base, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.out_fb_release_crit_edge, label %if.end15

if.end9.out_fb_release_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end15:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call6, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 10
  %13 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mmio_start, align 4
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %16 = load i32, ptr %call6, align 4
  %sub.i237 = add i32 %15, 1
  %add.i238 = sub i32 %sub.i237, %16
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 11
  %17 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i238, ptr %mmio_len, align 4
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #12
  %call20 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call19) #12
  %18 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 25
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %18, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call20 to i32
  br label %out_fb_release

if.end24:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call19, align 4
  %and = and i32 %22, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_fb_release_crit_edge

if.end24.out_fb_release_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end28:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 12) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %alloc_apertures.exit.thread, label %if.end33

alloc_apertures.exit.thread:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %apertures248 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 31
  %24 = ptrtoint ptr %apertures248 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %apertures248, align 4
  br label %out_fb_release

if.end33:                                         ; preds = %if.end28
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call7.i.i.i, align 8
  %apertures = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 31
  %26 = ptrtoint ptr %apertures to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %apertures, align 4
  %end.i239 = getelementptr inbounds %struct.resource, ptr %call19, i32 0, i32 1
  %27 = ptrtoint ptr %end.i239 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i239, align 4
  %29 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call19, align 4
  %sub.i240 = add i32 %28, 1
  %add.i241 = sub i32 %sub.i240, %30
  %buffsize = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 3
  %31 = ptrtoint ptr %buffsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i241, ptr %buffsize, align 4
  %32 = load i32, ptr %call19, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %smem_start, align 4
  %34 = load ptr, ptr %apertures, align 4
  %ranges = getelementptr inbounds %struct.apertures_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %ranges, align 4
  %36 = load i32, ptr %buffsize, align 4
  %37 = load ptr, ptr %apertures, align 4
  %size = getelementptr inbounds %struct.apertures_struct, ptr %37, i32 2
  %38 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %size, align 4
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #12
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call45, ptr %4, align 4
  %cmp.i242 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call45 to i32
  br label %out_fb_release

if.end51:                                         ; preds = %if.end33
  %call52 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #12
  %syscon = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 2
  %41 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call52, ptr %syscon, align 4
  %cmp.i243 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %call52 to i32
  br label %out_fb_release

if.end58:                                         ; preds = %if.end51
  %call59 = tail call fastcc ptr @of_parse_phandle(ptr noundef %1)
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %do.end, label %if.end63

do.end:                                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #16
  br label %out_fb_release

if.end63:                                         ; preds = %if.end58
  %mode = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 4
  %call64 = tail call i32 @of_get_fb_videomode(ptr noundef nonnull %call59, ptr noundef %mode, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_node_put(ptr noundef nonnull %call59) #12
  br label %out_fb_release

if.end67:                                         ; preds = %if.end63
  %ac_prescale = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call59, ptr noundef nonnull @.str.8, ptr noundef %ac_prescale, i32 noundef 1, i32 noundef 0) #12
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %call59, ptr noundef nonnull @.str.9, ptr noundef null) #12
  %tobool.i = icmp ne ptr %call.i, null
  %cmap_invert = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 7
  %frombool = zext i1 %tobool.i to i8
  %43 = ptrtoint ptr %cmap_invert to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %cmap_invert, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 6
  %call.i.i244 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call59, ptr noundef nonnull @.str.10, ptr noundef %bits_per_pixel, i32 noundef 1, i32 noundef 0) #12
  %44 = tail call i32 @llvm.smin.i32(i32 %call.i.i244, i32 0) #12
  tail call void @of_node_put(ptr noundef nonnull %call59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i244)
  %tobool71.not = icmp sgt i32 %call.i.i244, -1
  br i1 %tobool71.not, label %if.end73, label %if.end67.out_fb_release_crit_edge

if.end67.out_fb_release_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end73:                                         ; preds = %if.end67
  %45 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %smem_start, align 4
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 3392
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  %conv = zext i8 %49 to i32
  %shl = shl i32 %conv, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %shl)
  %cmp.not = icmp eq i32 %46, %shl
  br i1 %cmp.not, label %if.end73.if.end83_crit_edge, label %if.then80

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %syscon, align 4
  %call.i245 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 0, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end73.if.end83_crit_edge
  %52 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %syscon, align 4
  %call85 = call i32 @regmap_read(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.out_fb_release_crit_edge

if.end83.out_fb_release_crit_edge:                ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end88:                                         ; preds = %if.end83
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %and89 = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body92, label %if.end88.if.end101_crit_edge

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

do.body92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smem_start, align 4
  %shr = lshr i32 %57, 28
  %conv97 = trunc i32 %shr to i8
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr99 = getelementptr i8, ptr %59, i32 3392
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 %conv97) #12, !srcloc !55
  %60 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %18, align 4
  %62 = ptrtoint ptr %buffsize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buffsize, align 4
  call void @mmioset(ptr noundef %61, i32 noundef 0, i32 noundef %63) #12
  br label %if.end101

if.end101:                                        ; preds = %do.body92, %if.end88.if.end101_crit_edge
  %call102 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  %lcd_pwr = getelementptr inbounds %struct.clps711x_fb_info, ptr %4, i32 0, i32 5
  %64 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call102, ptr %lcd_pwr, align 4
  %cmp105 = icmp eq ptr %call102, inttoptr (i32 -517 to ptr)
  br i1 %cmp105, label %if.end101.out_fb_release_crit_edge, label %if.end108

if.end101.out_fb_release_crit_edge:               ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end108:                                        ; preds = %if.end101
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 20
  %65 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @clps711x_fb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 2
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %flags, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 13
  %67 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %activate, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 14
  %68 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 15
  %69 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %width, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 25
  %70 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %vmode, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 3
  %71 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %type, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 12
  %72 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %accel, align 4
  %call116 = call i32 @strlcpy(ptr noundef %fix, ptr noundef nonnull @.str, i32 noundef 16) #12
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef %mode) #12
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 12
  %call119 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 16, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end108.out_fb_release_crit_edge

if.end108.out_fb_release_crit_edge:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_release

if.end122:                                        ; preds = %if.end108
  %call124 = call i32 @fb_set_var(ptr noundef nonnull %call2, ptr noundef %var) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end122.out_fb_dealloc_cmap_crit_edge

if.end122.out_fb_dealloc_cmap_crit_edge:          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_dealloc_cmap

if.end127:                                        ; preds = %if.end122
  %call128 = call i32 @register_framebuffer(ptr noundef nonnull %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.out_fb_dealloc_cmap_crit_edge

if.end127.out_fb_dealloc_cmap_crit_edge:          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fb_dealloc_cmap

if.end131:                                        ; preds = %if.end127
  %call132 = call ptr @devm_lcd_device_register(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %dev1, ptr noundef %4, ptr noundef nonnull @clps711x_lcd_ops) #12
  %cmp.i246 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.end135, label %if.end131.cleanup_crit_edge

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end135:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %call132 to i32
  call void @unregister_framebuffer(ptr noundef nonnull %call2) #12
  br label %out_fb_dealloc_cmap

out_fb_dealloc_cmap:                              ; preds = %if.end135, %if.end127.out_fb_dealloc_cmap_crit_edge, %if.end122.out_fb_dealloc_cmap_crit_edge
  %ret.0 = phi i32 [ %call124, %if.end122.out_fb_dealloc_cmap_crit_edge ], [ %call128, %if.end127.out_fb_dealloc_cmap_crit_edge ], [ %73, %if.end135 ]
  %74 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %syscon, align 4
  %call.i247 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 0, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @fb_dealloc_cmap(ptr noundef %cmap) #12
  br label %out_fb_release

out_fb_release:                                   ; preds = %out_fb_dealloc_cmap, %if.end108.out_fb_release_crit_edge, %if.end101.out_fb_release_crit_edge, %if.end83.out_fb_release_crit_edge, %if.end67.out_fb_release_crit_edge, %if.then66, %do.end, %if.then55, %if.then48, %alloc_apertures.exit.thread, %if.end24.out_fb_release_crit_edge, %if.then22, %if.end9.out_fb_release_crit_edge, %if.end5.out_fb_release_crit_edge
  %ret.1 = phi i32 [ %20, %if.then22 ], [ %40, %if.then48 ], [ %42, %if.then55 ], [ %call64, %if.then66 ], [ %44, %if.end67.out_fb_release_crit_edge ], [ %call85, %if.end83.out_fb_release_crit_edge ], [ %call119, %if.end108.out_fb_release_crit_edge ], [ %ret.0, %out_fb_dealloc_cmap ], [ -61, %do.end ], [ -2, %if.end5.out_fb_release_crit_edge ], [ -12, %if.end9.out_fb_release_crit_edge ], [ -22, %if.end24.out_fb_release_crit_edge ], [ -517, %if.end101.out_fb_release_crit_edge ], [ -12, %alloc_apertures.exit.thread ]
  call void @framebuffer_release(ptr noundef nonnull %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %out_fb_release, %if.end131.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_fb_release ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_fb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %syscon = getelementptr inbounds %struct.clps711x_fb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscon, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @unregister_framebuffer(ptr noundef %1) #12
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #12
  tail call void @framebuffer_release(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #4 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #12
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #12
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_fb_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clps711x_fb_check_var(ptr nocapture noundef %var, ptr nocapture noundef readnone %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %4 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %sub = add i32 %7, 15
  %div57 = lshr i32 %sub, 4
  %8 = add nsw i32 %div57, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %8)
  %9 = icmp ult i32 %8, -63
  br i1 %9, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %mul = mul i32 %7, %1
  %mul13 = mul i32 %mul, %11
  %sub15 = add i32 %mul13, 127
  %div1658 = lshr i32 %sub15, 7
  %12 = add nsw i32 %div1658, -8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8191, i32 %12)
  %13 = icmp ult i32 %12, -8191
  br i1 %13, label %if.end10.cleanup_crit_edge, label %if.end21

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msb_right, align 4
  %15 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %transp, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %length, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %msb_right24 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %msb_right24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %msb_right24, align 4
  %18 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %red, align 4
  %length29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %length29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %1, ptr %length29, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %20 = call ptr @memcpy(ptr %green, ptr %red, i32 12)
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %21 = call ptr @memcpy(ptr %blue, ptr %red, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp33 = icmp ugt i32 %1, 1
  %conv = zext i1 %cmp33 to i32
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %22 = ptrtoint ptr %grayscale to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %grayscale, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_fb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %7, %3
  %mul3 = mul i32 %mul, %5
  %div89 = lshr i32 %mul3, 3
  %buffsize = getelementptr inbounds %struct.clps711x_fb_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %buffsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div89, i32 %9)
  %cmp = icmp ugt i32 %div89, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.bb6_crit_edge
    i32 4, label %if.end.sw.bb6_crit_edge95
  ]

if.end.sw.bb6_crit_edge95:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge95
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 3, %sw.bb6 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %visual8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %visual8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %visual8, align 4
  %div1490 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div1490, ptr %line_length, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div89, ptr %smem_len, align 4
  %div2591 = lshr i32 %mul3, 7
  %sub = add nsw i32 %div2591, -1
  %14 = shl i32 %3, 9
  %15 = add i32 %14, -8192
  %shl = and i32 %15, -8192
  %or = or i32 %sub, %shl
  %ac_prescale = getelementptr inbounds %struct.clps711x_fb_info, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ac_prescale to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac_prescale, align 4
  %and = shl i32 %17, 25
  %shl30 = and i32 %and, 1040187392
  %or31 = or i32 %or, %shl30
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %19) #12
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %20 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixclock, align 4
  %div33 = udiv i32 1000000000, %21
  %mul34 = mul i32 %div33, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul34, i32 %call)
  %tobool.not = icmp ugt i32 %mul34, %call
  br i1 %tobool.not, label %sw.epilog.if.end37_crit_edge, label %if.then36

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %div35 = udiv i32 %call, %mul34
  %dec = shl i32 %div35, 19
  %phi.bo = add i32 %dec, 33030144
  %phi.bo93 = and i32 %phi.bo, 33030144
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %sw.epilog.if.end37_crit_edge
  %pps.0 = phi i32 [ %phi.bo93, %if.then36 ], [ 0, %sw.epilog.if.end37_crit_edge ]
  %or40 = or i32 %or31, %pps.0
  %22 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp43 = icmp eq i32 %23, 4
  %or45 = or i32 %or40, -2147483648
  %spec.select = select i1 %cmp43, i32 %or45, i32 %or40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp49 = icmp ugt i32 %23, 1
  %or51 = or i32 %spec.select, 1073741824
  %lcdcon.1 = select i1 %cmp49, i32 %or51, i32 %spec.select
  %syscon = getelementptr inbounds %struct.clps711x_fb_info, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %syscon, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !56
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %lcdcon.1)
  %base = getelementptr inbounds %struct.clps711x_fb_info, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !57
  %29 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %syscon, align 4
  %call.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %regno.highbits = lshr i32 %regno, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regno.highbits)
  %cmp.not = icmp eq i32 %regno.highbits, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %and = shl i32 %regno, 2
  %mul = and i32 %and, 28
  %shl1 = shl nuw i32 15, %mul
  %mul2 = mul i32 %red, 77
  %mul3 = mul i32 %green, 151
  %add = add i32 %mul3, %mul2
  %mul4 = mul i32 %blue, 28
  %add5 = add i32 %add, %mul4
  %shr = lshr i32 %add5, 20
  %shl6 = shl i32 %shr, %mul
  %and7 = and i32 %shl6, %shl1
  %cmap_invert = getelementptr inbounds %struct.clps711x_fb_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %cmap_invert to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmap_invert, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %sub = sub i32 15, %and7
  %spec.select = select i1 %tobool.not, i32 %and7, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %regno)
  %cmp10 = icmp ult i32 %regno, 8
  %cond = select i1 %cmp10, i32 640, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !59
  tail call void @arm_heavy_mb() #12
  %base = getelementptr inbounds %struct.clps711x_fb_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %cond
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !60
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !61
  %neg = xor i32 %shl1, -1
  %and12 = and i32 %9, %neg
  %or = or i32 %and12, %spec.select
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %10) #12, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clps711x_fb_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_lcd_get_power(ptr nocapture noundef readonly %lcddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lcd_pwr = getelementptr inbounds %struct.clps711x_fb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_pwr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @regulator_is_enabled(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_lcd_set_power(ptr nocapture noundef readonly %lcddev, i32 noundef %blank) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lcd_pwr = getelementptr inbounds %struct.clps711x_fb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_pwr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cmp = icmp eq i32 %blank, 0
  %call4 = tail call i32 @regulator_is_enabled(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br i1 %tobool.not, label %if.then5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_pwr, align 4
  %call7 = tail call i32 @regulator_enable(ptr noundef %5) #12
  br label %cleanup

if.else:                                          ; preds = %if.then
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %lcd_pwr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd_pwr, align 4
  %call13 = tail call i32 @regulator_disable(ptr noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else.cleanup_crit_edge, %if.then5, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then5 ], [ %call13, %if.then11 ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clps711x_lcd_check_fb(ptr nocapture noundef readonly %lcddev, ptr noundef readonly %fi) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fi, null
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i = getelementptr inbounds %struct.lcd_device, ptr %lcddev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %fi, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %cmp = icmp eq ptr %3, %1
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_clps711x_fb__301_391_clps711x_fb_driver_init6, !1, !"__initcall__kmod_clps711x_fb__301_391_clps711x_fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 391, i32 1}
!2 = !{ptr @__exitcall_clps711x_fb_driver_exit, !1, !"__exitcall_clps711x_fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 393, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 394, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 395, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 385, i32 12}
!12 = !{ptr @clps711x_fb_driver, !13, !"clps711x_fb_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 383, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 272, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 278, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 280, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @clps711x_fb_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @clps711x_fb_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 291, i32 29}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 292, i32 49}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 294, i32 35}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 316, i32 41}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 345, i32 38}
!36 = !{ptr @clps711x_fb_ops, !37, !"clps711x_fb_ops", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 156, i32 28}
!38 = !{ptr @clps711x_lcd_ops, !39, !"clps711x_lcd_ops", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 202, i32 23}
!40 = !{ptr @clps711x_fb_dt_ids, !41, !"clps711x_fb_dt_ids", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/clps711x-fb.c", i32 377, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{i64 4336425}
!53 = !{i64 2155970206}
!54 = !{i64 2155970489}
!55 = !{i64 4336030}
!56 = !{i64 2155968076}
!57 = !{i64 4336227}
!58 = !{i8 0, i8 2}
!59 = !{i64 2155966474}
!60 = !{i64 4336645}
!61 = !{i64 2155967409}
