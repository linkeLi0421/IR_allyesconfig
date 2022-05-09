; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/ocfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/ocfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ocfb_dev = type { %struct.fb_info, ptr, i32, i32, ptr, [256 x i32] }

@ocfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ocfb_probe, ptr @ocfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ocfb_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ocfb__303_425_ocfb_init6 = internal global ptr @ocfb_init, section ".initcall6.init", align 4
@__exitcall_ocfb_exit = internal global ptr @ocfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [68 x i8] c"ocfb.author=Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [59 x i8] c"ocfb.description=OpenCores VGA/LCD 2.0 frame buffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [35 x i8] c"ocfb.file=drivers/video/fbdev/ocfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [20 x i8] c"ocfb.license=GPL v2\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [17 x i8] c"ocfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype308 = internal constant [32 x i8] c"ocfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option309 = internal constant [69 x i8] c"ocfb.parm=mode_option:Video mode ('<xres>x<yres>[-<bpp>][@refresh]')\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ocfb_fb\00", [24 x i8] zeroinitializer }, align 32
@ocfb_match = internal global { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"opencores,ocfb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ocfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfb_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ocfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No valid video modes found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocfb_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/video/fbdev/ocfb.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocfb_probe._entry_ptr = internal global ptr @ocfb_probe._entry, section ".printk_index", align 4
@ocfb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Frame buffer memory allocation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@ocfb_probe._entry_ptr.8 = internal global ptr @ocfb_probe._entry.6, section ".printk_index", align 4
@ocfb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Color map allocation failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ocfb_probe._entry_ptr.11 = internal global ptr @ocfb_probe._entry.9, section ".printk_index", align 4
@ocfb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Framebuffer registration failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ocfb_probe._entry_ptr.14 = internal global ptr @ocfb_probe._entry.12, section ".printk_index", align 4
@ocfb_setcolreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"regno >= cmap.len\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocfb_setcolreg\00", [17 x i8] zeroinitializer }, align 32
@ocfb_setcolreg._entry_ptr = internal global ptr @ocfb_setcolreg._entry, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OC VGA/LCD\00", [21 x i8] zeroinitializer }, align 32
@ocfb_setupfb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no bpp specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ocfb_setupfb\00", [19 x i8] zeroinitializer }, align 32
@ocfb_setupfb._entry_ptr = internal global ptr @ocfb_setupfb._entry, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ocfb\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@switch.table.ocfb_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 0, i32 24], [16 x i8] zeroinitializer }, align 32
@switch.table.ocfb_probe.22 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 0, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.ocfb_probe.23 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 11, i32 16, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.ocfb_probe.24 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 5, i32 8, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.ocfb_probe.25 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 8, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.ocfb_probe.26 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 6, i32 8, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"ocfb_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 396, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 50, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 400, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"ocfb_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 390, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"ocfb_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 288, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 52, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 315, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 330, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 350, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 357, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 182, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 216, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 161, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 413, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [30 x i8] c"../drivers/video/fbdev/ocfb.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 77, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"switch.table.ocfb_probe\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"switch.table.ocfb_probe.22\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"switch.table.ocfb_probe.23\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"switch.table.ocfb_probe.24\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"switch.table.ocfb_probe.25\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"switch.table.ocfb_probe.26\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mode_option309, ptr @__UNIQUE_ID_mode_optiontype308, ptr @__exitcall_ocfb_exit, ptr @__initcall__kmod_ocfb__303_425_ocfb_init6, ptr @__param_mode_option, ptr @ocfb_exit, ptr @ocfb_probe._entry, ptr @ocfb_probe._entry.12, ptr @ocfb_probe._entry.6, ptr @ocfb_probe._entry.9, ptr @ocfb_probe._entry_ptr, ptr @ocfb_probe._entry_ptr.11, ptr @ocfb_probe._entry_ptr.14, ptr @ocfb_probe._entry_ptr.8, ptr @ocfb_setcolreg._entry, ptr @ocfb_setcolreg._entry_ptr, ptr @ocfb_setupfb._entry, ptr @ocfb_setupfb._entry_ptr, ptr @ocfb_driver, ptr @mode_option, ptr @.str, ptr @ocfb_match, ptr @ocfb_ops, ptr @default_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @switch.table.ocfb_probe, ptr @switch.table.ocfb_probe.22, ptr @switch.table.ocfb_probe.23, ptr @switch.table.ocfb_probe.24, ptr @switch.table.ocfb_probe.25, ptr @switch.table.ocfb_probe.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_setcolreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfb_setupfb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocfb_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocfb_probe.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocfb_probe.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocfb_probe.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocfb_probe.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocfb_probe.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ocfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ocfb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #6
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.20, ptr noundef nonnull %option) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @ocfb_setup(ptr noundef %2) #9
  %call2 = call i32 @__platform_driver_register(ptr noundef nonnull @ocfb_driver, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2156, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 20
  %1 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ocfb_ops, ptr %fbops, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %device, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 30
  %3 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6
  %4 = load ptr, ptr @mode_option, align 4
  %call6 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call.i, ptr noundef %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @default_mode, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 16
  %5 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %accel_flags.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 13
  %6 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %activate.i, align 4
  %7 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %var, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %xres_virtual.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %yres_virtual.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_pixel.i, align 4
  %15 = add i32 %14, -8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %switch.lookup, label %if.end10.ocfb_init_var.exit_crit_edge

if.end10.ocfb_init_var.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfb_init_var.exit

switch.lookup:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ocfb_probe, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep125 = getelementptr inbounds [4 x i32], ptr @switch.table.ocfb_probe.22, i32 0, i32 %16
  %19 = ptrtoint ptr %switch.gep125 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load126 = load i32, ptr %switch.gep125, align 4
  %switch.gep127 = getelementptr inbounds [4 x i32], ptr @switch.table.ocfb_probe.23, i32 0, i32 %16
  %20 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load128 = load i32, ptr %switch.gep127, align 4
  %switch.gep129 = getelementptr inbounds [4 x i32], ptr @switch.table.ocfb_probe.24, i32 0, i32 %16
  %21 = ptrtoint ptr %switch.gep129 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load130 = load i32, ptr %switch.gep129, align 4
  %switch.gep131 = getelementptr inbounds [4 x i32], ptr @switch.table.ocfb_probe.25, i32 0, i32 %16
  %22 = ptrtoint ptr %switch.gep131 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load132 = load i32, ptr %switch.gep131, align 4
  %switch.gep133 = getelementptr inbounds [4 x i32], ptr @switch.table.ocfb_probe.26, i32 0, i32 %16
  %23 = ptrtoint ptr %switch.gep133 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load134 = load i32, ptr %switch.gep133, align 4
  %transp47.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 11
  %24 = ptrtoint ptr %transp47.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %switch.load, ptr %transp47.i, align 4
  %length50.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 11, i32 1
  %25 = ptrtoint ptr %length50.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load126, ptr %length50.i, align 4
  %red51.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 8
  %26 = ptrtoint ptr %red51.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load128, ptr %red51.i, align 4
  %length54.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 8, i32 1
  %27 = ptrtoint ptr %length54.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %switch.load130, ptr %length54.i, align 4
  %green55.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 9
  %28 = ptrtoint ptr %green55.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %switch.load132, ptr %green55.i, align 4
  %length58.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 9, i32 1
  %29 = ptrtoint ptr %length58.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load134, ptr %length58.i, align 4
  %blue59.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 10
  %30 = ptrtoint ptr %blue59.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %blue59.i, align 4
  %length62.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 10, i32 1
  %31 = ptrtoint ptr %length62.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %switch.load130, ptr %length62.i, align 4
  %32 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %bits_per_pixel.i, align 4
  br label %ocfb_init_var.exit

ocfb_init_var.exit:                               ; preds = %switch.lookup, %if.end10.ocfb_init_var.exit_crit_edge
  %33 = phi i32 [ %14, %if.end10.ocfb_init_var.exit_crit_edge ], [ %.pr, %switch.lookup ]
  %fix3.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7
  %34 = call ptr @memcpy(ptr %fix3.i, ptr @.str.17, i32 11)
  %35 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %var, align 4
  %mul.i = mul i32 %36, %33
  %div1.i = lshr i32 %mul.i, 3
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 9
  %37 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div1.i, ptr %line_length.i, align 4
  %38 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres.i, align 4
  %mul5.i = mul i32 %div1.i, %39
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul5.i, ptr %smem_len.i, align 4
  %type.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp.i = icmp eq i32 %33, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %ocfb_init_var.exit.if.else.i_crit_edge

ocfb_init_var.exit.if.else.i_crit_edge:           ; preds = %ocfb_init_var.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %ocfb_init_var.exit
  %grayscale.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 7
  %42 = ptrtoint ptr %grayscale.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %grayscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ocfb_init_fix.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.ocfb_init_fix.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfb_init_fix.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %ocfb_init_var.exit.if.else.i_crit_edge
  br label %ocfb_init_fix.exit

ocfb_init_fix.exit:                               ; preds = %if.else.i, %land.lhs.true.i.ocfb_init_fix.exit_crit_edge
  %.sink.i = phi i32 [ 2, %if.else.i ], [ 3, %land.lhs.true.i.ocfb_init_fix.exit_crit_edge ]
  %visual7.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 5
  %44 = ptrtoint ptr %visual7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %visual7.i, align 4
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.ocfb_dev, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call13, ptr %regs, align 4
  %cmp.i118 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then16, label %if.end19

if.then16:                                        ; preds = %ocfb_init_fix.exit
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %ocfb_init_fix.exit
  %47 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %smem_len.i, align 4
  %add = add i32 %48, 4095
  %and = and i32 %add, -4096
  %fb_phys = getelementptr inbounds %struct.ocfb_dev, ptr %call.i, i32 0, i32 3
  %call.i119 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %fb_phys, i32 noundef 3264, i32 noundef 0) #6
  %fb_virt = getelementptr inbounds %struct.ocfb_dev, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %fb_virt to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i119, ptr %fb_virt, align 4
  %tobool24.not = icmp eq ptr %call.i119, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %50 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fb_phys, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %smem_start, align 4
  %53 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 25
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i119, ptr %53, align 4
  %pseudo_palette = getelementptr inbounds %struct.ocfb_dev, ptr %call.i, i32 0, i32 5
  %pseudo_palette37 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 27
  %55 = ptrtoint ptr %pseudo_palette37 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %pseudo_palette, ptr %pseudo_palette37, align 4
  tail call void @mmioset(ptr noundef nonnull %call.i119, i32 noundef 0, i32 noundef %48) #6
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %little_endian.i.i = getelementptr inbounds %struct.ocfb_dev, ptr %call.i, i32 0, i32 2
  %58 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #6, !srcloc !75
  br label %ocfb_writereg.exit7.i

do.body.i.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #6, !srcloc !75
  br label %ocfb_writereg.exit7.i

ocfb_writereg.exit7.i:                            ; preds = %do.body.i.i, %if.then.i.i
  %64 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %little_endian.i.i, align 4
  %65 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fb_phys, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %68, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %66) #6, !srcloc !75
  %69 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i9.i = icmp eq i32 %70, 0
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 4
  %add.ptr3.i11.i = getelementptr i8, ptr %72, i32 20
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i11.i) #6
  br i1 %tobool.not.i9.i, label %if.else.i.i, label %if.then.i12.i

if.then.i12.i:                                    ; preds = %ocfb_writereg.exit7.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  br label %ocfb_readreg.exit.i

if.else.i.i:                                      ; preds = %ocfb_writereg.exit7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %ocfb_readreg.exit.i

ocfb_readreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i12.i
  %retval.0.i.i = phi i32 [ %74, %if.then.i12.i ], [ %73, %if.else.i.i ]
  %75 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fb_phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %76)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %76
  br i1 %cmp.not.i, label %ocfb_readreg.exit.i.if.end.i_crit_edge, label %ocfb_writereg.exit21.i

ocfb_readreg.exit.i.if.end.i_crit_edge:           ; preds = %ocfb_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ocfb_writereg.exit21.i:                           ; preds = %ocfb_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %little_endian.i.i, align 4
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %79, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %80 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %80) #6, !srcloc !75
  br label %if.end.i

if.end.i:                                         ; preds = %ocfb_writereg.exit21.i, %ocfb_readreg.exit.i.if.end.i_crit_edge
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 22
  %81 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hsync_len.i, align 4
  %sub.i = shl i32 %82, 24
  %shl.i = add i32 %sub.i, -16777216
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 18
  %83 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %left_margin.i, align 4
  %sub6.i = shl i32 %84, 16
  %shl7.i = add i32 %sub6.i, -65536
  %or.i = or i32 %shl7.i, %shl.i
  %85 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %var, align 4
  %sub8.i = add i32 %86, -1
  %or9.i = or i32 %or.i, %sub8.i
  %87 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i23.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i23.i, label %do.body.i29.i, label %if.then.i26.i

if.then.i26.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %90, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %91 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %91) #6, !srcloc !75
  br label %ocfb_writereg.exit30.i

do.body.i29.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr3.i28.i = getelementptr i8, ptr %93, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i28.i, i32 %or9.i) #6, !srcloc !75
  br label %ocfb_writereg.exit30.i

ocfb_writereg.exit30.i:                           ; preds = %do.body.i29.i, %if.then.i26.i
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 23
  %94 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vsync_len.i, align 4
  %sub10.i = shl i32 %95, 24
  %shl11.i = add i32 %sub10.i, -16777216
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 20
  %96 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %upper_margin.i, align 4
  %sub12.i = shl i32 %97, 16
  %shl13.i = add i32 %sub12.i, -65536
  %or14.i = or i32 %shl13.i, %shl11.i
  %98 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %yres.i, align 4
  %sub15.i = add i32 %99, -1
  %or16.i = or i32 %or14.i, %sub15.i
  %100 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i32.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i32.i, label %do.body.i38.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %ocfb_writereg.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %103, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %104 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %104) #6, !srcloc !75
  br label %ocfb_writereg.exit39.i

do.body.i38.i:                                    ; preds = %ocfb_writereg.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %add.ptr3.i37.i = getelementptr i8, ptr %106, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i37.i, i32 %or16.i) #6, !srcloc !75
  br label %ocfb_writereg.exit39.i

ocfb_writereg.exit39.i:                           ; preds = %do.body.i38.i, %if.then.i35.i
  %107 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %left_margin.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 19
  %109 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %right_margin.i, align 4
  %add.i = add i32 %110, %108
  %111 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hsync_len.i, align 4
  %add19.i = add i32 %add.i, %112
  %113 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %var, align 4
  %add21.i = add i32 %add19.i, %114
  %115 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %upper_margin.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 21
  %117 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %lower_margin.i, align 4
  %119 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vsync_len.i, align 4
  %121 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %yres.i, align 4
  %sub28.i = shl i32 %add21.i, 16
  %shl29.i = add i32 %sub28.i, -65536
  %add23.i = add i32 %116, -1
  %add25.i = add i32 %add23.i, %118
  %add27.i = add i32 %add25.i, %120
  %sub30.i = add i32 %add27.i, %122
  %or31.i = or i32 %sub30.i, %shl29.i
  %123 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i41.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i41.i, label %do.body.i47.i, label %if.then.i44.i

if.then.i44.i:                                    ; preds = %ocfb_writereg.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %126, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %127 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %127) #6, !srcloc !75
  br label %ocfb_writereg.exit48.i

do.body.i47.i:                                    ; preds = %ocfb_writereg.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs, align 4
  %add.ptr3.i46.i = getelementptr i8, ptr %129, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i46.i, i32 %or31.i) #6, !srcloc !75
  br label %ocfb_writereg.exit48.i

ocfb_writereg.exit48.i:                           ; preds = %do.body.i47.i, %if.then.i44.i
  %130 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bits_per_pixel.i, align 4
  %132 = add i32 %131, -8
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 29) #6
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values)
  switch i32 %133, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %ocfb_writereg.exit48.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb37.i
    i32 3, label %sw.bb39.i
  ]

ocfb_writereg.exit48.i.sw.epilog.i_crit_edge:     ; preds = %ocfb_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %ocfb_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  %grayscale.i123 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 7
  %135 = ptrtoint ptr %grayscale.i123 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %grayscale.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i124 = icmp eq i32 %136, 0
  %spec.select.i = select i1 %tobool.not.i124, i32 2433, i32 385
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %ocfb_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %ocfb_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %ocfb_writereg.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.18) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb39.i, %sw.bb37.i, %sw.bb.i, %ocfb_writereg.exit48.i.sw.epilog.i_crit_edge
  %bpp_config.0.i = phi i32 [ 385, %do.end.i ], [ 1921, %sw.bb39.i ], [ 1409, %sw.bb37.i ], [ %spec.select.i, %sw.bb.i ], [ 897, %ocfb_writereg.exit48.i.sw.epilog.i_crit_edge ]
  %137 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i50.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i50.i, label %do.body.i54.i, label %if.then.i52.i

if.then.i52.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %141 = tail call i32 @llvm.bswap.i32(i32 %bpp_config.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %141) #6, !srcloc !75
  br label %ocfb_setupfb.exit

do.body.i54.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %bpp_config.0.i) #6, !srcloc !75
  br label %ocfb_setupfb.exit

ocfb_setupfb.exit:                                ; preds = %do.body.i54.i, %if.then.i52.i
  %144 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %little_endian.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool40.not = icmp eq i32 %145, 0
  br i1 %tobool40.not, label %ocfb_setupfb.exit.if.end43_crit_edge, label %if.then41

ocfb_setupfb.exit.if.end43_crit_edge:             ; preds = %ocfb_setupfb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %ocfb_setupfb.exit
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 2
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags, align 4
  %or = or i32 %147, 1048576
  store i32 %or, ptr %flags, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %ocfb_setupfb.exit.if.end43_crit_edge
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 12
  %call45 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %err_dma_free

if.end52:                                         ; preds = %if.end43
  %call54 = tail call i32 @register_framebuffer(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %do.end59

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #6
  br label %err_dma_free

err_dma_free:                                     ; preds = %do.end59, %do.end50
  %ret.0 = phi i32 [ %call45, %do.end50 ], [ %call54, %do.end59 ]
  %148 = ptrtoint ptr %fb_virt to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fb_virt, align 4
  %150 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fb_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %149, i32 noundef %151, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %err_dma_free, %if.end52.cleanup_crit_edge, %do.end28, %if.then16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then16 ], [ %ret.0, %err_dma_free ], [ -12, %do.end28 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #6
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_len, align 4
  %add = add i32 %3, 4095
  %and = and i32 %add, -4096
  %fb_virt = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %fb_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_virt, align 4
  %fb_phys = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %5, i32 noundef %7, i32 noundef 0) #6
  %little_endian.i = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %little_endian.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !75
  br label %ocfb_writereg.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %regs1.i = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #6, !srcloc !75
  br label %ocfb_writereg.exit

ocfb_writereg.exit:                               ; preds = %do.body.i, %if.then.i
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %regno)
  %cmp.not = icmp ugt i32 %3, %regno
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %red, 77
  %mul2 = mul i32 %green, 151
  %add = add i32 %mul2, %mul
  %mul3 = mul i32 %blue, 28
  %add4 = add i32 %add, %mul3
  %shr = lshr i32 %add4, 8
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %red.addr.0 = phi i32 [ %shr, %if.then1 ], [ %red, %if.end.if.end5_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then1 ], [ %green, %if.end.if.end5_crit_edge ]
  %blue.addr.0 = phi i32 [ %shr, %if.then1 ], [ %blue, %if.end.if.end5_crit_edge ]
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %sub = sub i32 16, %9
  %shr8 = lshr i32 %red.addr.0, %sub
  %length11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %10 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length11, align 4
  %sub12 = sub i32 16, %11
  %shr13 = lshr i32 %green.addr.0, %sub12
  %length16 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %12 = ptrtoint ptr %length16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length16, align 4
  %sub17 = sub i32 16, %13
  %shr18 = lshr i32 %blue.addr.0, %sub17
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp25 = icmp ne i32 %15, 8
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp25, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end5
  %shl = shl i32 %regno, 2
  %shl30 = shl i32 %shr8, 16
  %shl31 = shl i32 %shr13, 8
  %or = or i32 %shl31, %shl30
  %or32 = or i32 %or, %shr18
  %add33 = add i32 %shl, 2048
  %little_endian.i = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %little_endian.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or32) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #6, !srcloc !75
  br label %cleanup

do.body.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %regs1.i = getelementptr inbounds %struct.ocfb_dev, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or32) #6, !srcloc !75
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %length21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %23 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length21, align 4
  %sub22 = sub i32 16, %24
  %shr23 = lshr i32 %transp, %sub22
  %transp20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %blue15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %green10 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %red7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %25 = ptrtoint ptr %red7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %red7, align 4
  %shl36 = shl i32 %shr8, %26
  %27 = ptrtoint ptr %green10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %green10, align 4
  %shl40 = shl i32 %shr13, %28
  %or41 = or i32 %shl40, %shl36
  %29 = ptrtoint ptr %blue15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blue15, align 4
  %shl45 = shl i32 %shr18, %30
  %or46 = or i32 %or41, %shl45
  %31 = ptrtoint ptr %transp20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transp20, align 4
  %shl50 = shl i32 %shr23, %32
  %or51 = or i32 %or46, %shl50
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %33 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %34, i32 %regno
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or51, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body.i, %if.then.i, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.else ], [ 0, %if.then.i ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.21) #6
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end4, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.21) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_ocfb__303_425_ocfb_init6, !1, !"__initcall__kmod_ocfb__303_425_ocfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/ocfb.c", i32 425, i32 1}
!2 = !{ptr @__exitcall_ocfb_exit, !3, !"__exitcall_ocfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/ocfb.c", i32 426, i32 1}
!4 = !{ptr @__UNIQUE_ID_author304, !5, !"__UNIQUE_ID_author304", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/ocfb.c", i32 428, i32 1}
!6 = !{ptr @__UNIQUE_ID_description305, !7, !"__UNIQUE_ID_description305", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/ocfb.c", i32 429, i32 1}
!8 = !{ptr @__UNIQUE_ID_file306, !9, !"__UNIQUE_ID_file306", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/ocfb.c", i32 430, i32 1}
!10 = !{ptr @__UNIQUE_ID_license307, !9, !"__UNIQUE_ID_license307", i1 false, i1 false}
!11 = !{ptr @__param_mode_option, !12, !"__param_mode_option", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/ocfb.c", i32 431, i32 1}
!13 = !{ptr @__UNIQUE_ID_mode_optiontype308, !12, !"__UNIQUE_ID_mode_optiontype308", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_mode_option309, !15, !"__UNIQUE_ID_mode_option309", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/ocfb.c", i32 432, i32 1}
!16 = !{ptr @mode_option, !17, !"mode_option", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/ocfb.c", i32 50, i32 14}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/ocfb.c", i32 400, i32 11}
!20 = !{ptr @ocfb_driver, !21, !"ocfb_driver", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/ocfb.c", i32 396, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/ocfb.c", i32 315, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ocfb_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ocfb_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/ocfb.c", i32 330, i32 3}
!32 = !{ptr @ocfb_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ocfb_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/ocfb.c", i32 350, i32 3}
!36 = !{ptr @ocfb_probe._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ocfb_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/ocfb.c", i32 357, i32 3}
!40 = !{ptr @ocfb_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ocfb_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ocfb_ops, !43, !"ocfb_ops", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/ocfb.c", i32 288, i32 28}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/ocfb.c", i32 182, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ocfb_setcolreg._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ocfb_setcolreg._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @default_mode, !50, !"default_mode", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/ocfb.c", i32 52, i32 34}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/ocfb.c", i32 216, i32 18}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/ocfb.c", i32 161, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ocfb_setupfb._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ocfb_setupfb._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ocfb_match, !59, !"ocfb_match", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/ocfb.c", i32 390, i32 28}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/ocfb.c", i32 413, i32 21}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/ocfb.c", i32 77, i32 38}
!64 = !{ptr @__param_str_mode_option, !12, !"__param_str_mode_option", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2153774979}
!75 = !{i64 6232857}
!76 = !{i64 2155911977}
!77 = !{i64 2153773624}
!78 = !{i64 2155911722}
