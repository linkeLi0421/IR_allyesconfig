; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/vfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/vfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
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
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__param_str_videomemorysize = internal constant [20 x i8] c"vfb.videomemorysize\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@videomemorysize = internal global { i32, [28 x i8] } { i32 1048576, [28 x i8] zeroinitializer }, align 32
@__param_videomemorysize = internal constant %struct.kernel_param { ptr @__param_str_videomemorysize, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @videomemorysize } }, section "__param", align 4
@__UNIQUE_ID_videomemorysizetype301 = internal constant [35 x i8] c"vfb.parmtype=videomemorysize:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_videomemorysize302 = internal constant [66 x i8] c"vfb.parm=videomemorysize:RAM available to frame buffer (in bytes)\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [16 x i8] c"vfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype303 = internal constant [31 x i8] c"vfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option304 = internal constant [62 x i8] c"vfb.parm=mode_option:Preferred video mode (e.g. 640x480-8@60)\00", section ".modinfo", align 1
@__param_str_vfb_enable = internal constant [15 x i8] c"vfb.vfb_enable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@vfb_enable = internal global i8 0, section ".init.data", align 1
@__param_vfb_enable = internal constant %struct.kernel_param { ptr @__param_str_vfb_enable, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vfb_enable } }, section "__param", align 4
@__UNIQUE_ID_vfb_enabletype305 = internal constant [29 x i8] c"vfb.parmtype=vfb_enable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vfb_enable306 = internal constant [45 x i8] c"vfb.parm=vfb_enable:Enable Virtual FB driver\00", section ".modinfo", align 1
@__initcall__kmod_vfb__307_539_vfb_init6 = internal global ptr @vfb_init, section ".initcall6.init", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vfb\00", [28 x i8] zeroinitializer }, align 32
@vfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vfb_probe, ptr @vfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vfb_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@videomemory = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @fb_sys_write, ptr @vfb_check_var, ptr @vfb_set_par, ptr @vfb_setcolreg, ptr null, ptr null, ptr @vfb_pan_display, ptr @sys_fillrect, ptr @sys_copyarea, ptr @sys_imageblit, ptr null, ptr null, ptr null, ptr null, ptr @vfb_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vfb_default = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 640, i32 480, i32 20000, i32 64, i32 64, i32 32, i32 32, i32 64, i32 2, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@vfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fb%d: Unable to find usable video mode.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfb_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/video/fbdev/vfb.c\00", [38 x i8] zeroinitializer }, align 32
@vfb_probe._entry_ptr = internal global ptr @vfb_probe._entry, section ".printk_index", align 4
@vfb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Virtual FB\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 1, i16 1, i16 1, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@vfb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016fb%d: Virtual frame buffer device, using %ldK of video memory\0A\00", [63 x i8] zeroinitializer }, align 32
@vfb_probe._entry_ptr.8 = internal global ptr @vfb_probe._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"videomemorysize\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 15 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 40, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 512, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"vfb_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 495, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"vfb_device\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 503, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 409, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 413, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"videomemory\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 35, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"vfb_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 81, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"vfb_default\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 44, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 447, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [8 x i8] c"vfb_fix\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 57, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [29 x i8] c"../drivers/video/fbdev/vfb.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 470, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_mode_option304, ptr @__UNIQUE_ID_mode_optiontype303, ptr @__UNIQUE_ID_vfb_enable306, ptr @__UNIQUE_ID_vfb_enabletype305, ptr @__UNIQUE_ID_videomemorysize302, ptr @__UNIQUE_ID_videomemorysizetype301, ptr @__initcall__kmod_vfb__307_539_vfb_init6, ptr @__param_mode_option, ptr @__param_vfb_enable, ptr @__param_videomemorysize, ptr @vfb_probe._entry, ptr @vfb_probe._entry.6, ptr @vfb_probe._entry_ptr, ptr @vfb_probe._entry_ptr.8, ptr @videomemorysize, ptr @mode_option, ptr @.str, ptr @vfb_driver, ptr @vfb_device, ptr @.str.1, ptr @.str.2, ptr @videomemory, ptr @vfb_ops, ptr @vfb_default, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vfb_fix, ptr @.str.7], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videomemorysize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videomemory to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_default to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #9
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @vfb_setup(ptr noundef %2) #12
  %3 = load i8, ptr @vfb_enable, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @__platform_driver_register(ptr noundef nonnull @vfb_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %call8 = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef 0) #9
  store ptr %call8, ptr @vfb_device, align 4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.if.then14_crit_edge, label %if.end12

if.then7.if.then14_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.end12:                                         ; preds = %if.then7
  %call11 = call i32 @platform_device_add(ptr noundef nonnull %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.then7.if.then14_crit_edge
  %ret.022 = phi i32 [ %call11, %if.end12.if.then14_crit_edge ], [ -12, %if.then7.if.then14_crit_edge ]
  %4 = load ptr, ptr @vfb_device, align 4
  call void @platform_device_put(ptr noundef %4) #9
  call void @platform_driver_unregister(ptr noundef nonnull @vfb_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %ret.022, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  store i8 0, ptr @vfb_enable, align 1
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, ptr @vfb_enable, align 1
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #9
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %while.body.while.cond.backedge_crit_edge, label %if.end6

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end6:                                          ; preds = %while.body
  %call7 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  store i8 0, ptr @vfb_enable, align 1
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then9, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfb_probe(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @videomemorysize, align 4
  %add = add i32 %0, 4095
  %and = and i32 %add, -4096
  %call = tail call noalias ptr @vmalloc_32_user(i32 noundef %and) #14
  store ptr %call, ptr @videomemory, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call3 = tail call ptr @framebuffer_alloc(i32 noundef 1024, ptr noundef %dev2) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @videomemory, align 4
  %2 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %2, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 20
  %4 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vfb_ops, ptr %fbops, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6
  %5 = load ptr, ptr @mode_option, align 4
  %call7 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call3, ptr noundef %5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @vfb_default, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %node = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %7) #15
  br label %err1

if.end11:                                         ; preds = %if.end6
  %8 = load ptr, ptr @videomemory, align 4
  %9 = ptrtoint ptr %8 to i32
  store i32 %9, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @vfb_fix, i32 0, i32 1), align 4
  %10 = load i32, ptr @videomemorysize, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @vfb_fix, i32 0, i32 2), align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %fix, ptr @vfb_fix, i32 68)
  %par = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 30
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 27
  %14 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %pseudo_palette, align 4
  store ptr null, ptr %par, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 12
  %call13 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end11.err1_crit_edge, label %if.end15

if.end11.err1_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @register_framebuffer(ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %err2, label %if.end19

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %call20 = tail call i32 @vfb_set_par(ptr noundef nonnull %call3)
  %node25 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 1
  %17 = ptrtoint ptr %node25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node25, align 4
  %19 = load i32, ptr @videomemorysize, align 4
  %shr = lshr i32 %19, 10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %18, i32 noundef %shr) #15
  br label %cleanup

err2:                                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %err1

err1:                                             ; preds = %err2, %if.end11.err1_crit_edge, %do.end
  %retval1.0 = phi i32 [ %call13, %if.end11.err1_crit_edge ], [ %call16, %err2 ], [ -22, %do.end ]
  tail call void @framebuffer_release(ptr noundef nonnull %call3) #9
  br label %err

err:                                              ; preds = %err1, %if.end.err_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err1 ], [ -12, %if.end.err_crit_edge ]
  %20 = load ptr, ptr @videomemory, align 4
  tail call void @vfree(ptr noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %err ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfb_remove(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #9
  %2 = load ptr, ptr @videomemory, align 4
  tail call void @vfree(ptr noundef %2) #9
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  tail call void @framebuffer_release(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32_user(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfb_set_par(ptr nocapture noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb1
    i32 16, label %entry.sw.bb4_crit_edge
    i32 24, label %entry.sw.bb4_crit_edge17
    i32 32, label %entry.sw.bb4_crit_edge18
  ]

entry.sw.bb4_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge17, %entry.sw.bb4_crit_edge18
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb4 ], [ 3, %sw.bb1 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %visual6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %3 = ptrtoint ptr %visual6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %visual6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  %mul.i = mul i32 %5, %1
  %add.i = add i32 %mul.i, 31
  %and.i = lshr i32 %add.i, 3
  %shr.i = and i32 %and.i, 536870908
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i, ptr %line_length, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %0 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmode, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %1, 256
  %2 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %vmode, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xoffset, align 4
  %xoffset3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %5 = ptrtoint ptr %xoffset3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %xoffset3, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %yoffset5 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %yoffset5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %var, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %yres, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %15 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %17 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp ugt i32 %16, %18
  br i1 %cmp, label %if.then15, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %xres_virtual, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %20 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %22 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp20 = icmp ugt i32 %21, %23
  br i1 %cmp20, label %if.then21, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %yres_virtual, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %25 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp25 = icmp ult i32 %26, 2
  br i1 %cmp25, label %if.end24.if.end52_crit_edge, label %if.else

if.end24.if.end52_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %26)
  %cmp29 = icmp ult i32 %26, 9
  br i1 %cmp29, label %if.else.if.end52_crit_edge, label %if.else32

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %26)
  %cmp34 = icmp ult i32 %26, 17
  br i1 %cmp34, label %if.else32.if.end52_crit_edge, label %if.else37

if.else32.if.end52_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else37:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %26)
  %cmp39 = icmp ult i32 %26, 25
  br i1 %cmp39, label %if.else37.if.end52_crit_edge, label %if.else42

if.else37.if.end52_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else42:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %26)
  %cmp44 = icmp ult i32 %26, 33
  br i1 %cmp44, label %if.else42.if.end52_crit_edge, label %if.else42.cleanup_crit_edge

if.else42.cleanup_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else42.if.end52_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52:                                         ; preds = %if.else42.if.end52_crit_edge, %if.else37.if.end52_crit_edge, %if.else32.if.end52_crit_edge, %if.else.if.end52_crit_edge, %if.end24.if.end52_crit_edge
  %.sink = phi i32 [ 1, %if.end24.if.end52_crit_edge ], [ 8, %if.else.if.end52_crit_edge ], [ 16, %if.else32.if.end52_crit_edge ], [ 24, %if.else37.if.end52_crit_edge ], [ 32, %if.else42.if.end52_crit_edge ]
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %bits_per_pixel, align 4
  %28 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xres_virtual, align 4
  %xoffset54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %30 = ptrtoint ptr %xoffset54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xoffset54, align 4
  %add = add i32 %31, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp56 = icmp ult i32 %29, %add
  br i1 %cmp56, label %if.then57, label %if.end52.if.end62_crit_edge

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %xres_virtual, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end52.if.end62_crit_edge
  %33 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %yres_virtual, align 4
  %yoffset64 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %35 = ptrtoint ptr %yoffset64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yoffset64, align 4
  %add66 = add i32 %36, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add66)
  %cmp67 = icmp ult i32 %34, %add66
  br i1 %cmp67, label %if.then68, label %if.end62.if.end73_crit_edge

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add66, ptr %yres_virtual, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end62.if.end73_crit_edge
  %38 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xres_virtual, align 4
  %40 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_pixel, align 4
  %mul.i = mul i32 %41, %39
  %add.i = add i32 %mul.i, 31
  %and.i = lshr i32 %add.i, 3
  %shr.i = and i32 %and.i, 536870908
  %42 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %yres_virtual, align 4
  %mul = mul i32 %shr.i, %43
  %44 = load i32, ptr @videomemorysize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %44)
  %cmp77 = icmp ugt i32 %mul, %44
  br i1 %cmp77, label %if.end73.cleanup_crit_edge, label %if.end79

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.end73
  %45 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %41, label %if.end79.sw.epilog_crit_edge [
    i32 1, label %if.end79.sw.bb_crit_edge
    i32 8, label %if.end79.sw.bb_crit_edge260
    i32 16, label %sw.bb91
    i32 24, label %sw.bb130
    i32 32, label %sw.bb147
  ]

if.end79.sw.bb_crit_edge260:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end79.sw.bb_crit_edge:                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end79.sw.bb_crit_edge, %if.end79.sw.bb_crit_edge260
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %46 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %48 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %green, align 4
  %length84 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %length84 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8, ptr %length84, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %50 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %blue, align 4
  %length87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %length87 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %length87, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %52 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %transp, align 4
  %length90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %53 = ptrtoint ptr %length90 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %length90, align 4
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end79
  %transp92 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length93 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %length93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool94.not = icmp eq i32 %55, 0
  %red113 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %56 = ptrtoint ptr %red113 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %red113, align 4
  %length116 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %length116 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 5, ptr %length116, align 4
  %green117 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %58 = ptrtoint ptr %green117 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 5, ptr %green117, align 4
  %length120 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  br i1 %tobool94.not, label %if.else112, label %if.then95

if.then95:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %length120 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %length120, align 4
  %blue104 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %60 = ptrtoint ptr %blue104 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10, ptr %blue104, align 4
  %length107 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %length107 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5, ptr %length107, align 4
  %62 = ptrtoint ptr %transp92 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 15, ptr %transp92, align 4
  %63 = ptrtoint ptr %length93 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %length93, align 4
  br label %sw.epilog

if.else112:                                       ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %length120 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 6, ptr %length120, align 4
  %blue121 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %65 = ptrtoint ptr %blue121 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 11, ptr %blue121, align 4
  %length124 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %length124 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5, ptr %length124, align 4
  %67 = ptrtoint ptr %transp92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %transp92, align 4
  %68 = ptrtoint ptr %length93 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %length93, align 4
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %red131 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %69 = ptrtoint ptr %red131 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %red131, align 4
  %length134 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %length134 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %length134, align 4
  %green135 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %71 = ptrtoint ptr %green135 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8, ptr %green135, align 4
  %length138 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %length138 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8, ptr %length138, align 4
  %blue139 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %73 = ptrtoint ptr %blue139 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16, ptr %blue139, align 4
  %length142 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %length142 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8, ptr %length142, align 4
  %transp143 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %75 = ptrtoint ptr %transp143 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %transp143, align 4
  %length146 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %76 = ptrtoint ptr %length146 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %length146, align 4
  br label %sw.epilog

sw.bb147:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %red148 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %77 = ptrtoint ptr %red148 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %red148, align 4
  %length151 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %78 = ptrtoint ptr %length151 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %length151, align 4
  %green152 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %79 = ptrtoint ptr %green152 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8, ptr %green152, align 4
  %length155 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %80 = ptrtoint ptr %length155 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %length155, align 4
  %blue156 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %81 = ptrtoint ptr %blue156 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16, ptr %blue156, align 4
  %length159 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %length159 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8, ptr %length159, align 4
  %transp160 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %83 = ptrtoint ptr %transp160 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 24, ptr %transp160, align 4
  %length163 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %84 = ptrtoint ptr %length163 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %length163, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb147, %sw.bb130, %if.else112, %if.then95, %sw.bb, %if.end79.sw.epilog_crit_edge
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %85 = ptrtoint ptr %msb_right to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %msb_right, align 4
  %msb_right166 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %86 = ptrtoint ptr %msb_right166 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %msb_right166, align 4
  %msb_right168 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %87 = ptrtoint ptr %msb_right168 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %msb_right168, align 4
  %msb_right170 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %88 = ptrtoint ptr %msb_right170 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %msb_right170, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end73.cleanup_crit_edge, %if.else42.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.else42.cleanup_crit_edge ], [ -12, %if.end73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

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
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %sw.epilog, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %if.end5
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %shl = shl i32 %red.addr.0, %6
  %add8 = sub i32 32767, %red.addr.0
  %sub = add i32 %add8, %shl
  %shr9 = lshr i32 %sub, 16
  %length12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %7 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length12, align 4
  %shl13 = shl i32 %green.addr.0, %8
  %add14 = sub i32 32767, %green.addr.0
  %sub15 = add i32 %add14, %shl13
  %shr16 = lshr i32 %sub15, 16
  %length19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %9 = ptrtoint ptr %length19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length19, align 4
  %shl20 = shl i32 %blue.addr.0, %10
  %add21 = sub i32 32767, %blue.addr.0
  %sub22 = add i32 %add21, %shl20
  %shr23 = lshr i32 %sub22, 16
  %length26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %11 = ptrtoint ptr %length26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length26, align 4
  %shl27 = shl i32 %transp, %12
  %add28 = sub i32 32767, %transp
  %sub29 = add i32 %add28, %shl27
  %shr30 = lshr i32 %sub29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp50 = icmp eq i32 %3, 2
  br i1 %cmp50, label %if.then51, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then51:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp52 = icmp ugt i32 %regno, 15
  br i1 %cmp52, label %if.then51.return_crit_edge, label %if.end54

if.then51.return_crit_edge:                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end54:                                         ; preds = %if.then51
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_pixel, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %14, label %if.end54.return_crit_edge [
    i32 32, label %if.end54.return.sink.split_crit_edge
    i32 16, label %if.end54.return.sink.split_crit_edge120
    i32 24, label %if.end54.return.sink.split_crit_edge121
  ]

if.end54.return.sink.split_crit_edge121:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end54.return.sink.split_crit_edge120:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end54.return.sink.split_crit_edge:             ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end54.return_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split:                                ; preds = %if.end54.return.sink.split_crit_edge, %if.end54.return.sink.split_crit_edge120, %if.end54.return.sink.split_crit_edge121
  %green59 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %16 = ptrtoint ptr %green59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %green59, align 4
  %shl61 = shl i32 %shr16, %17
  %red56 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %18 = ptrtoint ptr %red56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %red56, align 4
  %shl57 = shl i32 %shr9, %19
  %or = or i32 %shl61, %shl57
  %blue63 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %20 = ptrtoint ptr %blue63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blue63, align 4
  %shl65 = shl i32 %shr23, %21
  %or66 = or i32 %or, %shl65
  %transp68 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %22 = ptrtoint ptr %transp68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transp68, align 4
  %shl70 = shl i32 %shr30, %23
  %or71 = or i32 %or66, %shl70
  %pseudo_palette75 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %24 = ptrtoint ptr %pseudo_palette75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pseudo_palette75, align 4
  %arrayidx76 = getelementptr i32, ptr %25, i32 %regno
  %26 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or71, ptr %arrayidx76, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end54.return_crit_edge, %if.then51.return_crit_edge, %sw.epilog.return_crit_edge, %if.end5.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.then51.return_crit_edge ], [ 0, %if.end54.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %if.end5.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %0 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmode, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.then
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %entry
  %xoffset4 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset4, align 4
  %var5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %10 = ptrtoint ptr %var5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var5, align 4
  %add = add i32 %11, %9
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp7 = icmp ugt i32 %add, %13
  br i1 %cmp7, label %if.else.return_crit_edge, label %lor.lhs.false8

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false8:                                   ; preds = %if.else
  %yoffset9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %14 = ptrtoint ptr %yoffset9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yoffset9, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres, align 4
  %add11 = add i32 %17, %15
  %yres_virtual13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %yres_virtual13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %19)
  %cmp14 = icmp ugt i32 %add11, %19
  br i1 %cmp14, label %lor.lhs.false8.return_crit_edge, label %lor.lhs.false8.if.end17_crit_edge

lor.lhs.false8.if.end17_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end17:                                         ; preds = %lor.lhs.false8.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  %xoffset18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %20 = ptrtoint ptr %xoffset18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xoffset18, align 4
  %xoffset20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %xoffset20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %xoffset20, align 4
  %yoffset21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %23 = ptrtoint ptr %yoffset21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yoffset21, align 4
  %yoffset23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %25 = ptrtoint ptr %yoffset23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %yoffset23, align 4
  %26 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vmode, align 4
  %and25 = and i32 %27, 256
  %vmode32 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %28 = ptrtoint ptr %vmode32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vmode32, align 4
  %and33 = and i32 %29, -257
  %or.sink = or i32 %and33, %and25
  store i32 %or.sink, ptr %vmode32, align 4
  br label %return

return:                                           ; preds = %if.end17, %lor.lhs.false8.return_crit_edge, %if.else.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %lor.lhs.false8.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfb_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %3 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_pgoff, align 4
  %call = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %2, i32 noundef %4) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__param_videomemorysize, !1, !"__param_videomemorysize", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/vfb.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_videomemorysizetype301, !1, !"__UNIQUE_ID_videomemorysizetype301", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_videomemorysize302, !4, !"__UNIQUE_ID_videomemorysize302", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/vfb.c", i32 38, i32 1}
!5 = !{ptr @__param_mode_option, !6, !"__param_mode_option", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/vfb.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_mode_optiontype303, !6, !"__UNIQUE_ID_mode_optiontype303", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mode_option304, !9, !"__UNIQUE_ID_mode_option304", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/vfb.c", i32 42, i32 1}
!10 = !{ptr @__param_vfb_enable, !11, !"__param_vfb_enable", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/vfb.c", i32 68, i32 1}
!12 = !{ptr @__UNIQUE_ID_vfb_enabletype305, !11, !"__UNIQUE_ID_vfb_enabletype305", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_vfb_enable306, !14, !"__UNIQUE_ID_vfb_enable306", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/vfb.c", i32 69, i32 1}
!15 = !{ptr @__initcall__kmod_vfb__307_539_vfb_init6, !16, !"__initcall__kmod_vfb__307_539_vfb_init6", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/vfb.c", i32 539, i32 1}
!17 = !{ptr @__param_str_videomemorysize, !1, !"__param_str_videomemorysize", i1 false, i1 false}
!18 = !{ptr @videomemorysize, !19, !"videomemorysize", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/vfb.c", i32 36, i32 15}
!20 = !{ptr @__param_str_mode_option, !6, !"__param_str_mode_option", i1 false, i1 false}
!21 = !{ptr @mode_option, !22, !"mode_option", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/vfb.c", i32 40, i32 14}
!23 = !{ptr @__param_str_vfb_enable, !11, !"__param_str_vfb_enable", i1 false, i1 false}
!24 = !{ptr @vfb_enable, !25, !"vfb_enable", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/vfb.c", i32 67, i32 13}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/vfb.c", i32 512, i32 21}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/vfb.c", i32 409, i32 38}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/vfb.c", i32 413, i32 25}
!32 = !{ptr @vfb_driver, !33, !"vfb_driver", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/vfb.c", i32 495, i32 31}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/vfb.c", i32 447, i32 3}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vfb_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @vfb_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/vfb.c", i32 470, i32 2}
!42 = !{ptr @vfb_probe._entry.6, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vfb_probe._entry_ptr.8, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @videomemory, !45, !"videomemory", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/vfb.c", i32 35, i32 14}
!46 = !{ptr @vfb_ops, !47, !"vfb_ops", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/vfb.c", i32 81, i32 28}
!48 = !{ptr @vfb_default, !49, !"vfb_default", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/vfb.c", i32 44, i32 34}
!50 = !{ptr @vfb_fix, !51, !"vfb_fix", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/vfb.c", i32 57, i32 33}
!52 = !{ptr @vfb_device, !53, !"vfb_device", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/vfb.c", i32 503, i32 32}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
