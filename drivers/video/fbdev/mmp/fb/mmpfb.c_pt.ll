; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mmp/fb/mmpfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/mmp/fb/mmpfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mmpfb_info = type { ptr, i32, ptr, ptr, %struct.fb_videomode, i32, ptr, i32, i32, ptr, ptr, %struct.mutex, [16 x i32], i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmp_buffer_driver_mach_info = type { ptr, ptr, i32, i32, i32 }
%struct.mmp_path = type { %struct.list_head, ptr, i32, ptr, i32, ptr, ptr, %struct.mmp_mode, i32, i32, %struct.mutex, %struct.mmp_path_ops, i32, [0 x %struct.mmp_overlay] }
%struct.mmp_mode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmp_path_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mmp_overlay = type { i32, ptr, ptr, i32, %struct.mmp_addr, %struct.mmp_win, i32, i32, %struct.mutex, ptr }
%struct.mmp_addr = type { [6 x i32] }
%struct.mmp_win = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, [3 x i32] }
%struct.mmp_overlay_ops = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_mmpfb__303_667_mmpfb_init6 = internal global ptr @mmpfb_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author304 = internal constant [45 x i8] c"mmpfb.author=Zhou Zhu <zhou.zhu@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [58 x i8] c"mmpfb.description=Framebuffer driver for Marvell displays\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [44 x i8] c"mmpfb.file=drivers/video/fbdev/mmp/fb/mmpfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [18 x i8] c"mmpfb.license=GPL\00", section ".modinfo", align 1
@mmpfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmpfb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmp-fb\00", [25 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no platform data defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpfb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/mmp/fb/mmpfb.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr = internal global ptr @mmpfb_probe._entry, section ".printk_index", align 4
@mmpfb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fbi->access_ok\00", [16 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get the path %s\0A\00", [41 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.9 = internal global ptr @mmpfb_probe._entry.7, section ".printk_index", align 4
@mmpfb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 574, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"path %s get\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.13 = internal global ptr @mmpfb_probe._entry.10, section ".printk_index", align 4
@mmpfb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't alloc framebuffer\0A\00", [39 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.16 = internal global ptr @mmpfb_probe._entry.14, section ".printk_index", align 4
@mmpfb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 613, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fb %dk allocated\0A\00", [46 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.19 = internal global ptr @mmpfb_probe._entry.17, section ".printk_index", align 4
@mmpfb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register fb: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.22 = internal global ptr @mmpfb_probe._entry.20, section ".printk_index", align 4
@mmpfb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 631, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"loaded to /dev/fb%d <%s>.\0A\00", [37 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.25 = internal global ptr @mmpfb_probe._entry.23, section ".printk_index", align 4
@mmpfb_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mmp-fb: frame buffer device init failed\0A\00", [55 x i8] zeroinitializer }, align 32
@mmpfb_probe._entry_ptr.28 = internal global ptr @mmpfb_probe._entry.26, section ".printk_index", align 4
@modes_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 477, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get videomode num\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"modes_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@modes_setup._entry_ptr = internal global ptr @modes_setup._entry, section ".printk_index", align 4
@mmpfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmpfb_check_var, ptr @mmpfb_set_par, ptr @mmpfb_setcolreg, ptr null, ptr @mmpfb_blank, ptr @mmpfb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@var_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set par: no match mode, use best mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"var_update\00", [21 x i8] zeroinitializer }, align 32
@var_update._entry_ptr = internal global ptr @var_update._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 256, i64 257, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 512]
@__sancov_gen_cov_switch_values.34 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 512]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"mmpfb_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 656, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 658, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 547, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 564, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 569, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 574, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 609, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 613, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 625, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 630, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 649, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 477, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"mmpfb_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 455, i32 28 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [38 x i8] c"../drivers/video/fbdev/mmp/fb/mmpfb.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 364, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__initcall__kmod_mmpfb__303_667_mmpfb_init6, ptr @mmpfb_probe._entry, ptr @mmpfb_probe._entry.10, ptr @mmpfb_probe._entry.14, ptr @mmpfb_probe._entry.17, ptr @mmpfb_probe._entry.20, ptr @mmpfb_probe._entry.23, ptr @mmpfb_probe._entry.26, ptr @mmpfb_probe._entry.7, ptr @mmpfb_probe._entry_ptr, ptr @mmpfb_probe._entry_ptr.13, ptr @mmpfb_probe._entry_ptr.16, ptr @mmpfb_probe._entry_ptr.19, ptr @mmpfb_probe._entry_ptr.22, ptr @mmpfb_probe._entry_ptr.25, ptr @mmpfb_probe._entry_ptr.28, ptr @mmpfb_probe._entry_ptr.9, ptr @modes_setup._entry, ptr @modes_setup._entry_ptr, ptr @var_update._entry, ptr @var_update._entry_ptr, ptr @mmpfb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mmpfb_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mmpfb_ops, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modes_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @var_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpfb_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmpfb_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpfb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @framebuffer_alloc(i32 noundef 256, ptr noundef %dev) #10
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %fb_info = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fb_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %fb_info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %3, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %name8 = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %name8, align 4
  %default_pixfmt = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %default_pixfmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %default_pixfmt, align 4
  %pix_fmt = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pix_fmt, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  tail call fastcc void @pixfmt_to_var(ptr noundef %var, i32 noundef %11)
  %access_ok = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %access_ok, ptr noundef nonnull @.str.6, ptr noundef nonnull @mmpfb_probe.__key) #10
  %path_name = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %path_name, align 4
  %call13 = tail call ptr @mmp_get_path(ptr noundef %14) #10
  %path = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %path, align 4
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %do.end18, label %do.end24

do.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %path_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %17) #13
  br label %failed_destroy_mutex

do.end24:                                         ; preds = %if.end5
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %name27 = getelementptr inbounds %struct.mmp_path, ptr %call13, i32 0, i32 3
  %20 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef %21) #13
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %mmp_path_get_overlay.exit.thread, label %mmp_path_get_overlay.exit

mmp_path_get_overlay.exit.thread:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %overlay182 = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %overlay182 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %overlay182, align 4
  br label %failed_destroy_mutex

mmp_path_get_overlay.exit:                        ; preds = %do.end24
  %overlay_id = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %overlay_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %overlay_id, align 4
  %get_overlay.i = getelementptr inbounds %struct.mmp_path, ptr %23, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %get_overlay.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_overlay.i, align 4
  %call.i = tail call ptr %28(ptr noundef nonnull %23, i32 noundef %26) #10
  %overlay = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %overlay to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %overlay, align 4
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %mmp_path_get_overlay.exit.failed_destroy_mutex_crit_edge, label %mmp_overlay_set_fetch.exit

mmp_path_get_overlay.exit.failed_destroy_mutex_crit_edge: ; preds = %mmp_path_get_overlay.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_destroy_mutex

mmp_overlay_set_fetch.exit:                       ; preds = %mmp_path_get_overlay.exit
  %dmafetch_id = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %dmafetch_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dmafetch_id, align 4
  %ops.i = getelementptr inbounds %struct.mmp_overlay, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void %35(ptr noundef nonnull %call.i, i32 noundef %31) #10
  %call35 = tail call fastcc i32 @modes_setup(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %mmp_overlay_set_fetch.exit.failed_destroy_mutex_crit_edge, label %if.end38

mmp_overlay_set_fetch.exit.failed_destroy_mutex_crit_edge: ; preds = %mmp_overlay_set_fetch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_destroy_mutex

if.end38:                                         ; preds = %mmp_overlay_set_fetch.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp39.not = icmp eq i32 %call35, 0
  br i1 %cmp39.not, label %if.end38.if.end50_crit_edge, label %if.then40

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %yres = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres, align 4
  %mul = shl i32 %37, 1
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul, ptr %yres_virtual, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xres_virtual, align 4
  %mul46 = mul i32 %40, %mul
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 6
  %41 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bits_per_pixel, align 4
  %mul48 = mul i32 %mul46, %42
  %div177 = lshr i32 %mul48, 3
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.end38.if.end50_crit_edge
  %div177.sink = phi i32 [ %div177, %if.then40 ], [ 16588800, %if.end38.if.end50_crit_edge ]
  %43 = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 7
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div177.sink, ptr %43, align 4
  %add = add nuw nsw i32 %div177.sink, 4095
  %and = and i32 %add, 1073737728
  %fb_start_dma = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 8
  %call.i180 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %fb_start_dma, i32 noundef 3264, i32 noundef 0) #10
  %fb_start = getelementptr inbounds %struct.mmpfb_info, ptr %3, i32 0, i32 6
  %45 = ptrtoint ptr %fb_start to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i180, ptr %fb_start, align 4
  %cmp55 = icmp eq ptr %call.i180, null
  br i1 %cmp55, label %do.end59, label %do.end64

do.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %failed_destroy_mutex

do.end64:                                         ; preds = %if.end50
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %43, align 4
  %div67 = sdiv i32 %49, 1024
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.18, i32 noundef %div67) #13
  br i1 %cmp39.not, label %do.end64.if.end70_crit_edge, label %if.then69

do.end64.if.end70_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mmpfb_power(ptr noundef %3, i32 noundef 1)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %do.end64.if.end70_crit_edge
  %call71 = tail call fastcc i32 @fb_info_setup(ptr noundef nonnull %call, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.failed_free_buff_crit_edge, label %if.end74

if.end70.failed_free_buff_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_free_buff

if.end74:                                         ; preds = %if.end70
  %call75 = tail call i32 @register_framebuffer(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %do.end85

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call75) #13
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #10
  br label %failed_free_buff

do.end85:                                         ; preds = %if.end74
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 1
  %52 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %node, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.24, i32 noundef %53, ptr noundef %fix) #13
  %54 = ptrtoint ptr %fb_start to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fb_start, align 4
  %tobool88.not = icmp eq ptr %55, null
  br i1 %tobool88.not, label %do.end85.cleanup_crit_edge, label %if.then89

do.end85.cleanup_crit_edge:                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then89:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = tail call i32 @fb_prepare_logo(ptr noundef nonnull %call, i32 noundef 0) #10
  %call91 = tail call i32 @fb_show_logo(ptr noundef nonnull %call, i32 noundef 0) #10
  br label %cleanup

failed_free_buff:                                 ; preds = %do.end80, %if.end70.failed_free_buff_crit_edge
  %ret.0 = phi i32 [ %call71, %if.end70.failed_free_buff_crit_edge ], [ -6, %do.end80 ]
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %43, align 4
  %add95 = add i32 %57, 4095
  %and96 = and i32 %add95, -4096
  %58 = ptrtoint ptr %fb_start to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fb_start, align 4
  %60 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fb_start_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %and96, ptr noundef %59, i32 noundef %61, i32 noundef 0) #10
  br label %failed_destroy_mutex

failed_destroy_mutex:                             ; preds = %failed_free_buff, %do.end59, %mmp_overlay_set_fetch.exit.failed_destroy_mutex_crit_edge, %mmp_path_get_overlay.exit.failed_destroy_mutex_crit_edge, %mmp_path_get_overlay.exit.thread, %do.end18
  %ret.1 = phi i32 [ -12, %do.end59 ], [ %ret.0, %failed_free_buff ], [ -22, %do.end18 ], [ -22, %mmp_path_get_overlay.exit.failed_destroy_mutex_crit_edge ], [ %call35, %mmp_overlay_set_fetch.exit.failed_destroy_mutex_crit_edge ], [ -22, %mmp_path_get_overlay.exit.thread ]
  tail call void @mutex_destroy(ptr noundef %access_ok) #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.27) #13
  tail call void @framebuffer_release(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %failed_destroy_mutex, %if.then89, %do.end85.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %failed_destroy_mutex ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %do.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @pixfmt_to_var(ptr noundef writeonly %var, i32 noundef %pix_fmt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pix_fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pix_fmt, label %entry.sw.epilog_crit_edge [
    i32 256, label %entry.sw.epilog.sink.split_crit_edge
    i32 257, label %sw.bb11
    i32 262, label %sw.bb29
    i32 263, label %sw.bb47
    i32 264, label %sw.bb65
    i32 265, label %sw.bb83
    i32 260, label %sw.bb101
    i32 261, label %sw.bb119
    i32 5, label %sw.bb137
    i32 6, label %sw.bb155
    i32 3, label %sw.bb173
    i32 4, label %sw.bb191
    i32 0, label %sw.bb209
    i32 1, label %sw.bb227
    i32 2, label %sw.bb245
    i32 512, label %sw.bb263
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb101:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb119:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb137:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb155:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb173:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb191:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb209:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb227:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb245:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb263:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb263, %sw.bb245, %sw.bb227, %sw.bb209, %sw.bb191, %sw.bb173, %sw.bb155, %sw.bb137, %sw.bb119, %sw.bb101, %sw.bb83, %sw.bb65, %sw.bb47, %sw.bb29, %sw.bb11, %entry.sw.epilog.sink.split_crit_edge
  %.sink431 = phi i32 [ 8, %sw.bb263 ], [ 16, %sw.bb245 ], [ 16, %sw.bb227 ], [ 16, %sw.bb209 ], [ 16, %sw.bb191 ], [ 16, %sw.bb173 ], [ 12, %sw.bb155 ], [ 12, %sw.bb137 ], [ 24, %sw.bb119 ], [ 24, %sw.bb101 ], [ 32, %sw.bb83 ], [ 32, %sw.bb65 ], [ 32, %sw.bb47 ], [ 32, %sw.bb29 ], [ 16, %sw.bb11 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink430 = phi i32 [ 0, %sw.bb263 ], [ 0, %sw.bb245 ], [ 8, %sw.bb227 ], [ 8, %sw.bb209 ], [ 8, %sw.bb191 ], [ 8, %sw.bb173 ], [ 4, %sw.bb155 ], [ 4, %sw.bb137 ], [ 0, %sw.bb119 ], [ 16, %sw.bb101 ], [ 0, %sw.bb83 ], [ 16, %sw.bb65 ], [ 0, %sw.bb47 ], [ 16, %sw.bb29 ], [ 0, %sw.bb11 ], [ 11, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink429 = phi i32 [ 8, %sw.bb263 ], [ 16, %sw.bb245 ], [ 16, %sw.bb227 ], [ 16, %sw.bb209 ], [ 8, %sw.bb191 ], [ 8, %sw.bb173 ], [ 8, %sw.bb155 ], [ 8, %sw.bb137 ], [ 8, %sw.bb119 ], [ 8, %sw.bb101 ], [ 8, %sw.bb83 ], [ 8, %sw.bb65 ], [ 8, %sw.bb47 ], [ 8, %sw.bb29 ], [ 5, %sw.bb11 ], [ 5, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink428 = phi i32 [ 0, %sw.bb263 ], [ 4, %sw.bb245 ], [ 0, %sw.bb227 ], [ 4, %sw.bb209 ], [ 0, %sw.bb191 ], [ 4, %sw.bb173 ], [ 0, %sw.bb155 ], [ 2, %sw.bb137 ], [ 8, %sw.bb119 ], [ 8, %sw.bb101 ], [ 8, %sw.bb83 ], [ 8, %sw.bb65 ], [ 8, %sw.bb47 ], [ 8, %sw.bb29 ], [ 5, %sw.bb11 ], [ 5, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink427 = phi i32 [ 8, %sw.bb263 ], [ 16, %sw.bb245 ], [ 16, %sw.bb227 ], [ 16, %sw.bb209 ], [ 4, %sw.bb191 ], [ 4, %sw.bb173 ], [ 2, %sw.bb155 ], [ 2, %sw.bb137 ], [ 8, %sw.bb119 ], [ 8, %sw.bb101 ], [ 8, %sw.bb83 ], [ 8, %sw.bb65 ], [ 8, %sw.bb47 ], [ 8, %sw.bb29 ], [ 6, %sw.bb11 ], [ 6, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink426 = phi i32 [ 0, %sw.bb263 ], [ 8, %sw.bb245 ], [ 4, %sw.bb227 ], [ 0, %sw.bb209 ], [ 4, %sw.bb191 ], [ 0, %sw.bb173 ], [ 2, %sw.bb155 ], [ 0, %sw.bb137 ], [ 16, %sw.bb119 ], [ 0, %sw.bb101 ], [ 16, %sw.bb83 ], [ 0, %sw.bb65 ], [ 16, %sw.bb47 ], [ 0, %sw.bb29 ], [ 11, %sw.bb11 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink425 = phi i32 [ 8, %sw.bb263 ], [ 16, %sw.bb245 ], [ 16, %sw.bb227 ], [ 16, %sw.bb209 ], [ 4, %sw.bb191 ], [ 4, %sw.bb173 ], [ 2, %sw.bb155 ], [ 2, %sw.bb137 ], [ 8, %sw.bb119 ], [ 8, %sw.bb101 ], [ 8, %sw.bb83 ], [ 8, %sw.bb65 ], [ 8, %sw.bb47 ], [ 8, %sw.bb29 ], [ 5, %sw.bb11 ], [ 5, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink424 = phi i32 [ 0, %sw.bb263 ], [ 0, %sw.bb245 ], [ 0, %sw.bb227 ], [ 0, %sw.bb209 ], [ 0, %sw.bb191 ], [ 0, %sw.bb173 ], [ 0, %sw.bb155 ], [ 0, %sw.bb137 ], [ 0, %sw.bb119 ], [ 0, %sw.bb101 ], [ 24, %sw.bb83 ], [ 24, %sw.bb65 ], [ 0, %sw.bb47 ], [ 0, %sw.bb29 ], [ 0, %sw.bb11 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %sw.bb263 ], [ 0, %sw.bb245 ], [ 0, %sw.bb227 ], [ 0, %sw.bb209 ], [ 0, %sw.bb191 ], [ 0, %sw.bb173 ], [ 0, %sw.bb155 ], [ 0, %sw.bb137 ], [ 0, %sw.bb119 ], [ 0, %sw.bb101 ], [ 8, %sw.bb83 ], [ 8, %sw.bb65 ], [ 0, %sw.bb47 ], [ 0, %sw.bb29 ], [ 0, %sw.bb11 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %bits_per_pixel264 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %1 = ptrtoint ptr %bits_per_pixel264 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink431, ptr %bits_per_pixel264, align 4
  %red265 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %2 = ptrtoint ptr %red265 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink430, ptr %red265, align 4
  %length268 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %length268 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink429, ptr %length268, align 4
  %green269 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %4 = ptrtoint ptr %green269 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink428, ptr %green269, align 4
  %length272 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %length272 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink427, ptr %length272, align 4
  %blue273 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %6 = ptrtoint ptr %blue273 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink426, ptr %blue273, align 4
  %length276 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %length276 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink425, ptr %length276, align 4
  %transp277 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %8 = ptrtoint ptr %transp277 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink424, ptr %transp277, align 4
  %length280 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %length280 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %length280, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_get_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modes_setup(ptr noundef %fbi) unnamed_addr #0 align 64 {
entry:
  %mmp_modes = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mmp_modes) #10
  %0 = ptrtoint ptr %mmp_modes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mmp_modes, align 4, !annotation !75
  %fb_info = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 3
  %1 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fb_info, align 4
  %path = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 10
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %mmp_path_get_modelist.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

mmp_path_get_modelist.exit:                       ; preds = %entry
  %get_modelist.i = getelementptr inbounds %struct.mmp_path, ptr %4, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %get_modelist.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_modelist.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %4, ptr noundef nonnull %mmp_modes) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mmp_path_get_modelist.exit.do.end_crit_edge, label %if.end

mmp_path_get_modelist.exit.do.end_crit_edge:      ; preds = %mmp_path_get_modelist.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mmp_path_get_modelist.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %7 = ptrtoint ptr %fbi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fbi, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end:                                           ; preds = %mmp_path_get_modelist.exit
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 56) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !76

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #14
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end7.i.i.cleanup_crit_edge, label %for.body.lr.ph

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7.i.i
  %12 = ptrtoint ptr %mmp_modes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmp_modes, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041
  %arrayidx5 = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx, align 8
  %refresh.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 1
  %17 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refresh.i, align 4
  %refresh2.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 1
  %19 = ptrtoint ptr %refresh2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %refresh2.i, align 4
  %xres.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 2
  %20 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xres.i, align 4
  %xres3.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 2
  %22 = ptrtoint ptr %xres3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %xres3.i, align 8
  %yres.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 3
  %23 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres.i, align 4
  %yres4.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 3
  %25 = ptrtoint ptr %yres4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %yres4.i, align 4
  %pixclock_freq.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 13
  %26 = ptrtoint ptr %pixclock_freq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixclock_freq.i, align 4
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 1000000000000) #15, !srcloc !77
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t46 = trunc i64 %asmresult1.i.i to i32
  %pixclock.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 4
  %29 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %extract.t46, ptr %pixclock.i, align 8
  %left_margin.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 4
  %30 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %left_margin.i, align 4
  %left_margin185.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 5
  %32 = ptrtoint ptr %left_margin185.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %left_margin185.i, align 4
  %right_margin.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 5
  %33 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %right_margin.i, align 4
  %right_margin186.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 6
  %35 = ptrtoint ptr %right_margin186.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %right_margin186.i, align 8
  %upper_margin.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 6
  %36 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %upper_margin.i, align 4
  %upper_margin187.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 7
  %38 = ptrtoint ptr %upper_margin187.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %upper_margin187.i, align 4
  %lower_margin.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 7
  %39 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lower_margin.i, align 4
  %lower_margin188.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 8
  %41 = ptrtoint ptr %lower_margin188.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %lower_margin188.i, align 8
  %hsync_len.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 8
  %42 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hsync_len.i, align 4
  %hsync_len189.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 9
  %44 = ptrtoint ptr %hsync_len189.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hsync_len189.i, align 4
  %vsync_len.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 9
  %45 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vsync_len.i, align 4
  %vsync_len190.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 10
  %47 = ptrtoint ptr %vsync_len190.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vsync_len190.i, align 8
  %hsync_invert.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 10
  %48 = ptrtoint ptr %hsync_invert.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hsync_invert.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool191.not.i = icmp ne i32 %49, 0
  %cond192.i = zext i1 %tobool191.not.i to i32
  %vsync_invert.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 11
  %50 = ptrtoint ptr %vsync_invert.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vsync_invert.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool193.not.i = icmp eq i32 %51, 0
  %cond194.i = select i1 %tobool193.not.i, i32 0, i32 2
  %or195.i = or i32 %cond194.i, %cond192.i
  %sync.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 11
  %52 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or195.i, ptr %sync.i, align 4
  %invert_pixclock.i = getelementptr %struct.mmp_mode, ptr %13, i32 %i.041, i32 12
  %53 = ptrtoint ptr %invert_pixclock.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %invert_pixclock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool196.not.i = icmp eq i32 %54, 0
  %cond197.i = select i1 %tobool196.not.i, i32 0, i32 8
  %vmode.i = getelementptr %struct.fb_videomode, ptr %call8.i.i, i32 %i.041, i32 12
  %55 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond197.i, ptr %vmode.i, align 8
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %modelist = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 13
  call void @fb_videomode_to_modelist(ptr noundef nonnull %call8.i.i, i32 noundef %call.i, ptr noundef %modelist) #10
  %mode = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 4
  %56 = call ptr @memcpy(ptr %mode, ptr %call8.i.i, i32 56)
  %57 = ptrtoint ptr %mmp_modes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmp_modes, align 4
  %pix_fmt_out = getelementptr inbounds %struct.mmp_mode, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %pix_fmt_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pix_fmt_out, align 4
  %output_fmt = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 13
  %61 = ptrtoint ptr %output_fmt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %output_fmt, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 6
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef %mode) #10
  %62 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %path, align 4
  %tobool.not.i34 = icmp eq ptr %63, null
  br i1 %tobool.not.i34, label %for.end.mmp_path_set_mode.exit_crit_edge, label %if.then.i35

for.end.mmp_path_set_mode.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmp_path_set_mode.exit

if.then.i35:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %mmp_modes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmp_modes, align 4
  %set_mode.i = getelementptr inbounds %struct.mmp_path, ptr %63, i32 0, i32 11, i32 3
  %66 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_mode.i, align 4
  call void %67(ptr noundef nonnull %63, ptr noundef %65) #10
  br label %mmp_path_set_mode.exit

mmp_path_set_mode.exit:                           ; preds = %if.then.i35, %for.end.mmp_path_set_mode.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mmp_path_set_mode.exit, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %mmp_path_set_mode.exit ], [ 0, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mmp_modes) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmpfb_power(ptr nocapture noundef readonly %fbi, i32 noundef %power) unnamed_addr #0 align 64 {
entry:
  %addr = alloca %struct.mmp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool.not = icmp eq i32 %power, 0
  %0 = call ptr @memset(ptr %addr, i32 255, i32 24)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %fb_info = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 3
  %1 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fb_info, align 4
  tail call fastcc void @mmpfb_set_win(ptr noundef %2)
  %3 = getelementptr inbounds i8, ptr %addr, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 20)
  %fb_start_dma = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 8
  %5 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fb_start_dma, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %10, %8
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %12
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %2, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_pixel, align 4
  %mul3 = mul i32 %add, %14
  %div14 = lshr i32 %mul3, 3
  %add4 = add i32 %div14, %6
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4, ptr %addr, align 4
  %overlay = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 9
  %16 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %overlay, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.mmp_overlay, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %set_addr.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %set_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_addr.i, align 4
  %call.i = call i32 %21(ptr noundef nonnull %17, ptr noundef nonnull %addr) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %overlay5 = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 9
  %22 = ptrtoint ptr %overlay5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %overlay5, align 4
  %tobool.not.i15 = icmp eq ptr %23, null
  br i1 %tobool.not.i15, label %if.end.mmp_overlay_set_onoff.exit_crit_edge, label %if.then.i17

if.end.mmp_overlay_set_onoff.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmp_overlay_set_onoff.exit

if.then.i17:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i16 = getelementptr inbounds %struct.mmp_overlay, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i16, align 4
  %set_onoff.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %set_onoff.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_onoff.i, align 4
  call void %27(ptr noundef nonnull %23, i32 noundef %power) #10
  br label %mmp_overlay_set_onoff.exit

mmp_overlay_set_onoff.exit:                       ; preds = %if.then.i17, %if.end.mmp_overlay_set_onoff.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fb_info_setup(ptr noundef %info, ptr noundef %fbi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12352, ptr %flags, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %node, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %name = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call ptr @strcpy(ptr noundef %fix, ptr noundef %3) #16
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 4
  %5 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type_aux, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %xpanstep, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres, align 4
  %conv = trunc i32 %8 to i16
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %9 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %10 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %ywrapstep, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %11 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %accel, align 4
  %fb_start_dma = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 8
  %12 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fb_start_dma, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %smem_start, align 4
  %fb_size = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 7
  %15 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fb_size, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %smem_len, align 4
  %pix_fmt = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 5
  %18 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pix_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %19)
  %cmp = icmp eq i32 %19, 512
  %cond = select i1 %cmp, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %visual, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %24, %22
  %div46 = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %25 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div46, ptr %line_length, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %26 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mmpfb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 12
  %pseudo_palette15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %27 = ptrtoint ptr %pseudo_palette15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pseudo_palette, ptr %pseudo_palette15, align 4
  %fb_start = getelementptr inbounds %struct.mmpfb_info, ptr %fbi, i32 0, i32 6
  %28 = ptrtoint ptr %fb_start to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fb_start, align 4
  %30 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %30, align 4
  %32 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fb_size, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %34 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %screen_size, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call17 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %spec.select = select i1 %cmp18, i32 -12, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_prepare_logo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_show_logo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmpfb_set_win(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %win = alloca %struct.mmp_win, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %win) #10
  %2 = getelementptr inbounds i8, ptr %win, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %xres = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres, align 4
  %conv = trunc i32 %5 to i16
  %xdst = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 2
  %6 = ptrtoint ptr %xdst to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %xdst, align 4
  %7 = ptrtoint ptr %win to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %win, align 4
  %yres = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %conv3 = trunc i32 %9 to i16
  %ydst = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 3
  %10 = ptrtoint ptr %ydst to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %ydst, align 2
  %ysrc = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 1
  %11 = ptrtoint ptr %ysrc to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3, ptr %ysrc, align 2
  %pix_fmt = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pix_fmt, align 4
  %pix_fmt4 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 10
  %14 = ptrtoint ptr %pix_fmt4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pix_fmt4, align 4
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %13, label %sw.default.i [
    i32 256, label %entry.pixfmt_to_stride.exit.thread_crit_edge
    i32 257, label %entry.pixfmt_to_stride.exit.thread_crit_edge23
    i32 258, label %entry.pixfmt_to_stride.exit.thread_crit_edge24
    i32 259, label %entry.pixfmt_to_stride.exit.thread_crit_edge25
    i32 0, label %entry.pixfmt_to_stride.exit.thread_crit_edge26
    i32 1, label %entry.pixfmt_to_stride.exit.thread_crit_edge27
    i32 2, label %entry.pixfmt_to_stride.exit.thread_crit_edge28
    i32 262, label %entry.sw.bb1.i_crit_edge
    i32 263, label %entry.sw.bb1.i_crit_edge29
    i32 264, label %entry.sw.bb1.i_crit_edge30
    i32 265, label %entry.sw.bb1.i_crit_edge31
    i32 260, label %entry.sw.bb2.i_crit_edge
    i32 261, label %entry.sw.bb2.i_crit_edge32
    i32 3, label %entry.cond.true_crit_edge
    i32 4, label %entry.cond.true_crit_edge33
    i32 5, label %entry.cond.true_crit_edge34
    i32 6, label %entry.cond.true_crit_edge35
    i32 512, label %entry.cond.true_crit_edge36
  ]

entry.cond.true_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.cond.true_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.cond.true_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.cond.true_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

entry.sw.bb2.i_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

entry.sw.bb1.i_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge29:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

entry.pixfmt_to_stride.exit.thread_crit_edge28:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

entry.pixfmt_to_stride.exit.thread_crit_edge27:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

entry.pixfmt_to_stride.exit.thread_crit_edge26:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

entry.pixfmt_to_stride.exit.thread_crit_edge25:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

entry.pixfmt_to_stride.exit.thread_crit_edge24:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

entry.pixfmt_to_stride.exit.thread_crit_edge23:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

entry.pixfmt_to_stride.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge29, %entry.sw.bb1.i_crit_edge30, %entry.sw.bb1.i_crit_edge31
  br label %pixfmt_to_stride.exit.thread

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge32
  br label %pixfmt_to_stride.exit.thread

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pixfmt_to_stride.exit.thread

pixfmt_to_stride.exit.thread:                     ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.pixfmt_to_stride.exit.thread_crit_edge, %entry.pixfmt_to_stride.exit.thread_crit_edge23, %entry.pixfmt_to_stride.exit.thread_crit_edge24, %entry.pixfmt_to_stride.exit.thread_crit_edge25, %entry.pixfmt_to_stride.exit.thread_crit_edge26, %entry.pixfmt_to_stride.exit.thread_crit_edge27, %entry.pixfmt_to_stride.exit.thread_crit_edge28
  %retval.0.i.ph = phi i32 [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge ], [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge23 ], [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge24 ], [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge25 ], [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge26 ], [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge27 ], [ 2, %entry.pixfmt_to_stride.exit.thread_crit_edge28 ], [ 4, %sw.bb1.i ], [ 3, %sw.bb2.i ], [ 0, %sw.default.i ]
  %xres_virtual19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %xres_virtual19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres_virtual19, align 4
  %mul20 = mul i32 %17, %retval.0.i.ph
  %pitch21 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 11
  %18 = ptrtoint ptr %pitch21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul20, ptr %pitch21, align 4
  br label %cond.end

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge33, %entry.cond.true_crit_edge34, %entry.cond.true_crit_edge35, %entry.cond.true_crit_edge36
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xres_virtual, align 4
  %pitch = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 11
  %21 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pitch, align 4
  %shr = lshr i32 %20, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %pixfmt_to_stride.exit.thread
  %cond = phi i32 [ %shr, %cond.true ], [ 0, %pixfmt_to_stride.exit.thread ]
  %arrayidx9 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %arrayidx11, align 4
  %overlay = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %overlay, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %cond.end.mmp_overlay_set_win.exit_crit_edge, label %if.then.i

cond.end.mmp_overlay_set_win.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmp_overlay_set_win.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.mmp_overlay, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %set_win.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %set_win.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_win.i, align 4
  call void %29(ptr noundef nonnull %25, ptr noundef nonnull %win) #10
  br label %mmp_overlay_set_win.exit

mmp_overlay_set_win.exit:                         ; preds = %if.then.i, %cond.end.mmp_overlay_set_win.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %win) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmpfb_check_var(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset, align 4
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %add = add i32 %7, %5
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp1 = icmp ugt i32 %add, %9
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %10 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %add4 = add i32 %13, %11
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %14 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %15)
  %cmp5 = icmp ugt i32 %add4, %15
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %3, 3
  %mul = mul i32 %9, %shr
  %mul11 = mul i32 %mul, %15
  %fb_size = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %fb_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11, i32 %17)
  %cmp12 = icmp ugt i32 %mul11, %17
  %. = select i1 %cmp12, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpfb_set_par(ptr noundef %info) #0 align 64 {
entry:
  %addr = alloca %struct.mmp_addr, align 4
  %mode = alloca %struct.mmp_mode, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addr) #10
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %mode) #10
  %var1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %if.end94.i.i [
    i32 8, label %entry.if.end.i_crit_edge
    i32 16, label %land.lhs.true.i.i
    i32 12, label %land.lhs.true19.i.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %entry
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp3.i.i = icmp eq i32 %6, 8
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true42.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %green.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length5.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %7 = ptrtoint ptr %length5.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp6.i.i = icmp eq i32 %8, 4
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true4.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true4.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true4.i.i
  %length8.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %9 = ptrtoint ptr %length8.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp9.i.i = icmp eq i32 %10, 4
  br i1 %cmp9.i.i, label %if.then10.i.i, label %land.lhs.true7.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true7.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %blue.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %green.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %green.i.i, align 4
  %13 = ptrtoint ptr %blue.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blue.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp14.not.i.i = icmp ult i32 %12, %14
  %..i.i = select i1 %cmp14.not.i.i, i32 4, i32 3
  br label %if.end.i

land.lhs.true19.i.i:                              ; preds = %entry
  %length21.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %15 = ptrtoint ptr %length21.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp22.i.i = icmp eq i32 %16, 8
  br i1 %cmp22.i.i, label %land.lhs.true23.i.i, label %land.lhs.true19.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true19.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true23.i.i:                              ; preds = %land.lhs.true19.i.i
  %green24.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length25.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %17 = ptrtoint ptr %length25.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp26.i.i = icmp eq i32 %18, 2
  br i1 %cmp26.i.i, label %land.lhs.true27.i.i, label %land.lhs.true23.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true23.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true23.i.i
  %length29.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %19 = ptrtoint ptr %length29.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp30.i.i = icmp eq i32 %20, 2
  br i1 %cmp30.i.i, label %if.then31.i.i, label %land.lhs.true27.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true27.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %blue28.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %21 = ptrtoint ptr %green24.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %green24.i.i, align 4
  %23 = ptrtoint ptr %blue28.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blue28.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp36.not.i.i = icmp ult i32 %22, %24
  %.189.i.i = select i1 %cmp36.not.i.i, i32 6, i32 5
  br label %if.end.i

land.lhs.true42.i.i:                              ; preds = %land.lhs.true.i.i
  %red43.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp45.i.i = icmp eq i32 %6, 16
  br i1 %cmp45.i.i, label %land.lhs.true46.i.i, label %land.lhs.true70.i.i

land.lhs.true46.i.i:                              ; preds = %land.lhs.true42.i.i
  %green47.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length48.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %25 = ptrtoint ptr %length48.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp49.i.i = icmp eq i32 %26, 16
  br i1 %cmp49.i.i, label %land.lhs.true50.i.i, label %land.lhs.true46.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true46.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true50.i.i:                              ; preds = %land.lhs.true46.i.i
  %blue51.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length52.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %27 = ptrtoint ptr %length52.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length52.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp53.i.i = icmp eq i32 %28, 16
  br i1 %cmp53.i.i, label %if.then54.i.i, label %land.lhs.true50.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true50.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

if.then54.i.i:                                    ; preds = %land.lhs.true50.i.i
  %29 = ptrtoint ptr %red43.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %red43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp57.i.i = icmp eq i32 %30, 0
  br i1 %cmp57.i.i, label %if.then54.i.i.if.end.i_crit_edge, label %if.else59.i.i

if.then54.i.i.if.end.i_crit_edge:                 ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else59.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %green47.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %green47.i.i, align 4
  %33 = ptrtoint ptr %blue51.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blue51.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp64.not.i.i = icmp ult i32 %32, %34
  %.190.i.i = zext i1 %cmp64.not.i.i to i32
  br label %if.end.i

land.lhs.true70.i.i:                              ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp73.i.i = icmp ult i32 %6, 6
  br i1 %cmp73.i.i, label %land.lhs.true74.i.i, label %land.lhs.true70.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true70.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true74.i.i:                              ; preds = %land.lhs.true70.i.i
  %length76.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %35 = ptrtoint ptr %length76.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length76.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %cmp77.i.i = icmp ult i32 %36, 7
  br i1 %cmp77.i.i, label %land.lhs.true78.i.i, label %land.lhs.true74.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true74.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true78.i.i:                              ; preds = %land.lhs.true74.i.i
  %blue79.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length80.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %37 = ptrtoint ptr %length80.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length80.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp81.i.i = icmp ult i32 %38, 6
  br i1 %cmp81.i.i, label %if.then82.i.i, label %land.lhs.true78.i.i.land.lhs.true97.i.i_crit_edge

land.lhs.true78.i.i.land.lhs.true97.i.i_crit_edge: ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

if.then82.i.i:                                    ; preds = %land.lhs.true78.i.i
  %length83.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %39 = ptrtoint ptr %length83.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length83.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp84.i.i = icmp eq i32 %40, 0
  br i1 %cmp84.i.i, label %if.then85.i.i, label %if.then82.i.i.land.lhs.true97.i.i_crit_edge

if.then82.i.i.land.lhs.true97.i.i_crit_edge:      ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

if.then85.i.i:                                    ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %red43.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %red43.i.i, align 4
  %43 = ptrtoint ptr %blue79.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blue79.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp90.not.i.i = icmp ult i32 %42, %44
  %.191.i.i = select i1 %cmp90.not.i.i, i32 257, i32 256
  br label %if.end.i

if.end94.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %3)
  %cmp96.i.i = icmp ult i32 %3, 33
  br i1 %cmp96.i.i, label %if.end94.i.i.land.lhs.true97.i.i_crit_edge, label %if.end94.i.i.cleanup_crit_edge

if.end94.i.i.cleanup_crit_edge:                   ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94.i.i.land.lhs.true97.i.i_crit_edge:       ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i.i

land.lhs.true97.i.i:                              ; preds = %if.end94.i.i.land.lhs.true97.i.i_crit_edge, %if.then82.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true78.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true74.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true70.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true50.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true46.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true27.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true23.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true19.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true7.i.i.land.lhs.true97.i.i_crit_edge, %land.lhs.true4.i.i.land.lhs.true97.i.i_crit_edge
  %red98.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length99.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %45 = ptrtoint ptr %length99.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length99.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %46)
  %cmp100.i.i = icmp ult i32 %46, 9
  br i1 %cmp100.i.i, label %land.lhs.true101.i.i, label %land.lhs.true97.i.i.cleanup_crit_edge

land.lhs.true97.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true101.i.i:                             ; preds = %land.lhs.true97.i.i
  %length103.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %47 = ptrtoint ptr %length103.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length103.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %48)
  %cmp104.i.i = icmp ult i32 %48, 9
  br i1 %cmp104.i.i, label %land.lhs.true105.i.i, label %land.lhs.true101.i.i.cleanup_crit_edge

land.lhs.true101.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true105.i.i:                             ; preds = %land.lhs.true101.i.i
  %blue106.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length107.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %49 = ptrtoint ptr %length107.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length107.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %50)
  %cmp108.i.i = icmp ult i32 %50, 9
  br i1 %cmp108.i.i, label %if.then109.i.i, label %land.lhs.true105.i.i.cleanup_crit_edge

land.lhs.true105.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then109.i.i:                                   ; preds = %land.lhs.true105.i.i
  %51 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %if.then109.i.i.if.else139.i.i_crit_edge [
    i32 24, label %land.lhs.true112.i.i
    i32 32, label %land.lhs.true127.i.i
  ]

if.then109.i.i.if.else139.i.i_crit_edge:          ; preds = %if.then109.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else139.i.i

land.lhs.true112.i.i:                             ; preds = %if.then109.i.i
  %length114.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %52 = ptrtoint ptr %length114.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length114.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp115.i.i = icmp eq i32 %53, 0
  br i1 %cmp115.i.i, label %if.then116.i.i, label %land.lhs.true112.i.i.if.else139.i.i_crit_edge

land.lhs.true112.i.i.if.else139.i.i_crit_edge:    ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else139.i.i

if.then116.i.i:                                   ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %red98.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %red98.i.i, align 4
  %56 = ptrtoint ptr %blue106.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %blue106.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp121.not.i.i = icmp ult i32 %55, %57
  %.192.i.i = select i1 %cmp121.not.i.i, i32 261, i32 260
  br label %if.end.i

land.lhs.true127.i.i:                             ; preds = %if.then109.i.i
  %transp128.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %58 = ptrtoint ptr %transp128.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %transp128.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %59)
  %cmp130.i.i = icmp eq i32 %59, 24
  br i1 %cmp130.i.i, label %if.then131.i.i, label %land.lhs.true127.i.i.if.else139.i.i_crit_edge

land.lhs.true127.i.i.if.else139.i.i_crit_edge:    ; preds = %land.lhs.true127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else139.i.i

if.then131.i.i:                                   ; preds = %land.lhs.true127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %red98.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %red98.i.i, align 4
  %62 = ptrtoint ptr %blue106.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %blue106.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp136.not.i.i = icmp ult i32 %61, %63
  %.193.i.i = select i1 %cmp136.not.i.i, i32 265, i32 264
  br label %if.end.i

if.else139.i.i:                                   ; preds = %land.lhs.true127.i.i.if.else139.i.i_crit_edge, %land.lhs.true112.i.i.if.else139.i.i_crit_edge, %if.then109.i.i.if.else139.i.i_crit_edge
  %64 = ptrtoint ptr %red98.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %red98.i.i, align 4
  %66 = ptrtoint ptr %blue106.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blue106.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp144.not.i.i = icmp ult i32 %65, %67
  %.194.i.i = select i1 %cmp144.not.i.i, i32 263, i32 262
  br label %if.end.i

if.end.i:                                         ; preds = %if.else139.i.i, %if.then131.i.i, %if.then116.i.i, %if.then85.i.i, %if.else59.i.i, %if.then54.i.i.if.end.i_crit_edge, %if.then31.i.i, %if.then10.i.i, %entry.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %.194.i.i, %if.else139.i.i ], [ %.193.i.i, %if.then131.i.i ], [ %.192.i.i, %if.then116.i.i ], [ %.191.i.i, %if.then85.i.i ], [ %.190.i.i, %if.else59.i.i ], [ 2, %if.then54.i.i.if.end.i_crit_edge ], [ %.189.i.i, %if.then31.i.i ], [ %..i.i, %if.then10.i.i ], [ 512, %entry.if.end.i_crit_edge ]
  tail call fastcc void @pixfmt_to_var(ptr noundef %var1.i, i32 noundef %retval.0.i.ph.i) #10
  %pix_fmt2.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %pix_fmt2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i.ph.i, ptr %pix_fmt2.i, align 4
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call3.i = tail call ptr @fb_match_mode(ptr noundef %var1.i, ptr noundef %modelist.i) #10
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.32) #13
  %call6.i = tail call ptr @fb_find_best_mode(ptr noundef %var1.i, ptr noundef %modelist.i) #10
  tail call void @fb_videomode_to_var(ptr noundef %var1.i, ptr noundef %call6.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge
  %m.0.i = phi ptr [ %call3.i, %if.end.i.if.end_crit_edge ], [ %call6.i, %do.end.i ]
  %mode.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4
  %71 = call ptr @memcpy(ptr %mode.i, ptr %m.0.i, i32 56)
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %yres.i, align 4
  %mul.i = shl i32 %73, 1
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %74 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul.i, ptr %yres_virtual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %retval.0.i.ph.i)
  %cmp8.i = icmp eq i32 %retval.0.i.ph.i, 512
  %cond.i = select i1 %cmp8.i, i32 3, i32 2
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %75 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %cond.i, ptr %visual.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %76 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %xres_virtual.i, align 4
  %78 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bits_per_pixel.i.i, align 4
  %mul9.i = mul i32 %79, %77
  %div38.i = lshr i32 %mul9.i, 3
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %80 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div38.i, ptr %line_length.i, align 4
  %conv.i = trunc i32 %73 to i16
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %81 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i, ptr %ypanstep.i, align 2
  %output_fmt = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 13
  %82 = ptrtoint ptr %output_fmt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %output_fmt, align 4
  %84 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mode.i, align 4
  %86 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %mode, align 4
  %refresh.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %refresh.i, align 4
  %refresh2.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 1
  %89 = ptrtoint ptr %refresh2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %refresh2.i, align 4
  %xres.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 2
  %90 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %xres.i, align 4
  %xres3.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 2
  %92 = ptrtoint ptr %xres3.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %xres3.i, align 4
  %yres.i22 = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 3
  %93 = ptrtoint ptr %yres.i22 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %yres.i22, align 4
  %yres4.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 3
  %95 = ptrtoint ptr %yres4.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %yres4.i, align 4
  %pixclock.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 4
  %96 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pixclock.i, align 4
  %98 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %97, i64 1000000000000) #15, !srcloc !77
  %asmresult1.i.i = extractvalue { i64, i64 } %98, 1
  %extract.t32 = trunc i64 %asmresult1.i.i to i32
  %pixclock_freq.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 13
  %99 = ptrtoint ptr %pixclock_freq.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %extract.t32, ptr %pixclock_freq.i, align 4
  %left_margin.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 5
  %100 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %left_margin.i, align 4
  %left_margin185.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 4
  %102 = ptrtoint ptr %left_margin185.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %left_margin185.i, align 4
  %right_margin.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 6
  %103 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %right_margin.i, align 4
  %right_margin186.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 5
  %105 = ptrtoint ptr %right_margin186.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %right_margin186.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 7
  %106 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %upper_margin.i, align 4
  %upper_margin187.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 6
  %108 = ptrtoint ptr %upper_margin187.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %upper_margin187.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 8
  %109 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lower_margin.i, align 4
  %lower_margin188.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 7
  %111 = ptrtoint ptr %lower_margin188.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %lower_margin188.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 9
  %112 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hsync_len.i, align 4
  %hsync_len189.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 8
  %114 = ptrtoint ptr %hsync_len189.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %hsync_len189.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 10
  %115 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vsync_len.i, align 4
  %vsync_len190.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 9
  %117 = ptrtoint ptr %vsync_len190.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %vsync_len190.i, align 4
  %sync.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 11
  %118 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sync.i, align 4
  %and191.i = and i32 %119, 1
  %hsync_invert.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 10
  %120 = ptrtoint ptr %hsync_invert.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and191.i, ptr %hsync_invert.i, align 4
  %and198.i = lshr i32 %119, 1
  %and198.lobit.i = and i32 %and198.i, 1
  %vsync_invert.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 11
  %121 = ptrtoint ptr %vsync_invert.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and198.lobit.i, ptr %vsync_invert.i, align 4
  %vmode.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 4, i32 12
  %122 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vmode.i, align 4
  %and204.i = lshr i32 %123, 3
  %and204.lobit.i = and i32 %and204.i, 1
  %invert_pixclock.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 12
  %124 = ptrtoint ptr %invert_pixclock.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %and204.lobit.i, ptr %invert_pixclock.i, align 4
  %pix_fmt_out.i = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 14
  %125 = ptrtoint ptr %pix_fmt_out.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %83, ptr %pix_fmt_out.i, align 4
  %path = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 10
  %126 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %path, align 4
  %tobool.not.i25 = icmp eq ptr %127, null
  br i1 %tobool.not.i25, label %if.end.mmp_path_set_mode.exit_crit_edge, label %if.then.i

if.end.mmp_path_set_mode.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmp_path_set_mode.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %set_mode.i = getelementptr inbounds %struct.mmp_path, ptr %127, i32 0, i32 11, i32 3
  %128 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %set_mode.i, align 4
  call void %129(ptr noundef nonnull %127, ptr noundef nonnull %mode) #10
  br label %mmp_path_set_mode.exit

mmp_path_set_mode.exit:                           ; preds = %if.then.i, %if.end.mmp_path_set_mode.exit_crit_edge
  call fastcc void @mmpfb_set_win(ptr noundef %info)
  %130 = getelementptr inbounds i8, ptr %addr, i32 4
  %131 = call ptr @memset(ptr %130, i32 0, i32 20)
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %132 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %yoffset, align 4
  %134 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %xres_virtual.i, align 4
  %mul = mul i32 %135, %133
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %136 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %137
  %138 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bits_per_pixel.i.i, align 4
  %mul3 = mul i32 %add, %139
  %div21 = lshr i32 %mul3, 3
  %fb_start_dma = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 8
  %140 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fb_start_dma, align 4
  %add4 = add i32 %div21, %141
  %142 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add4, ptr %addr, align 4
  %overlay = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 9
  %143 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %overlay, align 4
  %tobool.not.i27 = icmp eq ptr %144, null
  br i1 %tobool.not.i27, label %mmp_path_set_mode.exit.cleanup_crit_edge, label %if.then.i28

mmp_path_set_mode.exit.cleanup_crit_edge:         ; preds = %mmp_path_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i28:                                      ; preds = %mmp_path_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.mmp_overlay, ptr %144, i32 0, i32 9
  %145 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i, align 4
  %set_addr.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %set_addr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set_addr.i, align 4
  %call.i = call i32 %148(ptr noundef nonnull %144, ptr noundef nonnull %addr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i28, %mmp_path_set_mode.exit.cleanup_crit_edge, %land.lhs.true105.i.i.cleanup_crit_edge, %land.lhs.true101.i.i.cleanup_crit_edge, %land.lhs.true97.i.i.cleanup_crit_edge, %if.end94.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mmp_path_set_mode.exit.cleanup_crit_edge ], [ 0, %if.then.i28 ], [ -22, %if.end94.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true97.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true101.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true105.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %mode) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmpfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %trans, ptr nocapture noundef readonly %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp1 = icmp ult i32 %regno, 16
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %red2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %5
  %shr.i = lshr i32 %and.i, %sub.i
  %6 = ptrtoint ptr %red2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %red2, align 4
  %shl.i = shl i32 %shr.i, %7
  %green4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i33 = and i32 %green, 65535
  %length.i34 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %8 = ptrtoint ptr %length.i34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i34, align 4
  %sub.i35 = sub i32 16, %9
  %shr.i36 = lshr i32 %and.i33, %sub.i35
  %10 = ptrtoint ptr %green4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %green4, align 4
  %shl.i37 = shl i32 %shr.i36, %11
  %or = or i32 %shl.i37, %shl.i
  %blue7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i38 = and i32 %blue, 65535
  %length.i39 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %12 = ptrtoint ptr %length.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i39, align 4
  %sub.i40 = sub i32 16, %13
  %shr.i41 = lshr i32 %and.i38, %sub.i40
  %14 = ptrtoint ptr %blue7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blue7, align 4
  %shl.i42 = shl i32 %shr.i41, %15
  %or9 = or i32 %or, %shl.i42
  %arrayidx = getelementptr %struct.mmpfb_info, ptr %3, i32 0, i32 12, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or9, ptr %arrayidx, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then, %entry.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %addr.i = alloca %struct.mmp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blank)
  %cmp = icmp eq i32 %blank, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addr.i) #10
  %2 = call ptr @memset(ptr %addr.i, i32 255, i32 24)
  br i1 %cmp, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %fb_info.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %fb_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb_info.i, align 4
  tail call fastcc void @mmpfb_set_win(ptr noundef %4) #10
  %5 = getelementptr inbounds i8, ptr %addr.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %fb_start_dma.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %fb_start_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fb_start_dma.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 6, i32 5
  %9 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yoffset.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %12, %10
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xoffset.i, align 4
  %add.i = add i32 %mul.i, %14
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits_per_pixel.i, align 4
  %mul3.i = mul i32 %add.i, %16
  %div14.i = lshr i32 %mul3.i, 3
  %add4.i = add i32 %div14.i, %8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add4.i, ptr %addr.i, align 4
  %overlay.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %overlay.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %overlay.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.mmp_overlay, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 4
  %set_addr.i.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %set_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_addr.i.i, align 4
  %call.i.i = call i32 %23(ptr noundef nonnull %19, ptr noundef nonnull %addr.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %overlay5.i = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %overlay5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %overlay5.i, align 4
  %tobool.not.i15.i = icmp eq ptr %25, null
  br i1 %tobool.not.i15.i, label %if.end.i.mmpfb_power.exit_crit_edge, label %if.then.i17.i

if.end.i.mmpfb_power.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmpfb_power.exit

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i16.i = getelementptr inbounds %struct.mmp_overlay, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %ops.i16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i16.i, align 4
  %set_onoff.i.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %set_onoff.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_onoff.i.i, align 4
  call void %29(ptr noundef nonnull %25, i32 noundef %conv) #10
  br label %mmpfb_power.exit

mmpfb_power.exit:                                 ; preds = %if.then.i17.i, %if.end.i.mmpfb_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addr.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %addr = alloca %struct.mmp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %addr) #10
  %2 = getelementptr inbounds i8, ptr %addr, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %mul = mul i32 %7, %5
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul, %9
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %mul1 = mul i32 %add, %11
  %div7 = lshr i32 %mul1, 3
  %fb_start_dma = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %fb_start_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fb_start_dma, align 4
  %add2 = add i32 %div7, %13
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add2, ptr %addr, align 4
  %overlay = getelementptr inbounds %struct.mmpfb_info, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %overlay, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %entry.mmp_overlay_set_addr.exit_crit_edge, label %if.then.i

entry.mmp_overlay_set_addr.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmp_overlay_set_addr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.mmp_overlay, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %set_addr.i = getelementptr inbounds %struct.mmp_overlay_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %set_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_addr.i, align 4
  %call.i = call i32 %20(ptr noundef nonnull %16, ptr noundef nonnull %addr) #10
  br label %mmp_overlay_set_addr.exit

mmp_overlay_set_addr.exit:                        ; preds = %if.then.i, %entry.mmp_overlay_set_addr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %addr) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_match_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_mmpfb__303_667_mmpfb_init6, !1, !"__initcall__kmod_mmpfb__303_667_mmpfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 667, i32 1}
!2 = !{ptr @__UNIQUE_ID_author304, !3, !"__UNIQUE_ID_author304", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 669, i32 1}
!4 = !{ptr @__UNIQUE_ID_description305, !5, !"__UNIQUE_ID_description305", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 670, i32 1}
!6 = !{ptr @__UNIQUE_ID_file306, !7, !"__UNIQUE_ID_file306", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 671, i32 1}
!8 = !{ptr @__UNIQUE_ID_license307, !7, !"__UNIQUE_ID_license307", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 658, i32 11}
!11 = !{ptr @mmpfb_driver, !12, !"mmpfb_driver", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 656, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 547, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mmpfb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @mmpfb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @mmpfb_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 564, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 569, i32 3}
!26 = !{ptr @mmpfb_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mmpfb_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 574, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mmpfb_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mmpfb_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 609, i32 3}
!35 = !{ptr @mmpfb_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mmpfb_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 613, i32 2}
!39 = !{ptr @mmpfb_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mmpfb_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 625, i32 3}
!43 = !{ptr @mmpfb_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mmpfb_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 630, i32 2}
!47 = !{ptr @mmpfb_probe._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mmpfb_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 649, i32 2}
!51 = !{ptr @mmpfb_probe._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mmpfb_probe._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 477, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @modes_setup._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @modes_setup._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @mmpfb_ops, !60, !"mmpfb_ops", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 455, i32 28}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/mmp/fb/mmpfb.c", i32 364, i32 3}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @var_update._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @var_update._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2148202905, i64 2148203185, i64 2148203519, i64 2148203853}
