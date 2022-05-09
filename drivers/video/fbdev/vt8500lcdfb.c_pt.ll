; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/vt8500lcdfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/vt8500lcdfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.vt8500lcd_info = type { %struct.fb_info, ptr, ptr, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_vt8500lcdfb__303_483_vt8500lcd_driver_init6 = internal global ptr @vt8500lcd_driver_init, section ".initcall6.init", align 4
@vt8500lcd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vt8500lcd_probe, ptr @vt8500lcd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @via_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vt8500lcd_driver_exit = internal global ptr @vt8500lcd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [54 x i8] c"vt8500lcdfb.author=Alexey Charkov <alchark@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [61 x i8] c"vt8500lcdfb.description=LCD controller driver for VIA VT8500\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [49 x i8] c"vt8500lcdfb.file=drivers/video/fbdev/vt8500lcdfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [27 x i8] c"vt8500lcdfb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vt8500-lcd\00", [21 x i8] zeroinitializer }, align 32
@via_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VT8500 LCD\00", [21 x i8] zeroinitializer }, align 32
@vt8500lcd_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8500lcd_set_par, ptr @vt8500lcd_setcolreg, ptr null, ptr @vt8500lcd_blank, ptr @vt8500lcd_pan_display, ptr @wmt_ge_fillrect, ptr @wmt_ge_copyarea, ptr @sys_imageblit, ptr null, ptr @wmt_ge_sync, ptr @vt8500lcd_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no I/O memory resource defined\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vt8500lcd_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/vt8500lcdfb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr = internal global ptr @vt8500lcd_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt8500lcd\00", [22 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request I/O memory\0A\00", [34 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.10 = internal global ptr @vt8500lcd_probe._entry.8, section ".printk_index", align 4
@vt8500lcd_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.13 = internal global ptr @vt8500lcd_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bits-per-pixel\00", [17 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to allocate framebuffer\0A\00", [58 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.17 = internal global ptr @vt8500lcd_probe._entry.15, section ".printk_index", align 4
@vt8500lcd_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate palette buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.20 = internal global ptr @vt8500lcd_probe._entry.18, section ".printk_index", align 4
@vt8500lcd_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no IRQ defined\0A\00", [16 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.23 = internal global ptr @vt8500lcd_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCD\00", [28 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.27 = internal global ptr @vt8500lcd_probe._entry.25, section ".printk_index", align 4
@vt8500lcd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fbi->wait\00", [21 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate color map\0A\00", [34 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.31 = internal global ptr @vt8500lcd_probe._entry.29, section ".printk_index", align 4
@vt8500lcd_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set parameters\0A\00", [38 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.34 = internal global ptr @vt8500lcd_probe._entry.32, section ".printk_index", align 4
@vt8500lcd_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register framebuffer device: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@vt8500lcd_probe._entry_ptr.37 = internal global ptr @vt8500lcd_probe._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"vt8500lcd_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 474, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 478, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"via_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 469, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 288, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"vt8500lcd_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 242, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 317, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 321, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 323, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 329, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 345, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 354, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 369, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 376, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 381, i32 50 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 383, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 388, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 391, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 404, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [37 x i8] c"../drivers/video/fbdev/vt8500lcdfb.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 415, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_vt8500lcd_driver_exit, ptr @__initcall__kmod_vt8500lcdfb__303_483_vt8500lcd_driver_init6, ptr @vt8500lcd_driver_exit, ptr @vt8500lcd_probe._entry, ptr @vt8500lcd_probe._entry.11, ptr @vt8500lcd_probe._entry.15, ptr @vt8500lcd_probe._entry.18, ptr @vt8500lcd_probe._entry.21, ptr @vt8500lcd_probe._entry.25, ptr @vt8500lcd_probe._entry.29, ptr @vt8500lcd_probe._entry.32, ptr @vt8500lcd_probe._entry.35, ptr @vt8500lcd_probe._entry.8, ptr @vt8500lcd_probe._entry_ptr, ptr @vt8500lcd_probe._entry_ptr.10, ptr @vt8500lcd_probe._entry_ptr.13, ptr @vt8500lcd_probe._entry_ptr.17, ptr @vt8500lcd_probe._entry_ptr.20, ptr @vt8500lcd_probe._entry_ptr.23, ptr @vt8500lcd_probe._entry_ptr.27, ptr @vt8500lcd_probe._entry_ptr.31, ptr @vt8500lcd_probe._entry_ptr.34, ptr @vt8500lcd_probe._entry_ptr.37, ptr @vt8500lcd_driver, ptr @.str, ptr @via_dt_ids, ptr @.str.1, ptr @vt8500lcd_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @vt8500lcd_probe.__key, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500lcd_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt8500lcd_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt8500lcd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt8500lcd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %of_mode = alloca %struct.fb_videomode, align 4
  %bpp = alloca i32, align 4
  %fb_mem_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %of_mode) #6
  %0 = call ptr @memset(ptr %of_mode, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpp) #6
  %1 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bpp, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_mem_phys) #6
  %2 = ptrtoint ptr %fb_mem_phys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fb_mem_phys, align 4, !annotation !84
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1248, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fix = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %fix, ptr @.str.1, i32 11)
  %type = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %xpanstep, align 4
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
  %var = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6
  %nonstd = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 12
  %9 = ptrtoint ptr %nonstd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nonstd, align 4
  %activate = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 13
  %10 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %activate, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 14
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 15
  %12 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %width, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 25
  %13 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %vmode, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 20
  %14 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vt8500lcd_ops, ptr %fbops, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9028, ptr %flags, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %node, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 1184
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 27
  %17 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %pseudo_palette, align 4
  %call25 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %cmp = icmp eq ptr %call25, null
  br i1 %cmp, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %18 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call25, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call25, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %19
  %add.i = add i32 %sub.i, %21
  %call30 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %add.i, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %22 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call30, align 4
  %end.i285 = getelementptr inbounds %struct.resource, ptr %call30, i32 0, i32 1
  %24 = ptrtoint ptr %end.i285 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i285, align 4
  %sub.i286 = sub i32 1, %23
  %add.i287 = add i32 %sub.i286, %25
  %call40 = tail call ptr @ioremap(i32 noundef %23, i32 noundef %add.i287) #6
  %regbase = getelementptr inbounds %struct.vt8500lcd_info, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call40, ptr %regbase, align 4
  %cmp42 = icmp eq ptr %call40, null
  br i1 %cmp42, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %failed_free_res

if.end48:                                         ; preds = %if.end37
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call50 = tail call ptr @of_get_display_timings(ptr noundef %28) #6
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end48.failed_free_io_crit_edge, label %if.end53

if.end48.failed_free_io_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_free_io

if.end53:                                         ; preds = %if.end48
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call56 = call i32 @of_get_fb_videomode(ptr noundef %30, ptr noundef nonnull %of_mode, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.failed_free_io_crit_edge

if.end53.failed_free_io_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_free_io

if.end59:                                         ; preds = %if.end53
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.14, ptr noundef nonnull %bpp, i32 noundef 1, i32 noundef 0) #6
  %33 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool63.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool63.not, label %if.end65, label %if.end59.failed_free_io_crit_edge

if.end59.failed_free_io_crit_edge:                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_free_io

if.end65:                                         ; preds = %if.end59
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %of_mode, i32 0, i32 2
  %34 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %of_mode, i32 0, i32 3
  %36 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres, align 4
  %38 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bpp, align 4
  %div284 = lshr i32 %39, 3
  %mul = shl i32 %35, 1
  %mul66 = mul i32 %mul, %37
  %mul67 = mul i32 %mul66, %div284
  %call.i288 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul67, ptr noundef nonnull %fb_mem_phys, i32 noundef 3264, i32 noundef 0) #6
  %tobool70.not = icmp eq ptr %call.i288, null
  br i1 %tobool70.not, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3) #9
  br label %failed_free_io

if.end76:                                         ; preds = %if.end65
  %40 = ptrtoint ptr %fb_mem_phys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fb_mem_phys, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul67, ptr %smem_len, align 4
  %44 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 25
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i288, ptr %44, align 4
  %palette_size = getelementptr inbounds %struct.vt8500lcd_info, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %palette_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %palette_size, align 4
  %palette_phys = getelementptr inbounds %struct.vt8500lcd_info, ptr %call.i, i32 0, i32 3
  %call.i289 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %palette_phys, i32 noundef 3264, i32 noundef 0) #6
  %palette_cpu = getelementptr inbounds %struct.vt8500lcd_info, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %palette_cpu to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i289, ptr %palette_cpu, align 4
  %cmp86 = icmp eq ptr %call.i289, null
  br i1 %cmp86, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %failed_free_io

if.end92:                                         ; preds = %if.end76
  %call93 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end98, label %if.end100

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %failed_free_palette

if.end100:                                        ; preds = %if.end92
  %call.i290 = call i32 @request_threaded_irq(i32 noundef %call93, ptr noundef nonnull @vt8500lcd_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool102.not = icmp eq i32 %call.i290, 0
  br i1 %tobool102.not, label %do.body109, label %do.end106

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call.i290) #9
  br label %failed_free_palette

do.body109:                                       ; preds = %if.end100
  %wait = getelementptr inbounds %struct.vt8500lcd_info, ptr %call.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.28, ptr noundef nonnull @vt8500lcd_probe.__key) #6
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12
  %call113 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end118, label %if.end120

do.end118:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %failed_free_irq

if.end120:                                        ; preds = %do.body109
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %of_mode) #6
  %48 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %xres_virtual, align 4
  %51 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %yres, align 4
  %mul127 = shl i32 %52, 1
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 3
  %53 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul127, ptr %yres_virtual, align 4
  %54 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bpp, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 6
  %56 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bits_per_pixel, align 4
  %call133 = call i32 @vt8500lcd_set_par(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %do.body141, label %do.end138

do.end138:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %failed_free_cmap

do.body141:                                       ; preds = %if.end120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %smem_start, align 4
  %shr = lshr i32 %58, 22
  %59 = call i32 @llvm.bswap.i32(i32 %shr)
  %60 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regbase, align 4
  %add.ptr148 = getelementptr i8, ptr %61, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %59) #6, !srcloc !86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %palette_phys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %palette_phys, align 4
  %and = and i32 %63, -512
  %or = or i32 %and, 1
  %64 = call i32 @llvm.bswap.i32(i32 %or)
  %65 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regbase, align 4
  %add.ptr154 = getelementptr i8, ptr %66, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %64) #6, !srcloc !86
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call156 = call i32 @register_framebuffer(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.end161, label %do.body164

do.end161:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call156) #9
  br label %failed_free_cmap

do.body164:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regbase, align 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %71 = or i32 %70, 16777216
  %72 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regbase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !86
  br label %cleanup

failed_free_cmap:                                 ; preds = %do.end161, %do.end138
  %ret.0 = phi i32 [ %call133, %do.end138 ], [ %call156, %do.end161 ]
  %len = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12, i32 1
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool175.not = icmp eq i32 %75, 0
  br i1 %tobool175.not, label %failed_free_cmap.failed_free_irq_crit_edge, label %if.then176

failed_free_cmap.failed_free_irq_crit_edge:       ; preds = %failed_free_cmap
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_free_irq

if.then176:                                       ; preds = %failed_free_cmap
  call void @__sanitizer_cov_trace_pc() #8
  call void @fb_dealloc_cmap(ptr noundef %cmap) #6
  br label %failed_free_irq

failed_free_irq:                                  ; preds = %if.then176, %failed_free_cmap.failed_free_irq_crit_edge, %do.end118
  %ret.1 = phi i32 [ -12, %do.end118 ], [ %ret.0, %if.then176 ], [ %ret.0, %failed_free_cmap.failed_free_irq_crit_edge ]
  %call180 = call ptr @free_irq(i32 noundef %call93, ptr noundef nonnull %call.i) #6
  br label %failed_free_palette

failed_free_palette:                              ; preds = %failed_free_irq, %do.end106, %do.end98
  %ret.2 = phi i32 [ -19, %do.end98 ], [ -16, %do.end106 ], [ %ret.1, %failed_free_irq ]
  %76 = ptrtoint ptr %palette_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %palette_size, align 4
  %78 = ptrtoint ptr %palette_cpu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %palette_cpu, align 4
  %80 = ptrtoint ptr %palette_phys to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %palette_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %77, ptr noundef %79, i32 noundef %81, i32 noundef 0) #6
  br label %failed_free_io

failed_free_io:                                   ; preds = %failed_free_palette, %do.end90, %do.end74, %if.end59.failed_free_io_crit_edge, %if.end53.failed_free_io_crit_edge, %if.end48.failed_free_io_crit_edge
  %ret.3 = phi i32 [ %call56, %if.end53.failed_free_io_crit_edge ], [ %33, %if.end59.failed_free_io_crit_edge ], [ -12, %do.end90 ], [ %ret.2, %failed_free_palette ], [ -12, %do.end74 ], [ -22, %if.end48.failed_free_io_crit_edge ]
  %82 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regbase, align 4
  call void @iounmap(ptr noundef %83) #6
  br label %failed_free_res

failed_free_res:                                  ; preds = %failed_free_io, %do.end46
  %ret.4 = phi i32 [ -16, %do.end46 ], [ %ret.3, %failed_free_io ]
  %84 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call30, align 4
  %86 = ptrtoint ptr %end.i285 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %end.i285, align 4
  %sub.i292 = sub i32 1, %85
  %add.i293 = add i32 %sub.i292, %87
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %85, i32 noundef %add.i293) #6
  br label %cleanup

cleanup:                                          ; preds = %failed_free_res, %do.body164, %do.end35, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -16, %do.end35 ], [ %ret.4, %failed_free_res ], [ 0, %do.body164 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_mem_phys) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpp) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %of_mode) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %regbase = getelementptr inbounds %struct.vt8500lcd_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !86
  %len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %call5 = tail call ptr @free_irq(i32 noundef %call4, ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %palette_size = getelementptr inbounds %struct.vt8500lcd_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %palette_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %palette_size, align 4
  %palette_cpu = getelementptr inbounds %struct.vt8500lcd_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %palette_cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %palette_cpu, align 4
  %palette_phys = getelementptr inbounds %struct.vt8500lcd_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %palette_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %palette_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #6
  %12 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase, align 4
  tail call void @iounmap(ptr noundef %13) #6
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %14 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call7, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %17
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %add.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_display_timings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_fb_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase = getelementptr inbounds %struct.vt8500lcd_info, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wait = getelementptr inbounds %struct.vt8500lcd_info, ptr %dev_id, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #6, !srcloc !86
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ult i32 %1, 9
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %length, align 4
  %msb_right = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 2
  %4 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %msb_right, align 4
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %5 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %green, align 4
  %length15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %length15, align 4
  %msb_right18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 2
  %7 = ptrtoint ptr %msb_right18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msb_right18, align 4
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %8 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %blue, align 4
  %length25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %9 = ptrtoint ptr %length25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %length25, align 4
  %msb_right28 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %10 = call ptr @memset(ptr %msb_right28, i32 0, i32 16)
  %11 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %visual, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  %div.rhs.trunc = trunc i32 %1 to i8
  %div303 = udiv i8 8, %div.rhs.trunc
  %div.zext = zext i8 %div303 to i32
  %div40 = udiv i32 %13, %div.zext
  br label %if.end138

if.else:                                          ; preds = %if.end
  %transp43 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %14 = ptrtoint ptr %transp43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %transp43, align 4
  %length47 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %15 = ptrtoint ptr %length47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %length47, align 4
  %msb_right50 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 2
  %16 = ptrtoint ptr %msb_right50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %msb_right50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp53 = icmp eq i32 %1, 16
  br i1 %cmp53, label %if.end125.thread, label %if.end125

if.end125.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %red56 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %red56 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 11, ptr %red56, align 4
  %length60 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %18 = ptrtoint ptr %length60 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %length60, align 4
  %msb_right63 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 2
  %19 = ptrtoint ptr %msb_right63 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %msb_right63, align 4
  %green65 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %20 = ptrtoint ptr %green65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %green65, align 4
  %length69 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %21 = ptrtoint ptr %length69 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %length69, align 4
  %msb_right72 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 2
  %22 = ptrtoint ptr %msb_right72 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msb_right72, align 4
  %blue74 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %23 = ptrtoint ptr %blue74 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %blue74, align 4
  %length78 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %24 = ptrtoint ptr %length78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %length78, align 4
  %msb_right81 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 2
  %25 = ptrtoint ptr %msb_right81 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %msb_right81, align 4
  %visual127301 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %26 = ptrtoint ptr %visual127301 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %visual127301, align 4
  br label %cond.false

if.end125:                                        ; preds = %if.else
  %mul = shl i32 %1, 1
  %div85 = udiv i32 %mul, 3
  %red87 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %27 = ptrtoint ptr %red87 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div85, ptr %red87, align 4
  %div91 = udiv i32 %1, 3
  %length94 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %28 = ptrtoint ptr %length94 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div91, ptr %length94, align 4
  %msb_right97 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 2
  %29 = ptrtoint ptr %msb_right97 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %msb_right97, align 4
  %green102 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %30 = ptrtoint ptr %green102 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div91, ptr %green102, align 4
  %length109 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %31 = ptrtoint ptr %length109 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div91, ptr %length109, align 4
  %msb_right112 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 2
  %32 = ptrtoint ptr %msb_right112 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %msb_right112, align 4
  %blue114 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %33 = ptrtoint ptr %blue114 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %blue114, align 4
  %length121 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %34 = ptrtoint ptr %length121 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div91, ptr %length121, align 4
  %msb_right124 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 2
  %35 = ptrtoint ptr %msb_right124 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %msb_right124, align 4
  %visual127 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %36 = ptrtoint ptr %visual127 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %visual127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp130 = icmp ugt i32 %1, 16
  br i1 %cmp130, label %if.end125.cond.end_crit_edge, label %if.end125.cond.false_crit_edge

if.end125.cond.false_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end125.cond.end_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end125.cond.false_crit_edge, %if.end125.thread
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end125.cond.end_crit_edge
  %.sink306 = phi i32 [ 1, %cond.false ], [ 2, %if.end125.cond.end_crit_edge ]
  %xres_virtual134 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %xres_virtual134 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xres_virtual134, align 4
  %shl135 = shl i32 %38, %.sink306
  br label %if.end138

if.end138:                                        ; preds = %cond.end, %if.then1
  %shl135.sink = phi i32 [ %shl135, %cond.end ], [ %div40, %if.then1 ]
  %line_length137 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %39 = ptrtoint ptr %line_length137 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl135.sink, ptr %line_length137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp142 = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp142.1 = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp142.2 = icmp eq i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp142.3 = icmp eq i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp142.4 = icmp eq i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp142.5 = icmp eq i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp142.6 = icmp eq i32 %1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp142.7 = icmp eq i32 %1, 24
  %regbase = getelementptr inbounds %struct.vt8500lcd_info, ptr %info, i32 0, i32 1
  %40 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regbase, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %43 = and i32 %42, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #6, !srcloc !86
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end138
  %46 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regbase, align 4
  %add.ptr151 = getelementptr i8, ptr %47, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %49 = and i32 %48, 268435456
  %tobool156.not = icmp eq i32 %49, 0
  br i1 %tobool156.not, label %do.body157, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.body157:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %cmp142, i32 0, i32 10
  %spec.select.1 = select i1 %cmp142.1, i32 2, i32 %spec.select
  %spec.select.2 = select i1 %cmp142.2, i32 4, i32 %spec.select.1
  %spec.select.3 = select i1 %cmp142.3, i32 6, i32 %spec.select.2
  %spec.select.4 = select i1 %cmp142.4, i32 8, i32 %spec.select.3
  %spec.select.5 = select i1 %cmp142.5, i32 10, i32 %spec.select.4
  %spec.select.6 = select i1 %cmp142.6, i32 12, i32 %spec.select.5
  %spec.select.7 = select i1 %cmp142.7, i32 14, i32 %spec.select.6
  %50 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %51 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hsync_len, align 4
  %sub = shl i32 %52, 26
  %shl162 = add i32 %sub, -67108864
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %53 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %left_margin, align 4
  %and164 = shl i32 %54, 18
  %shl165 = and i32 %and164, 66846720
  %or = or i32 %shl165, %shl162
  %55 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %var, align 4
  %sub167 = shl i32 %56, 8
  %and168 = add i32 %sub167, 261888
  %shl169 = and i32 %and168, 261888
  %or170 = or i32 %shl169, %or
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %57 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %right_margin, align 4
  %and172 = and i32 %58, 255
  %or173 = or i32 %or170, %and172
  %59 = tail call i32 @llvm.bswap.i32(i32 %or173)
  %60 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regbase, align 4
  %add.ptr175 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %59) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %62 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vsync_len, align 4
  %sub180 = shl i32 %63, 26
  %shl182 = add i32 %sub180, -67108864
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %64 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %upper_margin, align 4
  %and184 = shl i32 %65, 18
  %shl185 = and i32 %and184, 66846720
  %or186 = or i32 %shl185, %shl182
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %yres, align 4
  %sub188 = shl i32 %67, 8
  %and189 = add i32 %sub188, 261888
  %shl190 = and i32 %and189, 261888
  %or191 = or i32 %shl190, %or186
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %68 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lower_margin, align 4
  %and193 = and i32 %69, 255
  %or194 = or i32 %or191, %and193
  %70 = tail call i32 @llvm.bswap.i32(i32 %or194)
  %71 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regbase, align 4
  %add.ptr196 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 %70) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %yres, align 4
  %sub202 = shl i32 %74, 2
  %and203 = add i32 %sub202, 8188
  %shl204 = and i32 %and203, 4096
  %75 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %var, align 4
  %sub207 = add i32 %76, 2047
  %and208 = and i32 %sub207, 1024
  %or209 = or i32 %shl204, %and208
  %77 = shl nuw nsw i32 %or209, 8
  %78 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regbase, align 4
  %add.ptr211 = getelementptr i8, ptr %79, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 %77) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regbase, align 4
  %add.ptr216 = getelementptr i8, ptr %81, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr216, i32 128) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %or221 = or i32 %spec.select.7, %50
  %or222 = or i32 %or221, 256
  %82 = tail call i32 @llvm.bswap.i32(i32 %or222)
  %83 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #6, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %do.body157, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body157 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end5.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %if.end5.do.body_crit_edge
    i32 3, label %if.end5.do.body_crit_edge60
  ]

if.end5.do.body_crit_edge60:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp6 = icmp ult i32 %regno, 16
  br i1 %cmp6, label %if.then7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %5 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pseudo_palette, align 4
  %red11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %and.i = and i32 %red.addr.0, 65535
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 16, %8
  %shr.i = lshr i32 %and.i, %sub.i
  %9 = ptrtoint ptr %red11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %red11, align 4
  %shl.i = shl i32 %shr.i, %10
  %green14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %and.i50 = and i32 %green.addr.0, 65535
  %length.i51 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %11 = ptrtoint ptr %length.i51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i51, align 4
  %sub.i52 = sub i32 16, %12
  %shr.i53 = lshr i32 %and.i50, %sub.i52
  %13 = ptrtoint ptr %green14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %green14, align 4
  %shl.i54 = shl i32 %shr.i53, %14
  %or = or i32 %shl.i54, %shl.i
  %blue18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %and.i55 = and i32 %blue.addr.0, 65535
  %length.i56 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %15 = ptrtoint ptr %length.i56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i56, align 4
  %sub.i57 = sub i32 16, %16
  %shr.i58 = lshr i32 %and.i55, %sub.i57
  %17 = ptrtoint ptr %blue18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blue18, align 4
  %shl.i59 = shl i32 %shr.i58, %18
  %or20 = or i32 %or, %shl.i59
  %arrayidx = getelementptr i32, ptr %6, i32 %regno
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or20, ptr %arrayidx, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %if.end5.do.body_crit_edge60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %and = and i32 %red.addr.0, 63488
  %shr23 = lshr i32 %green.addr.0, 5
  %and24 = and i32 %shr23, 2016
  %shr26 = lshr i32 %blue.addr.0, 11
  %and27 = and i32 %shr26, 31
  %or25 = or i32 %and24, %and27
  %or28 = or i32 %or25, %and
  %conv = trunc i32 %or28 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %palette_cpu = getelementptr inbounds %struct.vt8500lcd_info, ptr %info, i32 0, i32 2
  %21 = ptrtoint ptr %palette_cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %palette_cpu, align 4
  %mul29 = shl nuw nsw i32 %regno, 1
  %add.ptr30 = getelementptr i8, ptr %22, i32 %mul29
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %20) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then7, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %do.body ], [ 0, %if.then7 ], [ 1, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_blank(i32 noundef %blank, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %blank, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge26
    i32 3, label %entry.sw.bb_crit_edge27
    i32 1, label %entry.sw.bb_crit_edge28
    i32 0, label %entry.sw.bb5_crit_edge
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %1 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %visual, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %2, label %sw.bb.sw.bb5_crit_edge [
    i32 3, label %sw.bb.for.body.preheader_crit_edge
    i32 5, label %sw.bb.for.body.preheader_crit_edge29
  ]

sw.bb.for.body.preheader_crit_edge29:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

sw.bb.for.body.preheader_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

for.body.preheader:                               ; preds = %sw.bb.for.body.preheader_crit_edge, %sw.bb.for.body.preheader_crit_edge29
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call = tail call i32 @vt8500lcd_setcolreg(i32 noundef %i.025, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %info)
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.sw.bb5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.sw.bb5_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

sw.bb5:                                           ; preds = %for.body.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge
  %visual7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual7, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %sw.bb5.sw.epilog_crit_edge [
    i32 3, label %sw.bb5.if.then13_crit_edge
    i32 5, label %sw.bb5.if.then13_crit_edge30
  ]

sw.bb5.if.then13_crit_edge30:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

sw.bb5.if.then13_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb5.if.then13_crit_edge, %sw.bb5.if.then13_crit_edge30
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call14 = tail call i32 @fb_set_cmap(ptr noundef %cmap, ptr noundef %info) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then13, %sw.bb5.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500lcd_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %0 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line_length, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %div = udiv i32 %1, %3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset, align 4
  %mul = mul i32 %5, %div
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %mul4 = mul i32 %7, %1
  %add = add i32 %mul4, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual, align 4
  %10 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var1, align 4
  %sub = sub i32 %9, %11
  %mul8 = shl i32 %div, 18
  %12 = mul i32 %mul8, %sub
  %shl = and i32 %12, 2146435072
  %shr = lshr i32 %add, 2
  %or = or i32 %shr, %shl
  %or10 = or i32 %or, -2147483648
  %13 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %regbase = getelementptr inbounds %struct.vt8500lcd_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %13) #6, !srcloc !86
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
define internal i32 @vt8500lcd_ioctl(ptr noundef %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074021920, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1074021920
  br i1 %cmp, label %do.body, label %entry.if.end67_crit_edge

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %regbase = getelementptr inbounds %struct.vt8500lcd_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -134217729) #6, !srcloc !86
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 188) #6
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then19, label %do.body.if.end54_crit_edge

do.body.if.end54_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then19:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.vt8500lcd_info, ptr %info, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then19
  %__ret20.0 = phi i32 [ 10, %if.then19 ], [ %call51, %cleanup ]
  %call21 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %7 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase, align 4
  %add.ptr26 = getelementptr i8, ptr %8, i32 56
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool31.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.0)
  %tobool35.not = icmp eq i32 %__ret20.0, 0
  %spec.store.select70 = select i1 %tobool35.not, i32 1, i32 %__ret20.0
  %__ret20.1 = select i1 %tobool31.not, i32 %__ret20.0, i32 %spec.store.select70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1)
  %tobool41.not = icmp eq i32 %__ret20.1, 0
  %not.tobool31.not = xor i1 %tobool31.not, true
  %11 = select i1 %not.tobool31.not, i1 true, i1 %tobool41.not
  br i1 %11, label %for.end, label %if.end47

if.end47:                                         ; preds = %for.cond
  %tobool48.not = icmp eq i32 %call21, 0
  br i1 %tobool48.not, label %cleanup, label %if.end47.__out_crit_edge

if.end47.__out_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = call i32 @schedule_timeout(i32 noundef %__ret20.1) #6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end47.__out_crit_edge
  %__ret20.289 = phi i32 [ %__ret20.1, %for.end ], [ %call21, %if.end47.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end54

if.end54:                                         ; preds = %__out, %do.body.if.end54_crit_edge
  %__ret.1 = phi i32 [ 10, %do.body.if.end54_crit_edge ], [ %__ret20.289, %__out ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase, align 4
  %add.ptr60 = getelementptr i8, ptr %13, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -1) #6, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp61 = icmp slt i32 %__ret.1, 0
  br i1 %cmp61, label %if.end54.cleanup68_crit_edge, label %if.end63

if.end54.cleanup68_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp64 = icmp eq i32 %__ret.1, 0
  br i1 %cmp64, label %if.end63.cleanup68_crit_edge, label %if.end63.if.end67_crit_edge

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.end63.cleanup68_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.end67:                                         ; preds = %if.end63.if.end67_crit_edge, %entry.if.end67_crit_edge
  %ret.0 = phi i32 [ %__ret.1, %if.end63.if.end67_crit_edge ], [ 0, %entry.if.end67_crit_edge ]
  br label %cleanup68

cleanup68:                                        ; preds = %if.end67, %if.end63.cleanup68_crit_edge, %if.end54.cleanup68_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end67 ], [ %__ret.1, %if.end54.cleanup68_crit_edge ], [ -110, %if.end63.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_vt8500lcdfb__303_483_vt8500lcd_driver_init6, !1, !"__initcall__kmod_vt8500lcdfb__303_483_vt8500lcd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 483, i32 1}
!2 = !{ptr @__exitcall_vt8500lcd_driver_exit, !1, !"__exitcall_vt8500lcd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 485, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 486, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 487, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 478, i32 11}
!12 = !{ptr @vt8500lcd_driver, !13, !"vt8500lcd_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 474, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 288, i32 25}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 317, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vt8500lcd_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @vt8500lcd_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 321, i32 8}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 323, i32 3}
!28 = !{ptr @vt8500lcd_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vt8500lcd_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 329, i32 3}
!32 = !{ptr @vt8500lcd_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vt8500lcd_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 345, i32 48}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 354, i32 3}
!38 = !{ptr @vt8500lcd_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vt8500lcd_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 369, i32 3}
!42 = !{ptr @vt8500lcd_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vt8500lcd_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 376, i32 3}
!46 = !{ptr @vt8500lcd_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vt8500lcd_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 381, i32 50}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 383, i32 3}
!52 = !{ptr @vt8500lcd_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vt8500lcd_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @vt8500lcd_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 388, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 391, i32 3}
!59 = !{ptr @vt8500lcd_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @vt8500lcd_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 404, i32 3}
!63 = !{ptr @vt8500lcd_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vt8500lcd_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 415, i32 3}
!67 = !{ptr @vt8500lcd_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vt8500lcd_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @vt8500lcd_ops, !70, !"vt8500lcd_ops", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 242, i32 28}
!71 = distinct !{null, !72, !"bpp_values", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/vt8500lcdfb.h", i32 17, i32 12}
!73 = !{ptr @via_dt_ids, !74, !"via_dt_ids", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/vt8500lcdfb.c", i32 469, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 2155982056}
!86 = !{i64 6235055}
!87 = !{i64 2155982557}
!88 = !{i64 2155985531}
!89 = !{i64 6235473}
!90 = !{i64 2155986414}
!91 = !{i64 2155986723}
!92 = !{i64 2155965304}
!93 = !{i64 2155965599}
!94 = !{i64 2155949336}
!95 = !{i64 2155949543}
!96 = !{i64 2155950201}
!97 = !{i64 2155950576}
!98 = !{i64 2155951608}
!99 = !{i64 2155952552}
!100 = !{i64 2155953159}
!101 = !{i64 2155953596}
!102 = !{i64 2155955583}
!103 = !{i64 6234435}
!104 = !{i64 2155964277}
!105 = !{i64 2155958201}
!106 = !{i64 2155960214}
!107 = !{i64 2155961956}
!108 = !{i64 2155962523}
