; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/wm8505fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/wm8505fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.wm8505fb_info = type { %struct.fb_info, ptr, i32 }

@__initcall__kmod_wm8505fb__303_406_wm8505fb_driver_init6 = internal global ptr @wm8505fb_driver_init, section ".initcall6.init", align 4
@wm8505fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8505fb_probe, ptr @wm8505fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wmt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8505fb_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8505fb_driver_exit = internal global ptr @wm8505fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [50 x i8] c"wm8505fb.author=Ed Spiridonov <edo.rus@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [55 x i8] c"wm8505fb.description=Framebuffer driver for WMT WM8505\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [43 x i8] c"wm8505fb.file=drivers/video/fbdev/wm8505fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [24 x i8] c"wm8505fb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm8505-fb\00", [22 x i8] zeroinitializer }, align 32
@wmt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8505-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wm8505fb_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @wm8505fb_group, ptr null], [24 x i8] zeroinitializer }, align 32
@wm8505fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8505fb_set_par, ptr @wm8505fb_setcolreg, ptr null, ptr @wm8505fb_blank, ptr @wm8505fb_pan_display, ptr @wmt_ge_fillrect, ptr @wmt_ge_copyarea, ptr @sys_imageblit, ptr null, ptr @wmt_ge_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bits-per-pixel\00", [17 x i8] zeroinitializer }, align 32
@wm8505fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to allocate framebuffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8505fb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/wm8505fb.c\00", [33 x i8] zeroinitializer }, align 32
@wm8505fb_probe._entry_ptr = internal global ptr @wm8505fb_probe._entry, section ".printk_index", align 4
@wm8505fb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 348, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set parameters\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8505fb_probe._entry_ptr.9 = internal global ptr @wm8505fb_probe._entry.5, section ".printk_index", align 4
@wm8505fb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 353, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate color map\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8505fb_probe._entry_ptr.12 = internal global ptr @wm8505fb_probe._entry.10, section ".printk_index", align 4
@wm8505fb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 364, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register framebuffer device: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wm8505fb_probe._entry_ptr.15 = internal global ptr @wm8505fb_probe._entry.13, section ".printk_index", align 4
@wm8505fb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016fb%d: %s frame buffer at 0x%lx-0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@wm8505fb_probe._entry_ptr.18 = internal global ptr @wm8505fb_probe._entry.16, section ".printk_index", align 4
@wm8505fb_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wm8505fb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wm8505fb_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_contrast, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_contrast = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @contrast_show, ptr @contrast_store }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"contrast\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"wm8505fb_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 396, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 400, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"wmt_dt_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 391, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"wm8505fb_groups\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"wm8505fb_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 249, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 315, i32 48 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 332, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 348, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 353, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 363, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 370, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"wm8505fb_group\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 183, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"wm8505fb_attrs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 179, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"dev_attr_contrast\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 177, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [34 x i8] c"../drivers/video/fbdev/wm8505fb.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 157, i32 22 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_wm8505fb_driver_exit, ptr @__initcall__kmod_wm8505fb__303_406_wm8505fb_driver_init6, ptr @wm8505fb_driver_exit, ptr @wm8505fb_probe._entry, ptr @wm8505fb_probe._entry.10, ptr @wm8505fb_probe._entry.13, ptr @wm8505fb_probe._entry.16, ptr @wm8505fb_probe._entry.5, ptr @wm8505fb_probe._entry_ptr, ptr @wm8505fb_probe._entry_ptr.12, ptr @wm8505fb_probe._entry_ptr.15, ptr @wm8505fb_probe._entry_ptr.18, ptr @wm8505fb_probe._entry_ptr.9, ptr @wm8505fb_driver, ptr @.str, ptr @wmt_dt_ids, ptr @wm8505fb_groups, ptr @wm8505fb_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @wm8505fb_group, ptr @wm8505fb_attrs, ptr @dev_attr_contrast, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8505fb_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_contrast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8505fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8505fb_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8505fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8505fb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8505fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mode = alloca %struct.fb_videomode, align 4
  %bpp = alloca i32, align 4
  %fb_mem_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #9
  %0 = call ptr @memset(ptr %mode, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpp) #9
  %1 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bpp, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_mem_phys) #9
  %2 = ptrtoint ptr %fb_mem_phys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fb_mem_phys, align 4, !annotation !63
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1188, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fix = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %fix, ptr @.str, i32 10)
  %type = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 7
  %6 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 8
  %7 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %ywrapstep, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 12
  %8 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %accel, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wm8505fb_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 13124, ptr %flags, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %node, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 1124
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %pseudo_palette, align 4
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call16) #9
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call26 = tail call ptr @of_get_display_timings(ptr noundef %16) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call32 = call i32 @of_get_fb_videomode(ptr noundef %18, ptr noundef nonnull %mode, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull %bpp, i32 noundef 1, i32 noundef 0) #9
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool39.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool39.not, label %if.end41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %var = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %mode) #9
  %nonstd = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 12
  %22 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nonstd, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 13
  %23 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %activate, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 14
  %24 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 15
  %25 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %width, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %26 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %28 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres, align 4
  %30 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bpp, align 4
  %div199 = lshr i32 %31, 3
  %mul = shl i32 %27, 1
  %mul51 = mul i32 %mul, %29
  %mul52 = mul i32 %mul51, %div199
  %call.i200 = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %mul52, ptr noundef nonnull %fb_mem_phys, i32 noundef 3264, i32 noundef 0) #9
  %tobool55.not = icmp eq ptr %call.i200, null
  br i1 %tobool55.not, label %do.end, label %if.end58

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end41
  %32 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xres_virtual, align 4
  %35 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres, align 4
  %mul63 = shl i32 %36, 1
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 3
  %37 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul63, ptr %yres_virtual, align 4
  %38 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bpp, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 6
  %40 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %bits_per_pixel, align 4
  %41 = ptrtoint ptr %fb_mem_phys to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fb_mem_phys, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul52, ptr %smem_len, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 25
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i200, ptr %45, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 26
  %47 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul52, ptr %screen_size, align 4
  %contrast = getelementptr inbounds %struct.wm8505fb_info, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %contrast, align 4
  %call75 = call i32 @wm8505fb_set_par(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end82:                                         ; preds = %if.end58
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12
  %call84 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp = icmp slt i32 %call84, 0
  br i1 %cmp, label %do.end88, label %if.end90

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end90:                                         ; preds = %if.end82
  call fastcc void @wm8505fb_init_hw(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call94 = call i32 @register_framebuffer(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end99, label %do.end111

do.end99:                                         ; preds = %if.end90
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call94) #12
  %len = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12, i32 1
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool103.not = icmp eq i32 %51, 0
  br i1 %tobool103.not, label %do.end99.cleanup_crit_edge, label %if.then104

do.end99.cleanup_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then104:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %cleanup

do.end111:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %node, align 4
  %54 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %smem_start, align 4
  %56 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smem_len, align 4
  %add = add i32 %55, -1
  %sub = add i32 %add, %57
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %53, ptr noundef %fix, i32 noundef %55, i32 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %if.then104, %do.end99.cleanup_crit_edge, %do.end88, %do.end80, %do.end, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then21 ], [ %call75, %do.end80 ], [ -12, %do.end88 ], [ 0, %do.end111 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ %call32, %if.end29.cleanup_crit_edge ], [ %21, %if.end35.cleanup_crit_edge ], [ %call94, %if.then104 ], [ %call94, %do.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_mem_phys) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpp) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8505fb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !65
  %len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_display_timings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_fb_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8505fb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.if.end64_crit_edge [
    i32 32, label %if.end.if.end64.sink.split_crit_edge
    i32 16, label %if.then28
  ]

if.end.if.end64.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split

if.end64.sink.split:                              ; preds = %if.then28, %if.end.if.end64.sink.split_crit_edge
  %.sink106 = phi i32 [ 11, %if.then28 ], [ 16, %if.end.if.end64.sink.split_crit_edge ]
  %.sink105 = phi i32 [ 5, %if.then28 ], [ 8, %if.end.if.end64.sink.split_crit_edge ]
  %.sink103 = phi i32 [ 6, %if.then28 ], [ 8, %if.end.if.end64.sink.split_crit_edge ]
  %.sink102 = phi i32 [ 1, %if.then28 ], [ 2, %if.end.if.end64.sink.split_crit_edge ]
  %red30 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %3 = ptrtoint ptr %red30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink106, ptr %red30, align 4
  %length34 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %4 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink105, ptr %length34, align 4
  %msb_right37 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 2
  %5 = ptrtoint ptr %msb_right37 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %msb_right37, align 4
  %green39 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %6 = ptrtoint ptr %green39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink105, ptr %green39, align 4
  %length43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %7 = ptrtoint ptr %length43 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink103, ptr %length43, align 4
  %msb_right46 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 2
  %8 = ptrtoint ptr %msb_right46 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %msb_right46, align 4
  %blue48 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %9 = ptrtoint ptr %blue48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %blue48, align 4
  %length52 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %10 = ptrtoint ptr %length52 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink105, ptr %length52, align 4
  %msb_right55 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 2
  %11 = ptrtoint ptr %msb_right55 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msb_right55, align 4
  %visual57 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual57 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %visual57, align 4
  %xres_virtual59 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %xres_virtual59 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres_virtual59, align 4
  %shl60 = shl i32 %14, %.sink102
  %line_length62 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %15 = ptrtoint ptr %line_length62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl60, ptr %line_length62, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %if.end.if.end64_crit_edge
  tail call fastcc void @wm8505fb_set_timing(ptr noundef nonnull %info)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %contrast = getelementptr inbounds %struct.wm8505fb_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %contrast, align 4
  %shl65 = shl i32 %17, 16
  %shl67 = shl i32 %17, 8
  %or = or i32 %shl67, %17
  %or69 = or i32 %or, %shl65
  %18 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase, align 4
  %add.ptr70 = getelementptr i8, ptr %20, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %18) #9, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8505fb_init_hw(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %info, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %add, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %i.01
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #9, !srcloc !65
  %add = add nuw nsw i32 %i.01, 4
  %cmp = icmp ult i32 %i.01, 508
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body2

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_start, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_start, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %9) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 469958656) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 16777216) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %16 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase, align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %18) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xres_virtual, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase, align 4
  %add.ptr35 = getelementptr i8, ptr %25, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %23) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regbase, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 251658240) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regbase, align 4
  %add.ptr45 = getelementptr i8, ptr %29, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 67108864) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regbase, align 4
  %add.ptr50 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 16777216) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regbase, align 4
  %add.ptr55 = getelementptr i8, ptr %33, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 16777216) #9, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8505fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %red, 19595
  %mul2 = mul i32 %green, 38470
  %add = add i32 %mul2, %mul
  %mul3 = mul i32 %blue, 7471
  %add4 = add i32 %add, %mul3
  %shr = lshr i32 %add4, 16
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then1 ], [ %blue, %if.end.if.end5_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then1 ], [ %green, %if.end.if.end5_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then1 ], [ %red, %if.end.if.end5_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp6 = icmp ult i32 %regno, 16
  %or.cond = and i1 %cmp6, %cond
  br i1 %or.cond, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %4 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pseudo_palette, align 4
  %red10 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.0, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %7
  %shr.i = lshr i32 %and.i, %sub.i
  %8 = ptrtoint ptr %red10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %red10, align 4
  %shl.i = shl i32 %shr.i, %9
  %green13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i35 = and i32 %green.addr.0, 65535
  %length.i36 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %10 = ptrtoint ptr %length.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i36, align 4
  %sub.i37 = sub i32 16, %11
  %shr.i38 = lshr i32 %and.i35, %sub.i37
  %12 = ptrtoint ptr %green13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %green13, align 4
  %shl.i39 = shl i32 %shr.i38, %13
  %or = or i32 %shl.i39, %shl.i
  %blue17 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i40 = and i32 %blue.addr.0, 65535
  %length.i41 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %14 = ptrtoint ptr %length.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i41, align 4
  %sub.i42 = sub i32 16, %15
  %shr.i43 = lshr i32 %and.i40, %sub.i42
  %16 = ptrtoint ptr %blue17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blue17, align 4
  %shl.i44 = shl i32 %shr.i43, %17
  %or19 = or i32 %or, %shl.i44
  %arrayidx = getelementptr i32, ptr %5, i32 %regno
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or19, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8505fb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cond = icmp eq i32 %blank, 0
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wm8505fb_set_timing(ptr noundef %info)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #9, !srcloc !65
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8505fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %0 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xoffset, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %5 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yoffset, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %7) #9, !srcloc !65
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wmt_ge_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wmt_ge_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmt_ge_sync(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8505fb_set_timing(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %0 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %left_margin, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %add = add i32 %3, %1
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %4 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %right_margin, align 4
  %add3 = add i32 %add, %5
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %6 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hsync_len, align 4
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %8 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %upper_margin, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %add7 = add i32 %11, %9
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %12 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lower_margin, align 4
  %add9 = add i32 %add7, %13
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %14 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %regbase = getelementptr inbounds %struct.wm8505fb_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %1)
  %19 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase, align 4
  %add.ptr16 = getelementptr i8, ptr %20, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %18) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %add)
  %22 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %add3)
  %25 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase, align 4
  %add.ptr26 = getelementptr i8, ptr %26, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %24) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %7)
  %28 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regbase, align 4
  %add.ptr31 = getelementptr i8, ptr %29, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %27) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %9)
  %31 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase, align 4
  %add.ptr36 = getelementptr i8, ptr %32, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %30) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %add7)
  %34 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regbase, align 4
  %add.ptr41 = getelementptr i8, ptr %35, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %33) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %add9)
  %37 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase, align 4
  %add.ptr46 = getelementptr i8, ptr %38, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %36) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %15)
  %40 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regbase, align 4
  %add.ptr51 = getelementptr i8, ptr %41, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %39) #9, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase, align 4
  %add.ptr56 = getelementptr i8, ptr %43, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 16777216) #9, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @contrast_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %contrast = getelementptr inbounds %struct.wm8505fb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %contrast, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @contrast_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %tmp1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp1) #9
  %2 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp1, align 4, !annotation !63
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %tmp1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %contrast = getelementptr inbounds %struct.wm8505fb_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %contrast, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %7, label %if.end.i.if.end64.i_crit_edge [
    i32 32, label %if.end.i.if.end64.sink.split.i_crit_edge
    i32 16, label %if.then28.i
  ]

if.end.i.if.end64.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split.i

if.end.i.if.end64.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split.i

if.end64.sink.split.i:                            ; preds = %if.then28.i, %if.end.i.if.end64.sink.split.i_crit_edge
  %.sink106.i = phi i32 [ 11, %if.then28.i ], [ 16, %if.end.i.if.end64.sink.split.i_crit_edge ]
  %.sink105.i = phi i32 [ 5, %if.then28.i ], [ 8, %if.end.i.if.end64.sink.split.i_crit_edge ]
  %.sink103.i = phi i32 [ 6, %if.then28.i ], [ 8, %if.end.i.if.end64.sink.split.i_crit_edge ]
  %.sink102.i = phi i32 [ 1, %if.then28.i ], [ 2, %if.end.i.if.end64.sink.split.i_crit_edge ]
  %red30.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 8
  %9 = ptrtoint ptr %red30.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink106.i, ptr %red30.i, align 4
  %length34.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 8, i32 1
  %10 = ptrtoint ptr %length34.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink105.i, ptr %length34.i, align 4
  %msb_right37.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 8, i32 2
  %11 = ptrtoint ptr %msb_right37.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msb_right37.i, align 4
  %green39.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9
  %12 = ptrtoint ptr %green39.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink105.i, ptr %green39.i, align 4
  %length43.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9, i32 1
  %13 = ptrtoint ptr %length43.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink103.i, ptr %length43.i, align 4
  %msb_right46.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9, i32 2
  %14 = ptrtoint ptr %msb_right46.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msb_right46.i, align 4
  %blue48.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 10
  %15 = ptrtoint ptr %blue48.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %blue48.i, align 4
  %length52.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 10, i32 1
  %16 = ptrtoint ptr %length52.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink105.i, ptr %length52.i, align 4
  %msb_right55.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 10, i32 2
  %17 = ptrtoint ptr %msb_right55.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %msb_right55.i, align 4
  %visual57.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %visual57.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %visual57.i, align 4
  %xres_virtual59.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %xres_virtual59.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xres_virtual59.i, align 4
  %shl60.i = shl i32 %20, %.sink102.i
  %line_length62.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 9
  %21 = ptrtoint ptr %line_length62.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl60.i, ptr %line_length62.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end64.sink.split.i, %if.end.i.if.end64.i_crit_edge
  call fastcc void @wm8505fb_set_timing(ptr noundef nonnull %1) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %contrast, align 4
  %shl65.i = shl i32 %23, 16
  %shl67.i = shl i32 %23, 8
  %or.i = or i32 %shl67.i, %23
  %or69.i = or i32 %or.i, %shl65.i
  %24 = call i32 @llvm.bswap.i32(i32 %or69.i) #9
  %regbase.i = getelementptr inbounds %struct.wm8505fb_info, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %26, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %24) #9, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %if.end64.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end64.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !49, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_wm8505fb__303_406_wm8505fb_driver_init6, !1, !"__initcall__kmod_wm8505fb__303_406_wm8505fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 406, i32 1}
!2 = !{ptr @__exitcall_wm8505fb_driver_exit, !1, !"__exitcall_wm8505fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 408, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 409, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 410, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 400, i32 11}
!12 = !{ptr @wm8505fb_driver, !13, !"wm8505fb_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 396, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 315, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 332, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wm8505fb_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm8505fb_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 348, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wm8505fb_probe._entry.5, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @wm8505fb_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 353, i32 3}
!30 = !{ptr @wm8505fb_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm8505fb_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 363, i32 3}
!34 = !{ptr @wm8505fb_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wm8505fb_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 370, i32 2}
!38 = !{ptr @wm8505fb_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm8505fb_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @wm8505fb_ops, !41, !"wm8505fb_ops", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 249, i32 28}
!42 = !{ptr @wmt_dt_ids, !43, !"wmt_dt_ids", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 391, i32 34}
!44 = !{ptr @wm8505fb_groups, !45, !"wm8505fb_groups", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 183, i32 1}
!46 = !{ptr @wm8505fb_group, !45, !"wm8505fb_group", i1 false, i1 false}
!47 = !{ptr @wm8505fb_attrs, !48, !"wm8505fb_attrs", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 179, i32 26}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 177, i32 8}
!51 = !{ptr @dev_attr_contrast, !50, !"dev_attr_contrast", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/wm8505fb.c", i32 157, i32 22}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2155978614}
!65 = !{i64 6232806}
!66 = !{i64 2155959394}
!67 = !{i64 2155948175}
!68 = !{i64 2155948583}
!69 = !{i64 2155949057}
!70 = !{i64 2155949516}
!71 = !{i64 2155949919}
!72 = !{i64 2155950322}
!73 = !{i64 2155950772}
!74 = !{i64 2155951227}
!75 = !{i64 2155951625}
!76 = !{i64 2155952016}
!77 = !{i64 2155952406}
!78 = !{i64 2155968899}
!79 = !{i64 2155966812}
!80 = !{i64 2155967246}
!81 = !{i64 2155954026}
!82 = !{i64 2155954425}
!83 = !{i64 2155954840}
!84 = !{i64 2155955249}
!85 = !{i64 2155955659}
!86 = !{i64 2155956073}
!87 = !{i64 2155956488}
!88 = !{i64 2155956897}
!89 = !{i64 2155957307}
!90 = !{i64 2155957715}
