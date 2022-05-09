; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbsysfs.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbsysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+framebuffer_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_framebuffer_alloc\09\09\09\09"
module asm "\09.long\09__crc_framebuffer_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_framebuffer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22framebuffer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_framebuffer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+framebuffer_release\22, \22a\22\09"
module asm "\09.weak\09__crc_framebuffer_release\09\09\09\09"
module asm "\09.long\09__crc_framebuffer_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_framebuffer_release:\09\09\09\09\09"
module asm "\09.asciz \09\22framebuffer_release\22\09\09\09\09\09"
module asm "__kstrtabns_framebuffer_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fb_bl_default_curve\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_bl_default_curve\09\09\09\09"
module asm "\09.long\09__crc_fb_bl_default_curve\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_bl_default_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_bl_default_curve\22\09\09\09\09\09"
module asm "__kstrtabns_fb_bl_default_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.78 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }

@framebuffer_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&info->bl_curve_mutex\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_framebuffer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_framebuffer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_framebuffer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @framebuffer_alloc to i32), ptr @__kstrtab_framebuffer_alloc, ptr @__kstrtabns_framebuffer_alloc }, section "___ksymtab+framebuffer_alloc", align 4
@__kstrtab_framebuffer_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_framebuffer_release = external dso_local constant [0 x i8], align 1
@__ksymtab_framebuffer_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @framebuffer_release to i32), ptr @__kstrtab_framebuffer_release, ptr @__kstrtabns_framebuffer_release }, section "___ksymtab+framebuffer_release", align 4
@device_attrs = internal global { [13 x %struct.device_attribute], [84 x i8] } { [13 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bpp, ptr @store_bpp }, %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_blank, ptr @store_blank }, %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_console, ptr @store_console }, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cursor, ptr @store_cursor }, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_mode, ptr @store_mode }, %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_modes, ptr @store_modes }, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pan, ptr @store_pan }, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_virtual, ptr @store_virtual }, %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_name, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_stride, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rotate, ptr @store_rotate }, %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fbstate, ptr @store_fbstate }, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bl_curve, ptr @store_bl_curve }], [84 x i8] zeroinitializer }, align 32
@__kstrtab_fb_bl_default_curve = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_bl_default_curve = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_bl_default_curve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_bl_default_curve to i32), ptr @__kstrtab_fb_bl_default_curve, ptr @__kstrtabns_fb_bl_default_curve }, section "___ksymtab_gpl+fb_bl_default_curve", align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bits_per_pixel\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blank\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cursor\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modes\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pan\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"virtual_size\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stride\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rotate\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bl_curve\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%c:%dx%d%c-%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d,%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%8ph\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%2hhx %2hhx %2hhx %2hhx %2hhx %2hhx %2hhx %2hhx\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 61, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"device_attrs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 492, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 493, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 494, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 495, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 496, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 497, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 498, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 499, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 500, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 501, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 502, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 503, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 504, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 506, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 233, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 121, i32 52 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 384, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 393, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 481, i32 48 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [38 x i8] c"../drivers/video/fbdev/core/fbsysfs.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 444, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_fb_bl_default_curve, ptr @__ksymtab_framebuffer_alloc, ptr @__ksymtab_framebuffer_release, ptr @framebuffer_alloc.__key, ptr @.str, ptr @device_attrs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @framebuffer_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attrs to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @framebuffer_alloc(i32 noundef %size, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %spec.select = select i1 %tobool.not, i32 1116, i32 1120
  %add1 = add i32 %spec.select, %size
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #12
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %spec.select
  %par = getelementptr inbounds %struct.fb_info, ptr %call9.i.i, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %par, align 16
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %device = getelementptr inbounds %struct.fb_info, ptr %call9.i.i, i32 0, i32 21
  %1 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %device, align 4
  %fbcon_rotate_hint = getelementptr inbounds %struct.fb_info, ptr %call9.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %fbcon_rotate_hint to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fbcon_rotate_hint, align 4
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, ptr %call9.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %bl_curve_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @framebuffer_alloc.__key) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end7 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @framebuffer_release(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %apertures = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 31
  %0 = ptrtoint ptr %apertures to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apertures, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef nonnull %info) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_init_device(ptr noundef %fb_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 22
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fb_info, ptr %driver_data.i, align 4
  %class_flag = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 23
  %3 = ptrtoint ptr %class_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %class_flag, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %class_flag, align 4
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_create_file(ptr noundef %5, ptr noundef nonnull @device_attrs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.inc:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.1 = tail call i32 @device_create_file(ptr noundef %7, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.while.body.preheader_crit_edge

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.1:                                        ; preds = %for.inc
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.2 = tail call i32 @device_create_file(ptr noundef %9, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.while.body.preheader_crit_edge

for.inc.1.while.body.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.3 = tail call i32 @device_create_file(ptr noundef %11, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.while.body.preheader_crit_edge

for.inc.2.while.body.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.4 = tail call i32 @device_create_file(ptr noundef %13, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.while.body.preheader_crit_edge

for.inc.3.while.body.preheader_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.4:                                        ; preds = %for.inc.3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.5 = tail call i32 @device_create_file(ptr noundef %15, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.while.body.preheader_crit_edge

for.inc.4.while.body.preheader_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.5:                                        ; preds = %for.inc.4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.6 = tail call i32 @device_create_file(ptr noundef %17, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.while.body.preheader_crit_edge

for.inc.5.while.body.preheader_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.6:                                        ; preds = %for.inc.5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.7 = tail call i32 @device_create_file(ptr noundef %19, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 7)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.while.body.preheader_crit_edge

for.inc.6.while.body.preheader_crit_edge:         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.7:                                        ; preds = %for.inc.6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.8 = tail call i32 @device_create_file(ptr noundef %21, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 8)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.while.body.preheader_crit_edge

for.inc.7.while.body.preheader_crit_edge:         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.8:                                        ; preds = %for.inc.7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call.9 = tail call i32 @device_create_file(ptr noundef %23, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 9)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.while.body.preheader_crit_edge

for.inc.8.while.body.preheader_crit_edge:         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.9:                                        ; preds = %for.inc.8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.10 = tail call i32 @device_create_file(ptr noundef %25, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 10)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.while.body.preheader_crit_edge

for.inc.9.while.body.preheader_crit_edge:         ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.10:                                       ; preds = %for.inc.9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.11 = tail call i32 @device_create_file(ptr noundef %27, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 11)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.while.body.preheader_crit_edge

for.inc.10.while.body.preheader_crit_edge:        ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.11:                                       ; preds = %for.inc.10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.12 = tail call i32 @device_create_file(ptr noundef %29, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 12)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool.not.12, label %for.inc.11.if.end8_crit_edge, label %for.inc.11.while.body.preheader_crit_edge

for.inc.11.while.body.preheader_crit_edge:        ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

for.inc.11.if.end8_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

while.body.preheader:                             ; preds = %for.inc.11.while.body.preheader_crit_edge, %for.inc.10.while.body.preheader_crit_edge, %for.inc.9.while.body.preheader_crit_edge, %for.inc.8.while.body.preheader_crit_edge, %for.inc.7.while.body.preheader_crit_edge, %for.inc.6.while.body.preheader_crit_edge, %for.inc.5.while.body.preheader_crit_edge, %for.inc.4.while.body.preheader_crit_edge, %for.inc.3.while.body.preheader_crit_edge, %for.inc.2.while.body.preheader_crit_edge, %for.inc.1.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %dec25.ph = phi i32 [ 0, %for.inc.while.body.preheader_crit_edge ], [ 1, %for.inc.1.while.body.preheader_crit_edge ], [ 2, %for.inc.2.while.body.preheader_crit_edge ], [ 3, %for.inc.3.while.body.preheader_crit_edge ], [ 4, %for.inc.4.while.body.preheader_crit_edge ], [ 5, %for.inc.5.while.body.preheader_crit_edge ], [ 6, %for.inc.6.while.body.preheader_crit_edge ], [ 7, %for.inc.7.while.body.preheader_crit_edge ], [ 8, %for.inc.8.while.body.preheader_crit_edge ], [ 9, %for.inc.9.while.body.preheader_crit_edge ], [ 10, %for.inc.10.while.body.preheader_crit_edge ], [ 11, %for.inc.11.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec25 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec25.ph, %while.body.preheader ]
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %arrayidx6 = getelementptr [13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 %dec25
  tail call void @device_remove_file(ptr noundef %31, ptr noundef %arrayidx6) #9
  %dec = add nsw i32 %dec25, -1
  %cmp4.not = icmp eq i32 %dec25, 0
  br i1 %cmp4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %32 = ptrtoint ptr %class_flag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %class_flag, align 4
  %and = and i32 %33, -2
  store i32 %and, ptr %class_flag, align 4
  br label %if.end8

if.end8:                                          ; preds = %while.end, %for.inc.11.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_cleanup_device(ptr nocapture noundef %fb_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %class_flag = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 23
  %0 = ptrtoint ptr %class_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class_flag, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 22
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @device_attrs) #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %5, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 1)) #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %7, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 2)) #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %9, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 3)) #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %11, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 4)) #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %13, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 5)) #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %15, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 6)) #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %17, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 7)) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %19, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 8)) #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %21, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 9)) #9
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %23, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 10)) #9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %25, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 11)) #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %27, ptr noundef getelementptr inbounds ([13 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 12)) #9
  %28 = ptrtoint ptr %class_flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %class_flag, align 4
  %and2 = and i32 %29, -2
  store i32 %and2, ptr %class_flag, align 4
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_bl_default_curve(ptr noundef %fb_info, i8 noundef zeroext %off, i8 noundef zeroext %min, i8 noundef zeroext %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i8 %min to i32
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %bl_curve_mutex, i32 noundef 0) #9
  %bl_curve = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 17
  %0 = ptrtoint ptr %bl_curve to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %off, ptr %bl_curve, align 4
  %uglygep = getelementptr i8, ptr %fb_info, i32 833
  %1 = zext i8 %min to i32
  %2 = call ptr @memset(ptr %uglygep, i32 %1, i32 7)
  %conv = zext i8 %max to i32
  %sub = sub nsw i32 %conv, %conv1
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %add, %for.body8.for.body8_crit_edge ]
  %add = add nuw nsw i32 %i.033, 1
  %mul = mul nsw i32 %add, %sub
  %div = udiv i32 %mul, 120
  %3 = trunc i32 %div to i8
  %conv11 = add i8 %3, %min
  %add13 = add nuw nsw i32 %i.033, 8
  %arrayidx14 = getelementptr %struct.fb_info, ptr %fb_info, i32 0, i32 17, i32 %add13
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv11, ptr %arrayidx14, align 1
  %exitcond.not = icmp eq i32 %add, 120
  br i1 %exitcond.not, label %for.end17, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

for.end17:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %bl_curve_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_bpp(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_bpp(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #9
  %var1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %var, ptr %var1, i32 160)
  %call2 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #9
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %3 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2, ptr %bits_per_pixel, align 4
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %4 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %activate.i, align 4
  %or.i = or i32 %5, 128
  store i32 %or.i, ptr %activate.i, align 4
  tail call void @console_lock() #9
  %call.i = call i32 @fb_set_var(ptr noundef %1, ptr noundef nonnull %var) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.activate.exit_crit_edge

entry.activate.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %activate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %activate.i, align 4
  %and.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i = icmp ne i32 %and.i, 0
  call void @fbcon_update_vcs(ptr noundef %1, i1 noundef zeroext %tobool2.i) #9
  br label %activate.exit

activate.exit:                                    ; preds = %if.then.i, %entry.activate.exit_crit_edge
  %count.call3 = phi i32 [ %call.i, %entry.activate.exit_crit_edge ], [ %count, %if.then.i ]
  call void @console_unlock() #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #9
  ret i32 %count.call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_blank(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_blank(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %last = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #9
  %2 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %last, align 4
  %call1 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %last, i32 noundef 0) #9
  call void @console_lock() #9
  %call2 = call i32 @fb_blank(ptr noundef %1, i32 noundef %call1) #9
  call void @fbcon_fb_blanked(ptr noundef %1, i32 noundef %call1) #9
  call void @console_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #9
  ret i32 %call2.count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_console(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @store_console(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_cursor(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @store_cursor(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_mode(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flag.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 85, i32 68
  %and2.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %m.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 86
  %and7.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %m.2.i = select i1 %tobool8.not.i, i32 %m.1.i, i32 83
  %vmode.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vmode.i, align 4
  %and11.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %v.0.i = select i1 %tobool12.not.i, i32 112, i32 105
  %and16.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %v.1.i = select i1 %tobool17.not.i, i32 %v.0.i, i32 100
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres.i, align 4
  %refresh.i = getelementptr inbounds %struct.fb_videomode, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refresh.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef %m.2.i, i32 noundef %9, i32 noundef %11, i32 noundef %v.1.i, i32 noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_mode(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %mstr = alloca [100 x i8], align 1
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %mstr) #9
  %2 = call ptr @memset(ptr %mstr, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #9
  %modelist1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ %modelist1, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %modelist1
  br i1 %cmp.i.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %flag.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.0, i32 0, i32 1, i32 13
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 85, i32 68
  %and2.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %m.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 86
  %and7.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %m.2.i = select i1 %tobool8.not.i, i32 %m.1.i, i32 83
  %vmode.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.0, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vmode.i, align 4
  %and11.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %v.0.i = select i1 %tobool12.not.i, i32 112, i32 105
  %and16.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %v.1.i = select i1 %tobool17.not.i, i32 %v.0.i, i32 100
  %xres.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.0, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.0, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres.i, align 4
  %refresh.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.0, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refresh.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mstr, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef %m.2.i, i32 noundef %9, i32 noundef %11, i32 noundef %v.1.i, i32 noundef %13) #9
  %14 = tail call i32 @llvm.umax.i32(i32 %call.i, i32 %count)
  %call8 = call i32 @strncmp(ptr noundef nonnull %mstr, ptr noundef %buf, i32 noundef %14)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  %mode4.le = getelementptr inbounds %struct.fb_modelist, ptr %pos.0, i32 0, i32 1
  %var10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %var, ptr %var10, i32 160)
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef %mode4.le) #9
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %16 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %activate.i, align 4
  %or.i = or i32 %17, 128
  store i32 %or.i, ptr %activate.i, align 4
  call void @console_lock() #9
  %call.i35 = call i32 @fb_set_var(ptr noundef %1, ptr noundef nonnull %var) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end, label %activate.exit

activate.exit:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @console_unlock() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %activate.i, align 4
  %and.i37 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool2.i = icmp ne i32 %and.i37, 0
  call void @fbcon_update_vcs(ptr noundef %1, i1 noundef zeroext %tobool2.i) #9
  call void @console_unlock() #9
  %mode14 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %mode14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mode4.le, ptr %mode14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %activate.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i35, %activate.exit ], [ -22, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %mstr) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_modes(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %modelist1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %modelist1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.012 = load ptr, ptr %modelist1, align 4
  %cmp.i.not13 = icmp eq ptr %pos.012, %modelist1
  br i1 %cmp.i.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.015 = phi ptr [ %pos.0, %for.body.for.body_crit_edge ], [ %pos.012, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flag.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.015, i32 0, i32 1, i32 13
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 85, i32 68
  %and2.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %m.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 86
  %and7.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %m.2.i = select i1 %tobool8.not.i, i32 %m.1.i, i32 83
  %vmode.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.015, i32 0, i32 1, i32 12
  %5 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vmode.i, align 4
  %and11.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %v.0.i = select i1 %tobool12.not.i, i32 112, i32 105
  %and16.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %v.1.i = select i1 %tobool17.not.i, i32 %v.0.i, i32 100
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.014
  %sub.i = sub i32 4096, %i.014
  %xres.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.015, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.015, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres.i, align 4
  %refresh.i = getelementptr inbounds %struct.fb_modelist, ptr %pos.015, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %refresh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refresh.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull @.str.15, i32 noundef %m.2.i, i32 noundef %8, i32 noundef %10, i32 noundef %v.1.i, i32 noundef %12) #9
  %add = add i32 %call.i, %i.014
  %13 = ptrtoint ptr %pos.015 to i32
  call void @__asan_load4_noabort(i32 %13)
  %pos.0 = load ptr, ptr %pos.015, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %modelist1
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_modes(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %old_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_list) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %old_list, i32 0, i32 1
  %3 = ptrtoint ptr %old_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %old_list, ptr %old_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %old_list, ptr %2, align 4
  %div = udiv i32 %count, 56
  %mul = mul nuw i32 %div, 56
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %count)
  %cmp.not = icmp eq i32 %mul, %count
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @console_lock() #9
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %modelist = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %modelist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %modelist, align 4
  %cmp.i.not.i = icmp eq ptr %6, %modelist
  br i1 %cmp.i.not.i, label %if.end.list_splice.exit_crit_edge, label %if.then.i

if.end.list_splice.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %old_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %old_list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %old_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %if.end.list_splice.exit_crit_edge
  call void @fb_videomode_to_modelist(ptr noundef %buf, i32 noundef %div, ptr noundef %modelist) #9
  %call2 = call i32 @fb_new_modelist(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %list_splice.exit
  call void @fb_destroy_modelist(ptr noundef %modelist) #9
  %14 = ptrtoint ptr %old_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %old_list, align 4
  %cmp.i.not.i17 = icmp eq ptr %15, %old_list
  br i1 %cmp.i.not.i17, label %if.then3.if.end6_crit_edge, label %if.then.i21

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i21:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %modelist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modelist, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %prev3.i.i19 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %modelist, ptr %prev3.i.i19, align 4
  store ptr %15, ptr %modelist, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i20, align 4
  br label %if.end6

if.else:                                          ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @fb_destroy_modelist(ptr noundef nonnull %old_list) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then.i21, %if.then3.if.end6_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @console_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_list) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pan(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pan(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  %last = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #9
  %2 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %last, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %3 = call ptr @memcpy(ptr %var, ptr %var1, i32 160)
  %call2 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %last, i32 noundef 0) #9
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %xoffset, align 4
  %5 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last, align 4
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %last, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp.not = icmp ult i32 %sub.ptr.sub, %count
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call i32 @simple_strtoul(ptr noundef %incdec.ptr, ptr noundef nonnull %last, i32 noundef 0) #9
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %7 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %yoffset, align 4
  call void @console_lock() #9
  %call4 = call i32 @fb_pan_display(ptr noundef %1, ptr noundef nonnull %var) #9
  call void @console_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  %call4.count = select i1 %cmp5, i32 %call4, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_virtual(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_virtual(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  %last = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #9
  %2 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %last, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %3 = call ptr @memcpy(ptr %var, ptr %var1, i32 160)
  %call2 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %last, i32 noundef 0) #9
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %xres_virtual, align 4
  %5 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last, align 4
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %last, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp.not = icmp ult i32 %sub.ptr.sub, %count
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @simple_strtoul(ptr noundef %incdec.ptr, ptr noundef nonnull %last, i32 noundef 0) #9
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %7 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %yres_virtual, align 4
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %8 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %activate.i, align 4
  %or.i = or i32 %9, 128
  store i32 %or.i, ptr %activate.i, align 4
  call void @console_lock() #9
  %call.i = call i32 @fb_set_var(ptr noundef %1, ptr noundef nonnull %var) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.activate.exit_crit_edge

if.end.activate.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %activate.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %activate.i, align 4
  %and.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i = icmp ne i32 %and.i, 0
  call void @fbcon_update_vcs(ptr noundef %1, i1 noundef zeroext %tobool2.i) #9
  br label %activate.exit

activate.exit:                                    ; preds = %if.then.i, %if.end.activate.exit_crit_edge
  %count.call4 = phi i32 [ %call.i, %if.end.activate.exit_crit_edge ], [ %count, %if.then.i ]
  call void @console_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %activate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count.call4, %activate.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_name(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, ptr noundef %fix) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_stride(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line_length, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rotate(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rotate = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 26
  %2 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_rotate(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #9
  %var1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %var, ptr %var1, i32 160)
  %call2 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #9
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %3 = ptrtoint ptr %rotate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2, ptr %rotate, align 4
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %4 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %activate.i, align 4
  %or.i = or i32 %5, 128
  store i32 %or.i, ptr %activate.i, align 4
  tail call void @console_lock() #9
  %call.i = call i32 @fb_set_var(ptr noundef %1, ptr noundef nonnull %var) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.activate.exit_crit_edge

entry.activate.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %activate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %activate.i, align 4
  %and.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i = icmp ne i32 %and.i, 0
  call void @fbcon_update_vcs(ptr noundef %1, i1 noundef zeroext %tobool2.i) #9
  br label %activate.exit

activate.exit:                                    ; preds = %if.then.i, %entry.activate.exit_crit_edge
  %count.call3 = phi i32 [ %call.i, %entry.activate.exit_crit_edge ], [ %count, %if.then.i ]
  call void @console_unlock() #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #9
  ret i32 %count.call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fbstate(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fbstate(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  %last = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #9
  %2 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %last, align 4
  %call1 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %last, i32 noundef 0) #9
  call void @console_lock() #9
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  call void @fb_set_suspend(ptr noundef %1, i32 noundef %call1) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @console_unlock() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_bl_curve(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %bl_curve_mutex, i32 noundef 0) #9
  %bl_curve = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 17
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef %bl_curve) #9
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 %call2
  %sub.1 = sub i32 4096, %call2
  %add.ptr.1 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 8
  %call2.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.1, i32 noundef %sub.1, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.1) #9
  %add.1 = add i32 %call2.1, %call2
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %add.ptr.2 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 16
  %call2.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.2, i32 noundef %sub.2, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.2) #9
  %add.2 = add i32 %call2.2, %add.1
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %add.ptr.3 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 24
  %call2.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.3, i32 noundef %sub.3, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.3) #9
  %add.3 = add i32 %call2.3, %add.2
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %add.ptr.4 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 32
  %call2.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.4, i32 noundef %sub.4, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.4) #9
  %add.4 = add i32 %call2.4, %add.3
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %add.ptr.5 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 40
  %call2.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.5, i32 noundef %sub.5, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.5) #9
  %add.5 = add i32 %call2.5, %add.4
  %arrayidx.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %add.ptr.6 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 48
  %call2.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.6, i32 noundef %sub.6, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.6) #9
  %add.6 = add i32 %call2.6, %add.5
  %arrayidx.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %add.ptr.7 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 56
  %call2.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.7, i32 noundef %sub.7, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.7) #9
  %add.7 = add i32 %call2.7, %add.6
  %arrayidx.8 = getelementptr i8, ptr %buf, i32 %add.7
  %sub.8 = sub i32 4096, %add.7
  %add.ptr.8 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 64
  %call2.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.8, i32 noundef %sub.8, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.8) #9
  %add.8 = add i32 %call2.8, %add.7
  %arrayidx.9 = getelementptr i8, ptr %buf, i32 %add.8
  %sub.9 = sub i32 4096, %add.8
  %add.ptr.9 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 72
  %call2.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.9, i32 noundef %sub.9, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.9) #9
  %add.9 = add i32 %call2.9, %add.8
  %arrayidx.10 = getelementptr i8, ptr %buf, i32 %add.9
  %sub.10 = sub i32 4096, %add.9
  %add.ptr.10 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 80
  %call2.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.10, i32 noundef %sub.10, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.10) #9
  %add.10 = add i32 %call2.10, %add.9
  %arrayidx.11 = getelementptr i8, ptr %buf, i32 %add.10
  %sub.11 = sub i32 4096, %add.10
  %add.ptr.11 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 88
  %call2.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.11, i32 noundef %sub.11, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.11) #9
  %add.11 = add i32 %call2.11, %add.10
  %arrayidx.12 = getelementptr i8, ptr %buf, i32 %add.11
  %sub.12 = sub i32 4096, %add.11
  %add.ptr.12 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 96
  %call2.12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.12, i32 noundef %sub.12, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.12) #9
  %add.12 = add i32 %call2.12, %add.11
  %arrayidx.13 = getelementptr i8, ptr %buf, i32 %add.12
  %sub.13 = sub i32 4096, %add.12
  %add.ptr.13 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 104
  %call2.13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.13, i32 noundef %sub.13, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.13) #9
  %add.13 = add i32 %call2.13, %add.12
  %arrayidx.14 = getelementptr i8, ptr %buf, i32 %add.13
  %sub.14 = sub i32 4096, %add.13
  %add.ptr.14 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 112
  %call2.14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.14, i32 noundef %sub.14, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.14) #9
  %add.14 = add i32 %call2.14, %add.13
  %arrayidx.15 = getelementptr i8, ptr %buf, i32 %add.14
  %sub.15 = sub i32 4096, %add.14
  %add.ptr.15 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 120
  %call2.15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.15, i32 noundef %sub.15, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.15) #9
  %add.15 = add i32 %call2.15, %add.14
  tail call void @mutex_unlock(ptr noundef %bl_curve_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.15, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_bl_curve(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp_curve = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp_curve) #9
  %2 = call ptr @memset(ptr %tmp_curve, i32 255, i32 128)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bl_dev, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %count)
  %cmp.not = icmp eq i32 %count, 384
  br i1 %cmp.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.062, 24
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul
  %mul5 = shl nuw nsw i32 %i.062, 3
  %arrayidx6 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %mul5
  %add8 = or i32 %mul5, 1
  %arrayidx9 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add8
  %add11 = or i32 %mul5, 2
  %arrayidx12 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add11
  %add14 = or i32 %mul5, 3
  %arrayidx15 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add14
  %add17 = or i32 %mul5, 4
  %arrayidx18 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add17
  %add20 = or i32 %mul5, 5
  %arrayidx21 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add20
  %add23 = or i32 %mul5, 6
  %arrayidx24 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add23
  %add26 = or i32 %mul5, 7
  %arrayidx27 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %add26
  %call28 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx, ptr noundef nonnull @.str.19, ptr noundef %arrayidx6, ptr noundef %arrayidx9, ptr noundef %arrayidx12, ptr noundef %arrayidx15, ptr noundef %arrayidx18, ptr noundef %arrayidx21, ptr noundef %arrayidx24, ptr noundef %arrayidx27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 8
  br i1 %cmp29.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %bl_curve_mutex = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %bl_curve_mutex, i32 noundef 0) #9
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.end
  %i.163 = phi i32 [ 0, %for.end ], [ %inc38, %for.body34.for.body34_crit_edge ]
  %arrayidx35 = getelementptr [128 x i8], ptr %tmp_curve, i32 0, i32 %i.163
  %5 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr %struct.fb_info, ptr %1, i32 0, i32 17, i32 %i.163
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx36, align 1
  %inc38 = add nuw nsw i32 %i.163, 1
  %exitcond64.not = icmp eq i32 %inc38, 128
  br i1 %exitcond64.not, label %for.end39, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.end39:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %bl_curve_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end39, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 384, %for.end39 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp_curve) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_update_vcs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_blank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_blanked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_new_modelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @framebuffer_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 61, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_framebuffer_alloc, !4, !"__ksymtab_framebuffer_alloc", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 68, i32 1}
!5 = !{ptr @__ksymtab_framebuffer_release, !6, !"__ksymtab_framebuffer_release", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 86, i32 1}
!7 = !{ptr @__ksymtab_fb_bl_default_curve, !8, !"__ksymtab_fb_bl_default_curve", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 570, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 493, i32 2}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 494, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 495, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 496, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 497, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 498, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 499, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 500, i32 2}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 501, i32 2}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 502, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 503, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 504, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 506, i32 2}
!35 = !{ptr @device_attrs, !36, !"device_attrs", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 492, i32 32}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 233, i32 25}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 121, i32 52}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 384, i32 25}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 393, i32 25}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 481, i32 48}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/core/fbsysfs.c", i32 444, i32 4}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
