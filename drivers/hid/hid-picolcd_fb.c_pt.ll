; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-picolcd_fb.c_pt.bc'
source_filename = "../drivers/hid/hid-picolcd_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.picolcd_data = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, [2 x i8], i16, [2 x i8], ptr, ptr, [17 x i16], ptr, ptr, i8, ptr, i8, i8, i8, [8 x ptr], %struct.spinlock, %struct.mutex, ptr, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.85 = type { ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.picolcd_fb_data = type { %struct.spinlock, ptr, i8, i8, i8, i8, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@picolcd_fb_reset.mapcmd = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\00d?\00d\C0", [24 x i8] zeroinitializer }, align 32
@picolcd_fb_defio = internal constant { %struct.fb_deferred_io, [48 x i8] } { %struct.fb_deferred_io { i32 50, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @picolcd_fb_deferred_io }, [48 x i8] zeroinitializer }, align 32
@picolcdfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @picolcd_fb_write, ptr @picolcd_fb_check_var, ptr @picolcd_set_par, ptr null, ptr null, ptr @picolcd_fb_blank, ptr null, ptr @picolcd_fb_fillrect, ptr @picolcd_fb_copyarea, ptr @picolcd_fb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @picolcd_fb_destroy, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@picolcdfb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 256, i32 64, i32 256, i32 64, i32 0, i32 0, i32 1, i32 1, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 26, i32 103, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@picolcdfb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"picolcdfb\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, i16 0, i16 0, i32 32, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fbdata->lock\00", [18 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't get a free page for framebuffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"picolcd_init_framebuffer\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hid/hid-picolcd_fb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer._entry_ptr = internal global ptr @picolcd_init_framebuffer._entry, section ".printk_index", align 4
@picolcd_init_framebuffer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to configure display\0A\00", [35 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer._entry_ptr.8 = internal global ptr @picolcd_init_framebuffer._entry.6, section ".printk_index", align 4
@dev_attr_fb_update_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @picolcd_fb_update_rate_show, ptr @picolcd_fb_update_rate_store }, [36 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to create sysfs attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer._entry_ptr.11 = internal global ptr @picolcd_init_framebuffer._entry.9, section ".printk_index", align 4
@picolcd_init_framebuffer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register framebuffer\0A\00", [32 x i8] zeroinitializer }, align 32
@picolcd_init_framebuffer._entry_ptr.14 = internal global ptr @picolcd_init_framebuffer._entry.12, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb_update_rate\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%u] \00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 8]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"mapcmd\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 191, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"picolcd_fb_defio\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 440, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"picolcdfb_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 420, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"picolcdfb_var\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 58, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"picolcdfb_fix\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 47, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 532, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 540, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 550, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"dev_attr_fb_update_rate\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 556, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 563, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 494, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 461, i32 45 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 463, i32 45 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [32 x i8] c"../drivers/hid/hid-picolcd_fb.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 480, i32 18 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @picolcd_init_framebuffer._entry, ptr @picolcd_init_framebuffer._entry.12, ptr @picolcd_init_framebuffer._entry.6, ptr @picolcd_init_framebuffer._entry.9, ptr @picolcd_init_framebuffer._entry_ptr, ptr @picolcd_init_framebuffer._entry_ptr.11, ptr @picolcd_init_framebuffer._entry_ptr.14, ptr @picolcd_init_framebuffer._entry_ptr.8, ptr @picolcd_fb_reset.mapcmd, ptr @picolcd_fb_defio, ptr @picolcdfb_ops, ptr @picolcdfb_var, ptr @picolcdfb_fix, ptr @picolcd_init_framebuffer.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @dev_attr_fb_update_rate, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_fb_reset.mapcmd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_fb_defio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcdfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcdfb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcdfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_framebuffer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_framebuffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_framebuffer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fb_update_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_framebuffer._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_framebuffer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_fb_refresh(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %deferred_work, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @picolcd_fb_reset(ptr noundef %data, i32 noundef %clear) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @picolcd_report(i32 noundef 148, ptr noundef %1, i32 noundef 1) #10
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_info, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %do.body1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %field = getelementptr inbounds %struct.hid_report, ptr %call, i32 0, i32 5
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %do.body33.for.cond9.preheader_crit_edge, %do.body1
  %i.091 = phi i32 [ 0, %do.body1 ], [ %inc41, %do.body33.for.cond9.preheader_crit_edge ]
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %maxusage87 = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %maxusage87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxusage87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1088.not = icmp eq i32 %11, 0
  br i1 %cmp1088.not, label %for.cond9.preheader.do.body33_crit_edge, label %for.inc.peel

for.cond9.preheader.do.body33_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

for.inc.peel:                                     ; preds = %for.cond9.preheader
  %shl = shl i32 %i.091, 2
  %call18.peel = tail call i32 @hid_set_field(ptr noundef %9, i32 noundef 0, i32 noundef %shl) #10
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %field, align 4
  %maxusage.peel = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %maxusage.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxusage.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp10.peel = icmp ugt i32 %15, 1
  br i1 %cmp10.peel, label %for.inc.peel.if.else_crit_edge, label %for.inc.peel.do.body33_crit_edge

for.inc.peel.do.body33_crit_edge:                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

for.inc.peel.if.else_crit_edge:                   ; preds = %for.inc.peel
  br label %if.else

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %for.inc.peel.if.else_crit_edge
  %16 = phi ptr [ %20, %for.inc.if.else_crit_edge ], [ %13, %for.inc.peel.if.else_crit_edge ]
  %j.089 = phi i32 [ %inc, %for.inc.if.else_crit_edge ], [ 1, %for.inc.peel.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %j.089)
  %cmp19 = icmp ult i32 %j.089, 8
  br i1 %cmp19, label %if.then21, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24 = getelementptr [8 x i8], ptr @picolcd_fb_reset.mapcmd, i32 0, i32 %j.089
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %18 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.else.for.inc_crit_edge
  %.sink = phi i32 [ %conv25, %if.then21 ], [ 0, %if.else.for.inc_crit_edge ]
  %call30 = tail call i32 @hid_set_field(ptr noundef %16, i32 noundef %j.089, i32 noundef %.sink) #10
  %inc = add nuw i32 %j.089, 1
  %19 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %field, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxusage, align 4
  %cmp10 = icmp ult i32 %inc, %22
  br i1 %cmp10, label %for.inc.if.else_crit_edge, label %for.inc.do.body33_crit_edge, !llvm.loop !51

for.inc.do.body33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body33:                                        ; preds = %for.inc.do.body33_crit_edge, %for.inc.peel.do.body33_crit_edge, %for.cond9.preheader.do.body33_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %24, i32 0, i32 18, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %26, ptr noundef %24, ptr noundef nonnull %call) #10
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %28, ptr noundef nonnull %call, i32 noundef 9) #10
  %inc41 = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc41, 4
  br i1 %exitcond.not, label %for.end42, label %do.body33.for.cond9.preheader_crit_edge

do.body33.for.cond9.preheader_crit_edge:          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.end42:                                        ; preds = %do.body33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear)
  %tobool44.not = icmp eq i32 %clear, 0
  br i1 %tobool44.not, label %for.end42.if.end47_crit_edge, label %if.then45

for.end42.if.end47_crit_edge:                     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #12
  %vbitmap = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %vbitmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbitmap, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 2048)
  %bitmap = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmap, align 4
  %bpp = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bpp, align 1
  %conv46 = zext i8 %35 to i32
  %mul = shl nuw nsw i32 %conv46, 11
  %36 = call ptr @memset(ptr %33, i32 0, i32 %mul)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.end42.if.end47_crit_edge
  %force = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 4
  %37 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %force, align 2
  %ready = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 5
  %38 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ready, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool48.not = icmp eq i8 %39, 0
  br i1 %tobool48.not, label %if.else52, label %if.then49

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb_info, align 4
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %deferred_work, i32 noundef 0) #10
  br label %cleanup

if.else52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %ready, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.then49, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.else52 ], [ 0, %if.then49 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @picolcd_report(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_debug_out_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @picolcd_init_framebuffer(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call = tail call ptr @framebuffer_alloc(i32 noundef 3244, ptr noundef %dev1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end52_crit_edge, label %if.end

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end:                                           ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fbdefio, align 4
  %5 = call ptr @memcpy(ptr %3, ptr @picolcd_fb_defio, i32 112)
  %6 = load ptr, ptr %par, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 112
  %add.ptr6 = getelementptr i8, ptr %6, i32 1136
  store ptr %add.ptr6, ptr %par, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0113 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = add nsw i32 %i.0113, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %8 = icmp ult i32 %7, 15
  %cond = select i1 %8, i32 255, i32 0
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %i.0113
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 27
  %10 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %pseudo_palette, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @picolcdfb_ops, ptr %fbops, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %var, ptr @picolcdfb_var, i32 160)
  %fix = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %fix, ptr @picolcdfb_fix, i32 68)
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16384, ptr %smem_len, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags, align 4
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @picolcd_init_framebuffer.__key, i16 noundef signext 3) #10
  %picolcd = getelementptr inbounds %struct.picolcd_fb_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %picolcd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %picolcd, align 4
  %update_rate = getelementptr inbounds %struct.picolcd_fb_data, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %update_rate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %update_rate, align 4
  %bpp = getelementptr inbounds %struct.picolcd_fb_data, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %bpp to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %bpp, align 1
  %force = getelementptr inbounds %struct.picolcd_fb_data, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %force, align 2
  %22 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %par, align 4
  %add.ptr13 = getelementptr i8, ptr %23, i32 60
  %vbitmap = getelementptr inbounds %struct.picolcd_fb_data, ptr %17, i32 0, i32 6
  %24 = ptrtoint ptr %vbitmap to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr13, ptr %vbitmap, align 4
  %call14 = tail call noalias ptr @vmalloc(i32 noundef 16384) #13
  %bitmap = getelementptr inbounds %struct.picolcd_fb_data, ptr %17, i32 0, i32 7
  %25 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14, ptr %bitmap, align 4
  %cmp16 = icmp eq ptr %call14, null
  br i1 %cmp16, label %do.end21, label %if.end22

do.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %err_nomem

if.end22:                                         ; preds = %for.end
  %26 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call14, ptr %26, align 4
  %28 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitmap, align 4
  %30 = ptrtoint ptr %29 to i32
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %smem_start, align 4
  %32 = ptrtoint ptr %vbitmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vbitmap, align 4
  %34 = call ptr @memset(ptr %33, i32 255, i32 2048)
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 12
  %35 = ptrtoint ptr %fb_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %fb_info, align 4
  %call27 = tail call i32 @picolcd_fb_reset(ptr noundef %data, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #14
  br label %err_cleanup

if.end33:                                         ; preds = %if.end22
  %call34 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_fb_update_rate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #14
  br label %err_cleanup

if.end40:                                         ; preds = %if.end33
  tail call void @fb_deferred_io_init(ptr noundef nonnull %call) #10
  %call41 = tail call i32 @register_framebuffer(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #14
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_fb_update_rate) #10
  tail call void @fb_deferred_io_cleanup(ptr noundef nonnull %call) #10
  br label %err_cleanup

err_cleanup:                                      ; preds = %do.end46, %do.end39, %do.end32
  %error.0 = phi i32 [ %call27, %do.end32 ], [ %call34, %do.end39 ], [ %call41, %do.end46 ]
  %36 = ptrtoint ptr %fb_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fb_info, align 4
  br label %err_nomem

err_nomem:                                        ; preds = %err_cleanup, %do.end21
  %error.1 = phi i32 [ -12, %do.end21 ], [ %error.0, %err_cleanup ]
  %tobool49.not = icmp eq ptr %17, null
  br i1 %tobool49.not, label %err_nomem.if.end52_crit_edge, label %if.then50

err_nomem.if.end52_crit_edge:                     ; preds = %err_nomem
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %err_nomem
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitmap, align 4
  tail call void @vfree(ptr noundef %38) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %err_nomem.if.end52_crit_edge, %entry.if.end52_crit_edge
  %error.1112 = phi i32 [ %error.1, %if.then50 ], [ %error.1, %err_nomem.if.end52_crit_edge ], [ -12, %entry.if.end52_crit_edge ]
  tail call void @framebuffer_release(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1112, %if.end52 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_exit_framebuffer(ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_fb_update_rate) #10
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %picolcd = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %picolcd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %picolcd, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call2) #10
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 18
  %call6 = tail call zeroext i1 @flush_delayed_work(ptr noundef %deferred_work) #10
  %7 = ptrtoint ptr %fb_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fb_info, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_fb_deferred_io(ptr noundef %info, ptr nocapture noundef readnone %pagelist) #0 align 64 {
entry:
  %tdata.i.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par.i, align 4
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %ready.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %picolcd.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %picolcd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %picolcd.i, align 4
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 @picolcd_fb_reset(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3.i) #10
  %force.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 4
  %vbitmap.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 6
  %bitmap.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 7
  %bpp.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 3
  %picolcd40.i = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 1
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.inc70.i.for.cond12.preheader.i_crit_edge, %if.end.i
  %chip.0182.i = phi i32 [ 0, %if.end.i ], [ %inc71.i, %for.inc70.i.for.cond12.preheader.i_crit_edge ]
  %n.0181.i = phi i32 [ 0, %if.end.i ], [ %n.3.i, %for.inc70.i.for.cond12.preheader.i_crit_edge ]
  %mul29.i.i = shl i32 %chip.0182.i, 3
  %shl.i149.i = shl i32 %chip.0182.i, 2
  %or53.i.i = or i32 %shl.i149.i, 1
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %for.cond12.preheader.i
  %tile.0179.i = phi i32 [ 0, %for.cond12.preheader.i ], [ %inc.i, %for.inc.i.for.body15.i_crit_edge ]
  %n.1177.i = phi i32 [ %n.0181.i, %for.cond12.preheader.i ], [ %n.3.i, %for.inc.i.for.body15.i_crit_edge ]
  %6 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %force.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not.i = icmp eq i8 %7, 0
  br i1 %tobool16.not.i, label %land.lhs.true17.i, label %for.body15.i.if.end22.i_crit_edge

for.body15.i.if.end22.i_crit_edge:                ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

land.lhs.true17.i:                                ; preds = %for.body15.i
  %8 = ptrtoint ptr %vbitmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbitmap.i, align 4
  %10 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap.i, align 4
  %12 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bpp.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tdata.i.i) #10
  %14 = call ptr @memset(ptr %tdata.i.i, i32 255, i32 64)
  %mul.i.i = shl i32 %tile.0179.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, %chip.0182.i
  %mul1.i.i = shl i32 %add.i.i, 6
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %mul1.i.i
  %15 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %picolcd_fb_update_tile.exit.thread.i [
    i8 1, label %for.cond.preheader.i.i
    i8 8, label %for.cond23.preheader.i.i
  ]

for.cond23.preheader.i.i:                         ; preds = %land.lhs.true17.i
  %mul28.i.i = shl i32 %tile.0179.i, 8
  %add30.i.i = add nuw nsw i32 %mul28.i.i, %mul29.i.i
  %add32.i.i = shl i32 %add30.i.i, 3
  %mul33.i.i = add nuw nsw i32 %add32.i.i, 1792
  %add.ptr34.i.i = getelementptr i8, ptr %11, i32 %mul33.i.i
  br label %for.body38.i.i

for.cond.preheader.i.i:                           ; preds = %land.lhs.true17.i
  %mul3.i.i = shl i32 %tile.0179.i, 8
  %add.ptr4.i.i = getelementptr i8, ptr %11, i32 %mul29.i.i
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul3.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 224
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0131.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %17, 1
  %div127.i.i = lshr i32 %i.0131.i.i, 3
  %arrayidx13.i.i = getelementptr i8, ptr %add.ptr8.i.i, i32 %div127.i.i
  %18 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %19 to i32
  %rem126.i.i = and i32 %i.0131.i.i, 7
  %shr.i.i = lshr i32 %conv14.i.i, %rem126.i.i
  %20 = trunc i32 %shr.i.i to i8
  %21 = and i8 %20, 1
  %conv17.i.i = or i8 %21, %shl.i.i
  store i8 %conv17.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.0131.i.i, 1
  %exitcond136.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond136.not.i.i, label %for.end.i.i, label %for.body11.i.i.for.body11.i.i_crit_edge

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i.i

for.end.i.i:                                      ; preds = %for.body11.i.i
  %add.ptr8.1.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 192
  br label %for.body11.1.i.i

for.body11.1.i.i:                                 ; preds = %for.body11.1.i.i.for.body11.1.i.i_crit_edge, %for.end.i.i
  %i.0131.1.i.i = phi i32 [ 0, %for.end.i.i ], [ %inc.1.i.i, %for.body11.1.i.i.for.body11.1.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.1.i.i
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1.i.i, align 1
  %shl.1.i.i = shl i8 %23, 1
  %div127.1.i.i = lshr i32 %i.0131.1.i.i, 3
  %arrayidx13.1.i.i = getelementptr i8, ptr %add.ptr8.1.i.i, i32 %div127.1.i.i
  %24 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx13.1.i.i, align 1
  %conv14.1.i.i = zext i8 %25 to i32
  %rem126.1.i.i = and i32 %i.0131.1.i.i, 7
  %shr.1.i.i = lshr i32 %conv14.1.i.i, %rem126.1.i.i
  %26 = trunc i32 %shr.1.i.i to i8
  %27 = and i8 %26, 1
  %conv17.1.i.i = or i8 %27, %shl.1.i.i
  store i8 %conv17.1.i.i, ptr %arrayidx.1.i.i, align 1
  %inc.1.i.i = add nuw nsw i32 %i.0131.1.i.i, 1
  %exitcond136.1.not.i.i = icmp eq i32 %inc.1.i.i, 64
  br i1 %exitcond136.1.not.i.i, label %for.end.1.i.i, label %for.body11.1.i.i.for.body11.1.i.i_crit_edge

for.body11.1.i.i.for.body11.1.i.i_crit_edge:      ; preds = %for.body11.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.1.i.i

for.end.1.i.i:                                    ; preds = %for.body11.1.i.i
  %add.ptr8.2.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 160
  br label %for.body11.2.i.i

for.body11.2.i.i:                                 ; preds = %for.body11.2.i.i.for.body11.2.i.i_crit_edge, %for.end.1.i.i
  %i.0131.2.i.i = phi i32 [ 0, %for.end.1.i.i ], [ %inc.2.i.i, %for.body11.2.i.i.for.body11.2.i.i_crit_edge ]
  %arrayidx.2.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.2.i.i
  %28 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2.i.i, align 1
  %shl.2.i.i = shl i8 %29, 1
  %div127.2.i.i = lshr i32 %i.0131.2.i.i, 3
  %arrayidx13.2.i.i = getelementptr i8, ptr %add.ptr8.2.i.i, i32 %div127.2.i.i
  %30 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx13.2.i.i, align 1
  %conv14.2.i.i = zext i8 %31 to i32
  %rem126.2.i.i = and i32 %i.0131.2.i.i, 7
  %shr.2.i.i = lshr i32 %conv14.2.i.i, %rem126.2.i.i
  %32 = trunc i32 %shr.2.i.i to i8
  %33 = and i8 %32, 1
  %conv17.2.i.i = or i8 %33, %shl.2.i.i
  store i8 %conv17.2.i.i, ptr %arrayidx.2.i.i, align 1
  %inc.2.i.i = add nuw nsw i32 %i.0131.2.i.i, 1
  %exitcond136.2.not.i.i = icmp eq i32 %inc.2.i.i, 64
  br i1 %exitcond136.2.not.i.i, label %for.end.2.i.i, label %for.body11.2.i.i.for.body11.2.i.i_crit_edge

for.body11.2.i.i.for.body11.2.i.i_crit_edge:      ; preds = %for.body11.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.2.i.i

for.end.2.i.i:                                    ; preds = %for.body11.2.i.i
  %add.ptr8.3.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 128
  br label %for.body11.3.i.i

for.body11.3.i.i:                                 ; preds = %for.body11.3.i.i.for.body11.3.i.i_crit_edge, %for.end.2.i.i
  %i.0131.3.i.i = phi i32 [ 0, %for.end.2.i.i ], [ %inc.3.i.i, %for.body11.3.i.i.for.body11.3.i.i_crit_edge ]
  %arrayidx.3.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.3.i.i
  %34 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.3.i.i, align 1
  %shl.3.i.i = shl i8 %35, 1
  %div127.3.i.i = lshr i32 %i.0131.3.i.i, 3
  %arrayidx13.3.i.i = getelementptr i8, ptr %add.ptr8.3.i.i, i32 %div127.3.i.i
  %36 = ptrtoint ptr %arrayidx13.3.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx13.3.i.i, align 1
  %conv14.3.i.i = zext i8 %37 to i32
  %rem126.3.i.i = and i32 %i.0131.3.i.i, 7
  %shr.3.i.i = lshr i32 %conv14.3.i.i, %rem126.3.i.i
  %38 = trunc i32 %shr.3.i.i to i8
  %39 = and i8 %38, 1
  %conv17.3.i.i = or i8 %39, %shl.3.i.i
  store i8 %conv17.3.i.i, ptr %arrayidx.3.i.i, align 1
  %inc.3.i.i = add nuw nsw i32 %i.0131.3.i.i, 1
  %exitcond136.3.not.i.i = icmp eq i32 %inc.3.i.i, 64
  br i1 %exitcond136.3.not.i.i, label %for.end.3.i.i, label %for.body11.3.i.i.for.body11.3.i.i_crit_edge

for.body11.3.i.i.for.body11.3.i.i_crit_edge:      ; preds = %for.body11.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.3.i.i

for.end.3.i.i:                                    ; preds = %for.body11.3.i.i
  %add.ptr8.4.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 96
  br label %for.body11.4.i.i

for.body11.4.i.i:                                 ; preds = %for.body11.4.i.i.for.body11.4.i.i_crit_edge, %for.end.3.i.i
  %i.0131.4.i.i = phi i32 [ 0, %for.end.3.i.i ], [ %inc.4.i.i, %for.body11.4.i.i.for.body11.4.i.i_crit_edge ]
  %arrayidx.4.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.4.i.i
  %40 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.4.i.i, align 1
  %shl.4.i.i = shl i8 %41, 1
  %div127.4.i.i = lshr i32 %i.0131.4.i.i, 3
  %arrayidx13.4.i.i = getelementptr i8, ptr %add.ptr8.4.i.i, i32 %div127.4.i.i
  %42 = ptrtoint ptr %arrayidx13.4.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx13.4.i.i, align 1
  %conv14.4.i.i = zext i8 %43 to i32
  %rem126.4.i.i = and i32 %i.0131.4.i.i, 7
  %shr.4.i.i = lshr i32 %conv14.4.i.i, %rem126.4.i.i
  %44 = trunc i32 %shr.4.i.i to i8
  %45 = and i8 %44, 1
  %conv17.4.i.i = or i8 %45, %shl.4.i.i
  store i8 %conv17.4.i.i, ptr %arrayidx.4.i.i, align 1
  %inc.4.i.i = add nuw nsw i32 %i.0131.4.i.i, 1
  %exitcond136.4.not.i.i = icmp eq i32 %inc.4.i.i, 64
  br i1 %exitcond136.4.not.i.i, label %for.end.4.i.i, label %for.body11.4.i.i.for.body11.4.i.i_crit_edge

for.body11.4.i.i.for.body11.4.i.i_crit_edge:      ; preds = %for.body11.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.4.i.i

for.end.4.i.i:                                    ; preds = %for.body11.4.i.i
  %add.ptr8.5.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 64
  br label %for.body11.5.i.i

for.body11.5.i.i:                                 ; preds = %for.body11.5.i.i.for.body11.5.i.i_crit_edge, %for.end.4.i.i
  %i.0131.5.i.i = phi i32 [ 0, %for.end.4.i.i ], [ %inc.5.i.i, %for.body11.5.i.i.for.body11.5.i.i_crit_edge ]
  %arrayidx.5.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.5.i.i
  %46 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.5.i.i, align 1
  %shl.5.i.i = shl i8 %47, 1
  %div127.5.i.i = lshr i32 %i.0131.5.i.i, 3
  %arrayidx13.5.i.i = getelementptr i8, ptr %add.ptr8.5.i.i, i32 %div127.5.i.i
  %48 = ptrtoint ptr %arrayidx13.5.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx13.5.i.i, align 1
  %conv14.5.i.i = zext i8 %49 to i32
  %rem126.5.i.i = and i32 %i.0131.5.i.i, 7
  %shr.5.i.i = lshr i32 %conv14.5.i.i, %rem126.5.i.i
  %50 = trunc i32 %shr.5.i.i to i8
  %51 = and i8 %50, 1
  %conv17.5.i.i = or i8 %51, %shl.5.i.i
  store i8 %conv17.5.i.i, ptr %arrayidx.5.i.i, align 1
  %inc.5.i.i = add nuw nsw i32 %i.0131.5.i.i, 1
  %exitcond136.5.not.i.i = icmp eq i32 %inc.5.i.i, 64
  br i1 %exitcond136.5.not.i.i, label %for.end.5.i.i, label %for.body11.5.i.i.for.body11.5.i.i_crit_edge

for.body11.5.i.i.for.body11.5.i.i_crit_edge:      ; preds = %for.body11.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.5.i.i

for.end.5.i.i:                                    ; preds = %for.body11.5.i.i
  %add.ptr8.6.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 32
  br label %for.body11.6.i.i

for.body11.6.i.i:                                 ; preds = %for.body11.6.i.i.for.body11.6.i.i_crit_edge, %for.end.5.i.i
  %i.0131.6.i.i = phi i32 [ 0, %for.end.5.i.i ], [ %inc.6.i.i, %for.body11.6.i.i.for.body11.6.i.i_crit_edge ]
  %arrayidx.6.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.6.i.i
  %52 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.6.i.i, align 1
  %shl.6.i.i = shl i8 %53, 1
  %div127.6.i.i = lshr i32 %i.0131.6.i.i, 3
  %arrayidx13.6.i.i = getelementptr i8, ptr %add.ptr8.6.i.i, i32 %div127.6.i.i
  %54 = ptrtoint ptr %arrayidx13.6.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx13.6.i.i, align 1
  %conv14.6.i.i = zext i8 %55 to i32
  %rem126.6.i.i = and i32 %i.0131.6.i.i, 7
  %shr.6.i.i = lshr i32 %conv14.6.i.i, %rem126.6.i.i
  %56 = trunc i32 %shr.6.i.i to i8
  %57 = and i8 %56, 1
  %conv17.6.i.i = or i8 %57, %shl.6.i.i
  store i8 %conv17.6.i.i, ptr %arrayidx.6.i.i, align 1
  %inc.6.i.i = add nuw nsw i32 %i.0131.6.i.i, 1
  %exitcond136.6.not.i.i = icmp eq i32 %inc.6.i.i, 64
  br i1 %exitcond136.6.not.i.i, label %for.body11.6.i.i.for.body11.7.i.i_crit_edge, label %for.body11.6.i.i.for.body11.6.i.i_crit_edge

for.body11.6.i.i.for.body11.6.i.i_crit_edge:      ; preds = %for.body11.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.6.i.i

for.body11.6.i.i.for.body11.7.i.i_crit_edge:      ; preds = %for.body11.6.i.i
  br label %for.body11.7.i.i

for.body11.7.i.i:                                 ; preds = %for.body11.7.i.i.for.body11.7.i.i_crit_edge, %for.body11.6.i.i.for.body11.7.i.i_crit_edge
  %i.0131.7.i.i = phi i32 [ %inc.7.i.i, %for.body11.7.i.i.for.body11.7.i.i_crit_edge ], [ 0, %for.body11.6.i.i.for.body11.7.i.i_crit_edge ]
  %arrayidx.7.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.0131.7.i.i
  %58 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.7.i.i, align 1
  %shl.7.i.i = shl i8 %59, 1
  %div127.7.i.i = lshr i32 %i.0131.7.i.i, 3
  %arrayidx13.7.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 %div127.7.i.i
  %60 = ptrtoint ptr %arrayidx13.7.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx13.7.i.i, align 1
  %conv14.7.i.i = zext i8 %61 to i32
  %rem126.7.i.i = and i32 %i.0131.7.i.i, 7
  %shr.7.i.i = lshr i32 %conv14.7.i.i, %rem126.7.i.i
  %62 = trunc i32 %shr.7.i.i to i8
  %63 = and i8 %62, 1
  %conv17.7.i.i = or i8 %63, %shl.7.i.i
  store i8 %conv17.7.i.i, ptr %arrayidx.7.i.i, align 1
  %inc.7.i.i = add nuw nsw i32 %i.0131.7.i.i, 1
  %exitcond136.7.not.i.i = icmp eq i32 %inc.7.i.i, 64
  br i1 %exitcond136.7.not.i.i, label %for.body11.7.i.i.for.body78.i.outer.i.preheader_crit_edge, label %for.body11.7.i.i.for.body11.7.i.i_crit_edge

for.body11.7.i.i.for.body11.7.i.i_crit_edge:      ; preds = %for.body11.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.7.i.i

for.body11.7.i.i.for.body78.i.outer.i.preheader_crit_edge: ; preds = %for.body11.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body78.i.outer.i.preheader

for.body78.i.outer.i.preheader:                   ; preds = %for.body38.7.i.i.for.body78.i.outer.i.preheader_crit_edge, %for.body11.7.i.i.for.body78.i.outer.i.preheader_crit_edge
  br label %for.body78.i.outer.i

for.body38.i.i:                                   ; preds = %for.body38.i.i.for.body38.i.i_crit_edge, %for.cond23.preheader.i.i
  %i.1129.i.i = phi i32 [ 0, %for.cond23.preheader.i.i ], [ %inc51.i.i, %for.body38.i.i.for.body38.i.i_crit_edge ]
  %arrayidx39.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.i.i
  %64 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx39.i.i, align 1
  %arrayidx43.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 %i.1129.i.i
  %66 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx43.i.i, align 1
  %or48125.i.i = tail call i8 @llvm.fshl.i8(i8 %65, i8 %67, i8 1) #10
  %68 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %or48125.i.i, ptr %arrayidx39.i.i, align 1
  %inc51.i.i = add nuw nsw i32 %i.1129.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc51.i.i, 64
  br i1 %exitcond.not.i.i, label %for.end52.i.i, label %for.body38.i.i.for.body38.i.i_crit_edge

for.body38.i.i.for.body38.i.i_crit_edge:          ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i.i

for.end52.i.i:                                    ; preds = %for.body38.i.i
  %mul33.1.i.i = add nuw nsw i32 %add32.i.i, 1536
  %add.ptr34.1.i.i = getelementptr i8, ptr %11, i32 %mul33.1.i.i
  br label %for.body38.1.i.i

for.body38.1.i.i:                                 ; preds = %for.body38.1.i.i.for.body38.1.i.i_crit_edge, %for.end52.i.i
  %i.1129.1.i.i = phi i32 [ 0, %for.end52.i.i ], [ %inc51.1.i.i, %for.body38.1.i.i.for.body38.1.i.i_crit_edge ]
  %arrayidx39.1.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.1.i.i
  %69 = ptrtoint ptr %arrayidx39.1.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx39.1.i.i, align 1
  %arrayidx43.1.i.i = getelementptr i8, ptr %add.ptr34.1.i.i, i32 %i.1129.1.i.i
  %71 = ptrtoint ptr %arrayidx43.1.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx43.1.i.i, align 1
  %or48125.1.i.i = tail call i8 @llvm.fshl.i8(i8 %70, i8 %72, i8 1) #10
  %73 = ptrtoint ptr %arrayidx39.1.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %or48125.1.i.i, ptr %arrayidx39.1.i.i, align 1
  %inc51.1.i.i = add nuw nsw i32 %i.1129.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %inc51.1.i.i, 64
  br i1 %exitcond.1.not.i.i, label %for.end52.1.i.i, label %for.body38.1.i.i.for.body38.1.i.i_crit_edge

for.body38.1.i.i.for.body38.1.i.i_crit_edge:      ; preds = %for.body38.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.1.i.i

for.end52.1.i.i:                                  ; preds = %for.body38.1.i.i
  %mul33.2.i.i = add nuw nsw i32 %add32.i.i, 1280
  %add.ptr34.2.i.i = getelementptr i8, ptr %11, i32 %mul33.2.i.i
  br label %for.body38.2.i.i

for.body38.2.i.i:                                 ; preds = %for.body38.2.i.i.for.body38.2.i.i_crit_edge, %for.end52.1.i.i
  %i.1129.2.i.i = phi i32 [ 0, %for.end52.1.i.i ], [ %inc51.2.i.i, %for.body38.2.i.i.for.body38.2.i.i_crit_edge ]
  %arrayidx39.2.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.2.i.i
  %74 = ptrtoint ptr %arrayidx39.2.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx39.2.i.i, align 1
  %arrayidx43.2.i.i = getelementptr i8, ptr %add.ptr34.2.i.i, i32 %i.1129.2.i.i
  %76 = ptrtoint ptr %arrayidx43.2.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx43.2.i.i, align 1
  %or48125.2.i.i = tail call i8 @llvm.fshl.i8(i8 %75, i8 %77, i8 1) #10
  %78 = ptrtoint ptr %arrayidx39.2.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %or48125.2.i.i, ptr %arrayidx39.2.i.i, align 1
  %inc51.2.i.i = add nuw nsw i32 %i.1129.2.i.i, 1
  %exitcond.2.not.i.i = icmp eq i32 %inc51.2.i.i, 64
  br i1 %exitcond.2.not.i.i, label %for.end52.2.i.i, label %for.body38.2.i.i.for.body38.2.i.i_crit_edge

for.body38.2.i.i.for.body38.2.i.i_crit_edge:      ; preds = %for.body38.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.2.i.i

for.end52.2.i.i:                                  ; preds = %for.body38.2.i.i
  %mul33.3.i.i = add nuw nsw i32 %add32.i.i, 1024
  %add.ptr34.3.i.i = getelementptr i8, ptr %11, i32 %mul33.3.i.i
  br label %for.body38.3.i.i

for.body38.3.i.i:                                 ; preds = %for.body38.3.i.i.for.body38.3.i.i_crit_edge, %for.end52.2.i.i
  %i.1129.3.i.i = phi i32 [ 0, %for.end52.2.i.i ], [ %inc51.3.i.i, %for.body38.3.i.i.for.body38.3.i.i_crit_edge ]
  %arrayidx39.3.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.3.i.i
  %79 = ptrtoint ptr %arrayidx39.3.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx39.3.i.i, align 1
  %arrayidx43.3.i.i = getelementptr i8, ptr %add.ptr34.3.i.i, i32 %i.1129.3.i.i
  %81 = ptrtoint ptr %arrayidx43.3.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx43.3.i.i, align 1
  %or48125.3.i.i = tail call i8 @llvm.fshl.i8(i8 %80, i8 %82, i8 1) #10
  %83 = ptrtoint ptr %arrayidx39.3.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %or48125.3.i.i, ptr %arrayidx39.3.i.i, align 1
  %inc51.3.i.i = add nuw nsw i32 %i.1129.3.i.i, 1
  %exitcond.3.not.i.i = icmp eq i32 %inc51.3.i.i, 64
  br i1 %exitcond.3.not.i.i, label %for.end52.3.i.i, label %for.body38.3.i.i.for.body38.3.i.i_crit_edge

for.body38.3.i.i.for.body38.3.i.i_crit_edge:      ; preds = %for.body38.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.3.i.i

for.end52.3.i.i:                                  ; preds = %for.body38.3.i.i
  %mul33.4.i.i = add nuw nsw i32 %add32.i.i, 768
  %add.ptr34.4.i.i = getelementptr i8, ptr %11, i32 %mul33.4.i.i
  br label %for.body38.4.i.i

for.body38.4.i.i:                                 ; preds = %for.body38.4.i.i.for.body38.4.i.i_crit_edge, %for.end52.3.i.i
  %i.1129.4.i.i = phi i32 [ 0, %for.end52.3.i.i ], [ %inc51.4.i.i, %for.body38.4.i.i.for.body38.4.i.i_crit_edge ]
  %arrayidx39.4.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.4.i.i
  %84 = ptrtoint ptr %arrayidx39.4.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx39.4.i.i, align 1
  %arrayidx43.4.i.i = getelementptr i8, ptr %add.ptr34.4.i.i, i32 %i.1129.4.i.i
  %86 = ptrtoint ptr %arrayidx43.4.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx43.4.i.i, align 1
  %or48125.4.i.i = tail call i8 @llvm.fshl.i8(i8 %85, i8 %87, i8 1) #10
  %88 = ptrtoint ptr %arrayidx39.4.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %or48125.4.i.i, ptr %arrayidx39.4.i.i, align 1
  %inc51.4.i.i = add nuw nsw i32 %i.1129.4.i.i, 1
  %exitcond.4.not.i.i = icmp eq i32 %inc51.4.i.i, 64
  br i1 %exitcond.4.not.i.i, label %for.end52.4.i.i, label %for.body38.4.i.i.for.body38.4.i.i_crit_edge

for.body38.4.i.i.for.body38.4.i.i_crit_edge:      ; preds = %for.body38.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.4.i.i

for.end52.4.i.i:                                  ; preds = %for.body38.4.i.i
  %mul33.5.i.i = add nuw nsw i32 %add32.i.i, 512
  %add.ptr34.5.i.i = getelementptr i8, ptr %11, i32 %mul33.5.i.i
  br label %for.body38.5.i.i

for.body38.5.i.i:                                 ; preds = %for.body38.5.i.i.for.body38.5.i.i_crit_edge, %for.end52.4.i.i
  %i.1129.5.i.i = phi i32 [ 0, %for.end52.4.i.i ], [ %inc51.5.i.i, %for.body38.5.i.i.for.body38.5.i.i_crit_edge ]
  %arrayidx39.5.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.5.i.i
  %89 = ptrtoint ptr %arrayidx39.5.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx39.5.i.i, align 1
  %arrayidx43.5.i.i = getelementptr i8, ptr %add.ptr34.5.i.i, i32 %i.1129.5.i.i
  %91 = ptrtoint ptr %arrayidx43.5.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx43.5.i.i, align 1
  %or48125.5.i.i = tail call i8 @llvm.fshl.i8(i8 %90, i8 %92, i8 1) #10
  %93 = ptrtoint ptr %arrayidx39.5.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %or48125.5.i.i, ptr %arrayidx39.5.i.i, align 1
  %inc51.5.i.i = add nuw nsw i32 %i.1129.5.i.i, 1
  %exitcond.5.not.i.i = icmp eq i32 %inc51.5.i.i, 64
  br i1 %exitcond.5.not.i.i, label %for.end52.5.i.i, label %for.body38.5.i.i.for.body38.5.i.i_crit_edge

for.body38.5.i.i.for.body38.5.i.i_crit_edge:      ; preds = %for.body38.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.5.i.i

for.end52.5.i.i:                                  ; preds = %for.body38.5.i.i
  %mul33.6.i.i = add nuw nsw i32 %add32.i.i, 256
  %add.ptr34.6.i.i = getelementptr i8, ptr %11, i32 %mul33.6.i.i
  br label %for.body38.6.i.i

for.body38.6.i.i:                                 ; preds = %for.body38.6.i.i.for.body38.6.i.i_crit_edge, %for.end52.5.i.i
  %i.1129.6.i.i = phi i32 [ 0, %for.end52.5.i.i ], [ %inc51.6.i.i, %for.body38.6.i.i.for.body38.6.i.i_crit_edge ]
  %arrayidx39.6.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.6.i.i
  %94 = ptrtoint ptr %arrayidx39.6.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx39.6.i.i, align 1
  %arrayidx43.6.i.i = getelementptr i8, ptr %add.ptr34.6.i.i, i32 %i.1129.6.i.i
  %96 = ptrtoint ptr %arrayidx43.6.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx43.6.i.i, align 1
  %or48125.6.i.i = tail call i8 @llvm.fshl.i8(i8 %95, i8 %97, i8 1) #10
  %98 = ptrtoint ptr %arrayidx39.6.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %or48125.6.i.i, ptr %arrayidx39.6.i.i, align 1
  %inc51.6.i.i = add nuw nsw i32 %i.1129.6.i.i, 1
  %exitcond.6.not.i.i = icmp eq i32 %inc51.6.i.i, 64
  br i1 %exitcond.6.not.i.i, label %for.end52.6.i.i, label %for.body38.6.i.i.for.body38.6.i.i_crit_edge

for.body38.6.i.i.for.body38.6.i.i_crit_edge:      ; preds = %for.body38.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.6.i.i

for.end52.6.i.i:                                  ; preds = %for.body38.6.i.i
  %add.ptr34.7.i.i = getelementptr i8, ptr %11, i32 %add32.i.i
  br label %for.body38.7.i.i

for.body38.7.i.i:                                 ; preds = %for.body38.7.i.i.for.body38.7.i.i_crit_edge, %for.end52.6.i.i
  %i.1129.7.i.i = phi i32 [ 0, %for.end52.6.i.i ], [ %inc51.7.i.i, %for.body38.7.i.i.for.body38.7.i.i_crit_edge ]
  %arrayidx39.7.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.1129.7.i.i
  %99 = ptrtoint ptr %arrayidx39.7.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx39.7.i.i, align 1
  %arrayidx43.7.i.i = getelementptr i8, ptr %add.ptr34.7.i.i, i32 %i.1129.7.i.i
  %101 = ptrtoint ptr %arrayidx43.7.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx43.7.i.i, align 1
  %or48125.7.i.i = tail call i8 @llvm.fshl.i8(i8 %100, i8 %102, i8 1) #10
  %103 = ptrtoint ptr %arrayidx39.7.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %or48125.7.i.i, ptr %arrayidx39.7.i.i, align 1
  %inc51.7.i.i = add nuw nsw i32 %i.1129.7.i.i, 1
  %exitcond.7.not.i.i = icmp eq i32 %inc51.7.i.i, 64
  br i1 %exitcond.7.not.i.i, label %for.body38.7.i.i.for.body78.i.outer.i.preheader_crit_edge, label %for.body38.7.i.i.for.body38.7.i.i_crit_edge

for.body38.7.i.i.for.body38.7.i.i_crit_edge:      ; preds = %for.body38.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.7.i.i

for.body38.7.i.i.for.body78.i.outer.i.preheader_crit_edge: ; preds = %for.body38.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body78.i.outer.i.preheader

picolcd_fb_update_tile.exit.thread.i:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 166, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tdata.i.i) #10
  br label %for.inc.i

for.body78.i.outer.i:                             ; preds = %for.inc89.i.thread.i.for.body78.i.outer.i_crit_edge, %for.body78.i.outer.i.preheader
  %tobool20.not.i = phi i1 [ false, %for.inc89.i.thread.i.for.body78.i.outer.i_crit_edge ], [ true, %for.body78.i.outer.i.preheader ]
  %i.2133.i.ph.i = phi i32 [ %inc90.i186.i, %for.inc89.i.thread.i.for.body78.i.outer.i_crit_edge ], [ 0, %for.body78.i.outer.i.preheader ]
  br label %for.body78.i.i

for.body78.i.i:                                   ; preds = %for.inc89.i.i.for.body78.i.i_crit_edge, %for.body78.i.outer.i
  %i.2133.i.i = phi i32 [ %inc90.i.i, %for.inc89.i.i.for.body78.i.i_crit_edge ], [ %i.2133.i.ph.i, %for.body78.i.outer.i ]
  %arrayidx79.i.i = getelementptr [64 x i8], ptr %tdata.i.i, i32 0, i32 %i.2133.i.i
  %104 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx79.i.i, align 1
  %arrayidx81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.2133.i.i
  %106 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx81.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp83.not.i.i = icmp eq i8 %105, %107
  br i1 %cmp83.not.i.i, label %for.inc89.i.i, label %for.inc89.i.thread.i

for.inc89.i.i:                                    ; preds = %for.body78.i.i
  %inc90.i.i = add nuw nsw i32 %i.2133.i.i, 1
  %exitcond137.not.i.i = icmp eq i32 %inc90.i.i, 64
  br i1 %exitcond137.not.i.i, label %picolcd_fb_update_tile.exit.i, label %for.inc89.i.i.for.body78.i.i_crit_edge

for.inc89.i.i.for.body78.i.i_crit_edge:           ; preds = %for.inc89.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body78.i.i

for.inc89.i.thread.i:                             ; preds = %for.body78.i.i
  %arrayidx81.i.i.le = getelementptr i8, ptr %add.ptr.i.i, i32 %i.2133.i.i
  %108 = ptrtoint ptr %arrayidx81.i.i.le to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %105, ptr %arrayidx81.i.i.le, align 1
  %inc90.i186.i = add nuw nsw i32 %i.2133.i.i, 1
  %exitcond137.not.i187.i = icmp eq i32 %inc90.i186.i, 64
  br i1 %exitcond137.not.i187.i, label %picolcd_fb_update_tile.exit.thread189.i, label %for.inc89.i.thread.i.for.body78.i.outer.i_crit_edge

for.inc89.i.thread.i.for.body78.i.outer.i_crit_edge: ; preds = %for.inc89.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body78.i.outer.i

picolcd_fb_update_tile.exit.thread189.i:          ; preds = %for.inc89.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tdata.i.i) #10
  br label %if.end22.i

picolcd_fb_update_tile.exit.i:                    ; preds = %for.inc89.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tdata.i.i) #10
  br i1 %tobool20.not.i, label %picolcd_fb_update_tile.exit.i.for.inc.i_crit_edge, label %picolcd_fb_update_tile.exit.i.if.end22.i_crit_edge

picolcd_fb_update_tile.exit.i.if.end22.i_crit_edge: ; preds = %picolcd_fb_update_tile.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

picolcd_fb_update_tile.exit.i.for.inc.i_crit_edge: ; preds = %picolcd_fb_update_tile.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end22.i:                                       ; preds = %picolcd_fb_update_tile.exit.i.if.end22.i_crit_edge, %picolcd_fb_update_tile.exit.thread189.i, %for.body15.i.if.end22.i_crit_edge
  %add.i = add i32 %n.1177.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i)
  %cmp23.i = icmp sgt i32 %add.i, 31
  br i1 %cmp23.i, label %do.body27.i, label %if.end22.i.do.body49.i_crit_edge

if.end22.i.do.body49.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49.i

do.body27.i:                                      ; preds = %if.end22.i
  %call35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %109 = ptrtoint ptr %picolcd40.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %picolcd40.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call35.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  %tobool43.not.i = icmp eq ptr %110, null
  br i1 %tobool43.not.i, label %do.body27.i.picolcd_fb_update.exit_crit_edge, label %if.end45.i

do.body27.i.picolcd_fb_update.exit_crit_edge:     ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %picolcd_fb_update.exit

if.end45.i:                                       ; preds = %do.body27.i
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %112, i32 0, i32 20
  %113 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ll_driver.i.i, align 4
  %wait.i.i = getelementptr inbounds %struct.hid_ll_driver, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wait.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i, label %if.end45.i.hid_hw_wait.exit.i_crit_edge, label %if.then.i.i

if.end45.i.hid_hw_wait.exit.i_crit_edge:          ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hid_hw_wait.exit.i

if.then.i.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %116(ptr noundef %112) #10
  br label %hid_hw_wait.exit.i

hid_hw_wait.exit.i:                               ; preds = %if.then.i.i, %if.end45.i.hid_hw_wait.exit.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  br label %do.body49.i

do.body49.i:                                      ; preds = %hid_hw_wait.exit.i, %if.end22.i.do.body49.i_crit_edge
  %n.2.i = phi i32 [ 0, %hid_hw_wait.exit.i ], [ %add.i, %if.end22.i.do.body49.i_crit_edge ]
  %call57.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %117 = ptrtoint ptr %picolcd40.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %picolcd40.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call57.i) #10
  %tobool64.not.i = icmp eq ptr %118, null
  br i1 %tobool64.not.i, label %do.body49.i.out.i_crit_edge, label %lor.lhs.false.i

do.body49.i.out.i_crit_edge:                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

lor.lhs.false.i:                                  ; preds = %do.body49.i
  %119 = ptrtoint ptr %vbitmap.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vbitmap.i, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  %call.i147.i = tail call ptr @picolcd_report(i32 noundef 150, ptr noundef %122, i32 noundef 1) #10
  %tobool.not.i148.i = icmp eq ptr %call.i147.i, null
  br i1 %tobool.not.i148.i, label %lor.lhs.false.i.out.i_crit_edge, label %lor.lhs.false.i.i

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %call.i147.i, i32 0, i32 6
  %123 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp.not.i.i = icmp eq i32 %124, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.out.i_crit_edge

lor.lhs.false.i.i.out.i_crit_edge:                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %118, align 4
  %call2.i.i = tail call ptr @picolcd_report(i32 noundef 149, ptr noundef %126, i32 noundef 1) #10
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.out.i_crit_edge, label %lor.lhs.false4.i.i

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

lor.lhs.false4.i.i:                               ; preds = %if.end.i.i
  %maxfield5.i.i = getelementptr inbounds %struct.hid_report, ptr %call2.i.i, i32 0, i32 6
  %127 = ptrtoint ptr %maxfield5.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %maxfield5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp6.not.i.i = icmp eq i32 %128, 1
  br i1 %cmp6.not.i.i, label %do.body9.i.i, label %lor.lhs.false4.i.i.out.i_crit_edge

lor.lhs.false4.i.i.out.i_crit_edge:               ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.body9.i.i:                                     ; preds = %lor.lhs.false4.i.i
  %lock.i.i = getelementptr inbounds %struct.picolcd_data, ptr %118, i32 0, i32 20
  %call12.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %status.i.i = getelementptr inbounds %struct.picolcd_data, ptr %118, i32 0, i32 23
  %129 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %status.i.i, align 4
  %and.i.i = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end18.i.i, label %picolcd_fb_send_tile.exit.i

if.end18.i.i:                                     ; preds = %do.body9.i.i
  %field.i.i = getelementptr inbounds %struct.hid_report, ptr %call.i147.i, i32 0, i32 5
  %131 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %field.i.i, align 4
  %call19.i.i = tail call i32 @hid_set_field(ptr noundef %132, i32 noundef 0, i32 noundef %shl.i149.i) #10
  %133 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %field.i.i, align 4
  %call22.i.i = tail call i32 @hid_set_field(ptr noundef %134, i32 noundef 1, i32 noundef 2) #10
  %135 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %field.i.i, align 4
  %call25.i.i = tail call i32 @hid_set_field(ptr noundef %136, i32 noundef 2, i32 noundef 0) #10
  %137 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %field.i.i, align 4
  %call28.i.i = tail call i32 @hid_set_field(ptr noundef %138, i32 noundef 3, i32 noundef 0) #10
  %139 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %field.i.i, align 4
  %or.i.i = or i32 %tile.0179.i, 184
  %call31.i.i = tail call i32 @hid_set_field(ptr noundef %140, i32 noundef 4, i32 noundef %or.i.i) #10
  %141 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %field.i.i, align 4
  %call34.i.i = tail call i32 @hid_set_field(ptr noundef %142, i32 noundef 5, i32 noundef 0) #10
  %143 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %field.i.i, align 4
  %call37.i.i = tail call i32 @hid_set_field(ptr noundef %144, i32 noundef 6, i32 noundef 0) #10
  %145 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %field.i.i, align 4
  %call40.i.i = tail call i32 @hid_set_field(ptr noundef %146, i32 noundef 7, i32 noundef 64) #10
  %147 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %field.i.i, align 4
  %call43.i.i = tail call i32 @hid_set_field(ptr noundef %148, i32 noundef 8, i32 noundef 0) #10
  %149 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %field.i.i, align 4
  %call46.i.i = tail call i32 @hid_set_field(ptr noundef %150, i32 noundef 9, i32 noundef 0) #10
  %151 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %field.i.i, align 4
  %call49.i.i = tail call i32 @hid_set_field(ptr noundef %152, i32 noundef 10, i32 noundef 32) #10
  %field50.i.i = getelementptr inbounds %struct.hid_report, ptr %call2.i.i, i32 0, i32 5
  %153 = ptrtoint ptr %field50.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %field50.i.i, align 4
  %call54.i.i = tail call i32 @hid_set_field(ptr noundef %154, i32 noundef 0, i32 noundef %or53.i.i) #10
  %155 = ptrtoint ptr %field50.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %field50.i.i, align 4
  %call57.i.i = tail call i32 @hid_set_field(ptr noundef %156, i32 noundef 1, i32 noundef 0) #10
  %157 = ptrtoint ptr %field50.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %field50.i.i, align 4
  %call60.i.i = tail call i32 @hid_set_field(ptr noundef %158, i32 noundef 2, i32 noundef 0) #10
  %159 = ptrtoint ptr %field50.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %field50.i.i, align 4
  %call63.i.i = tail call i32 @hid_set_field(ptr noundef %160, i32 noundef 3, i32 noundef 32) #10
  %mul.i150.i = shl i32 %tile.0179.i, 2
  %add.i151.i = add nuw nsw i32 %mul.i150.i, %chip.0182.i
  %mul64.i.i = shl i32 %add.i151.i, 6
  %add.ptr.i152.i = getelementptr i8, ptr %120, i32 %mul64.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end18.i.i
  %i.0148.i.i = phi i32 [ 0, %if.end18.i.i ], [ %inc.i153.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0148.i.i)
  %cmp67.i.i = icmp ult i32 %i.0148.i.i, 32
  %field.field50.i.i = select i1 %cmp67.i.i, ptr %field.i.i, ptr %field50.i.i
  %..i.i = select i1 %cmp67.i.i, i32 11, i32 -28
  %161 = ptrtoint ptr %field.field50.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %field.field50.i.i, align 4
  %add72.i.i = add nsw i32 %..i.i, %i.0148.i.i
  %arrayidx73.i.i = getelementptr i8, ptr %add.ptr.i152.i, i32 %i.0148.i.i
  %163 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx73.i.i, align 1
  %conv74.i.i = zext i8 %164 to i32
  %call75.i.i = tail call i32 @hid_set_field(ptr noundef %162, i32 noundef %add72.i.i, i32 noundef %conv74.i.i) #10
  %inc.i153.i = add nuw nsw i32 %i.0148.i.i, 1
  %exitcond.not.i154.i = icmp eq i32 %inc.i153.i, 64
  br i1 %exitcond.not.i154.i, label %picolcd_fb_send_tile.exit.thread167.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

picolcd_fb_send_tile.exit.thread167.i:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %118, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.hid_device, ptr %166, i32 0, i32 18, i32 8
  %167 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %driver_data.i.i.i.i, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %168, ptr noundef %166, ptr noundef nonnull %call.i147.i) #10
  %169 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %118, align 4
  tail call void @hid_hw_request(ptr noundef %170, ptr noundef nonnull %call.i147.i, i32 noundef 9) #10
  %171 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %118, align 4
  %driver_data.i.i147.i.i = getelementptr inbounds %struct.hid_device, ptr %172, i32 0, i32 18, i32 8
  %173 = ptrtoint ptr %driver_data.i.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %driver_data.i.i147.i.i, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %174, ptr noundef %172, ptr noundef nonnull %call2.i.i) #10
  %175 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %118, align 4
  tail call void @hid_hw_request(ptr noundef %176, ptr noundef nonnull %call2.i.i, i32 noundef 9) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call12.i.i) #10
  br label %for.inc.i

picolcd_fb_send_tile.exit.i:                      ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call12.i.i) #10
  br label %out.i

for.inc.i:                                        ; preds = %picolcd_fb_send_tile.exit.thread167.i, %picolcd_fb_update_tile.exit.i.for.inc.i_crit_edge, %picolcd_fb_update_tile.exit.thread.i
  %n.3.i = phi i32 [ %n.1177.i, %picolcd_fb_update_tile.exit.i.for.inc.i_crit_edge ], [ %n.1177.i, %picolcd_fb_update_tile.exit.thread.i ], [ %n.2.i, %picolcd_fb_send_tile.exit.thread167.i ]
  %inc.i = add nuw nsw i32 %tile.0179.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc70.i, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

for.inc70.i:                                      ; preds = %for.inc.i
  %inc71.i = add nuw nsw i32 %chip.0182.i, 1
  %exitcond184.not.i = icmp eq i32 %inc71.i, 4
  br i1 %exitcond184.not.i, label %for.end72.i, label %for.inc70.i.for.cond12.preheader.i_crit_edge

for.inc70.i.for.cond12.preheader.i_crit_edge:     ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader.i

for.end72.i:                                      ; preds = %for.inc70.i
  %177 = ptrtoint ptr %force.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %force.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.3.i)
  %tobool74.not.i = icmp eq i32 %n.3.i, 0
  br i1 %tobool74.not.i, label %for.end72.i.out.i_crit_edge, label %do.body77.i

for.end72.i.out.i_crit_edge:                      ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.body77.i:                                      ; preds = %for.end72.i
  %call85.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %178 = ptrtoint ptr %picolcd40.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %picolcd40.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call85.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  %tobool93.not.i = icmp eq ptr %179, null
  br i1 %tobool93.not.i, label %do.body77.i.picolcd_fb_update.exit_crit_edge, label %if.then94.i

do.body77.i.picolcd_fb_update.exit_crit_edge:     ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %picolcd_fb_update.exit

if.then94.i:                                      ; preds = %do.body77.i
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %ll_driver.i156.i = getelementptr inbounds %struct.hid_device, ptr %181, i32 0, i32 20
  %182 = ptrtoint ptr %ll_driver.i156.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ll_driver.i156.i, align 4
  %wait.i157.i = getelementptr inbounds %struct.hid_ll_driver, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %wait.i157.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wait.i157.i, align 4
  %tobool.not.i158.i = icmp eq ptr %185, null
  br i1 %tobool.not.i158.i, label %if.then94.i.picolcd_fb_update.exit_crit_edge, label %if.then.i160.i

if.then94.i.picolcd_fb_update.exit_crit_edge:     ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %picolcd_fb_update.exit

if.then.i160.i:                                   ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i159.i = tail call i32 %185(ptr noundef %181) #10
  br label %picolcd_fb_update.exit

out.i:                                            ; preds = %for.end72.i.out.i_crit_edge, %picolcd_fb_send_tile.exit.i, %lor.lhs.false4.i.i.out.i_crit_edge, %if.end.i.i.out.i_crit_edge, %lor.lhs.false.i.i.out.i_crit_edge, %lor.lhs.false.i.out.i_crit_edge, %do.body49.i.out.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %picolcd_fb_update.exit

picolcd_fb_update.exit:                           ; preds = %out.i, %if.then.i160.i, %if.then94.i.picolcd_fb_update.exit_crit_edge, %do.body77.i.picolcd_fb_update.exit_crit_edge, %do.body27.i.picolcd_fb_update.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_fb_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @fb_sys_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %deferred_work, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.then1 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @picolcd_fb_check_var(ptr nocapture noundef %var, ptr nocapture noundef readnone %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %activate1 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %2 = ptrtoint ptr %activate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %activate1, align 4
  %4 = call ptr @memcpy(ptr %var, ptr @picolcdfb_var, i32 160)
  store i32 %3, ptr %activate1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.inv = icmp ult i32 %1, 8
  %spec.select = select i1 %cmp.inv, i32 1, i32 8
  %5 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %bits_per_pixel, align 4
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_set_par(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %bpp = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bpp, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end11_crit_edge
    i32 8, label %if.end.if.end11_crit_edge106
  ]

if.end.if.end11_crit_edge106:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.end.if.end11_crit_edge106
  %bitmap = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bitmap, align 4
  %9 = shl nuw nsw i32 %3, 11
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp18 = icmp eq i32 %11, 1
  br i1 %cmp18, label %if.end15.for.cond23.preheader_crit_edge, label %if.else

if.end15.for.cond23.preheader_crit_edge:          ; preds = %if.end15
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.for.cond23.preheader_crit_edge, %if.end15.for.cond23.preheader_crit_edge
  %i.0102 = phi i32 [ %inc35, %for.cond23.preheader.for.cond23.preheader_crit_edge ], [ 0, %if.end15.for.cond23.preheader_crit_edge ]
  %mul = shl i32 %i.0102, 3
  %arrayidx = getelementptr i8, ptr %8, i32 %mul
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not.not = icmp eq i8 %13, 0
  %shl.1 = select i1 %tobool30.not.not, i8 0, i8 2
  %add.1 = or i32 %mul, 1
  %arrayidx.1 = getelementptr i8, ptr %8, i32 %add.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not.1 = icmp ne i8 %15, 0
  %cond.1 = zext i1 %tobool30.not.1 to i8
  %or.1 = or i8 %shl.1, %cond.1
  %add.2 = or i32 %mul, 2
  %arrayidx.2 = getelementptr i8, ptr %8, i32 %add.2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not.2.not = icmp eq i8 %17, 0
  %18 = shl nuw nsw i8 %or.1, 2
  %19 = select i1 %tobool30.not.2.not, i8 0, i8 2
  %shl.3 = or i8 %18, %19
  %add.3 = or i32 %mul, 3
  %arrayidx.3 = getelementptr i8, ptr %8, i32 %add.3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not.3 = icmp ne i8 %21, 0
  %cond.3 = zext i1 %tobool30.not.3 to i8
  %or.3 = or i8 %shl.3, %cond.3
  %add.4 = or i32 %mul, 4
  %arrayidx.4 = getelementptr i8, ptr %8, i32 %add.4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool30.not.4.not = icmp eq i8 %23, 0
  %24 = shl nuw nsw i8 %or.3, 2
  %25 = select i1 %tobool30.not.4.not, i8 0, i8 2
  %shl.5 = or i8 %24, %25
  %add.5 = or i32 %mul, 5
  %arrayidx.5 = getelementptr i8, ptr %8, i32 %add.5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool30.not.5 = icmp ne i8 %27, 0
  %cond.5 = zext i1 %tobool30.not.5 to i8
  %or.5 = or i8 %shl.5, %cond.5
  %add.6 = or i32 %mul, 6
  %arrayidx.6 = getelementptr i8, ptr %8, i32 %add.6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool30.not.6.not = icmp eq i8 %29, 0
  %30 = shl i8 %or.5, 2
  %31 = select i1 %tobool30.not.6.not, i8 0, i8 2
  %shl.7 = or i8 %30, %31
  %add.7 = or i32 %mul, 7
  %arrayidx.7 = getelementptr i8, ptr %8, i32 %add.7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool30.not.7 = icmp ne i8 %33, 0
  %cond.7 = zext i1 %tobool30.not.7 to i8
  %or.7 = or i8 %shl.7, %cond.7
  %arrayidx33 = getelementptr i8, ptr %call8.i, i32 %i.0102
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or.7, ptr %arrayidx33, align 1
  %inc35 = add nuw nsw i32 %i.0102, 1
  %exitcond104.not = icmp eq i32 %inc35, 2048
  br i1 %exitcond104.not, label %for.end36, label %for.cond23.preheader.for.cond23.preheader_crit_edge

for.cond23.preheader.for.cond23.preheader_crit_edge: ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader

for.end36:                                        ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %35 = call ptr @memcpy(ptr %8, ptr %call8.i, i32 2048)
  br label %if.end57

if.else:                                          ; preds = %if.end15
  %36 = call ptr @memcpy(ptr %call8.i, ptr %8, i32 2048)
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %if.else
  %i38.099 = phi i32 [ 0, %if.else ], [ %inc51, %for.body42.for.body42_crit_edge ]
  %div98 = lshr i32 %i38.099, 3
  %arrayidx43 = getelementptr i8, ptr %call8.i, i32 %div98
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %38 to i32
  %rem = and i32 %i38.099, 7
  %sub = xor i32 %rem, 7
  %shl45 = shl nuw nsw i32 1, %sub
  %and = and i32 %shl45, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp ne i32 %and, 0
  %conv48 = sext i1 %tobool46.not to i8
  %arrayidx49 = getelementptr i8, ptr %8, i32 %i38.099
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv48, ptr %arrayidx49, align 1
  %inc51 = add nuw nsw i32 %i38.099, 1
  %exitcond.not = icmp eq i32 %inc51, 16384
  br i1 %exitcond.not, label %for.body42.if.end57_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42

for.body42.if.end57_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %for.body42.if.end57_crit_edge, %for.end36
  %.sink105 = phi i32 [ 0, %for.end36 ], [ 4, %for.body42.if.end57_crit_edge ]
  %.sink = phi i32 [ 32, %for.end36 ], [ 256, %for.body42.if.end57_crit_edge ]
  %visual54 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %40 = ptrtoint ptr %visual54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink105, ptr %visual54, align 4
  %line_length56 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %41 = ptrtoint ptr %line_length56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %line_length56, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  %42 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bits_per_pixel, align 4
  %conv60 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %bpp to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv60, ptr %bpp, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @picolcd_fb_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_fb_fillrect(ptr noundef %info, ptr noundef %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #10
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %deferred_work, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_fb_copyarea(ptr noundef %info, ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #10
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %deferred_work, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_fb_imageblit(ptr noundef %info, ptr noundef %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #10
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %deferred_work, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_fb_destroy(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @fb_deferred_io_cleanup(ptr noundef %info) #10
  %picolcd = getelementptr inbounds %struct.picolcd_fb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %picolcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %picolcd, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !53

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 348, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_start, align 4
  %6 = inttoptr i32 %5 to ptr
  tail call void @vfree(ptr noundef %6) #10
  tail call void @framebuffer_release(ptr noundef %info) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_fb_update_rate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_info, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %update_rate = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %update_rate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update_rate, align 4
  %conv = zext i8 %7 to i32
  br label %if.else

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %entry
  %i.039 = phi i32 [ 1, %entry ], [ %inc, %for.inc.if.else_crit_edge ]
  %ret.038 = phi i32 [ 0, %entry ], [ %ret.1, %for.inc.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.039, i32 %conv)
  %cmp4 = icmp eq i32 %i.039, %conv
  %add.ptr = getelementptr i8, ptr %buf, i32 %ret.038
  %sub = sub nuw nsw i32 4096, %ret.038
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %for.inc

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.17, i32 noundef %i.039) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else8, %if.then6
  %call7.pn = phi i32 [ %call7, %if.then6 ], [ %call11, %if.else8 ]
  %ret.1 = add i32 %call7.pn, %ret.038
  %inc = add nuw nsw i32 %i.039, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.039)
  %cmp = icmp ugt i32 %i.039, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %ret.1)
  %cmp2 = icmp ugt i32 %ret.1, 4095
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %for.end, label %for.inc.if.else_crit_edge

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp14.not = icmp eq i32 %ret.1, 0
  br i1 %cmp14.not, label %for.end.if.end20_crit_edge, label %if.then16

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.umin.i32(i32 %ret.1, i32 4096)
  %sub19 = add nsw i32 %8, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub19
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %for.end.if.end20_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_fb_update_rate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #7 align 64 {
entry:
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_info, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #10
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %u, align 4, !annotation !54
  %7 = add i32 %count, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %7)
  %8 = icmp ult i32 %7, -10
  br i1 %8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef nonnull %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp6 = icmp ugt i32 %10, 10
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.else

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %u, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %u, align 4
  %conv = trunc i32 %13 to i8
  %update_rate = getelementptr inbounds %struct.picolcd_fb_data, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %update_rate to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %update_rate, align 4
  %div22 = udiv i8 100, %conv
  %div.zext = zext i8 %div22 to i32
  %15 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb_info, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbdefio, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.zext, ptr %18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @picolcd_fb_reset.mapcmd, !1, !"mapcmd", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 191, i32 18}
!2 = !{ptr @picolcd_init_framebuffer.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 532, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 540, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @picolcd_init_framebuffer._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @picolcd_init_framebuffer._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 550, i32 3}
!15 = !{ptr @picolcd_init_framebuffer._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @picolcd_init_framebuffer._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 556, i32 3}
!19 = !{ptr @picolcd_init_framebuffer._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @picolcd_init_framebuffer._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 563, i32 3}
!23 = !{ptr @picolcd_init_framebuffer._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @picolcd_init_framebuffer._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @picolcd_fb_defio, !26, !"picolcd_fb_defio", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 440, i32 36}
!27 = !{ptr @picolcdfb_ops, !28, !"picolcdfb_ops", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 420, i32 28}
!29 = !{ptr @picolcdfb_var, !30, !"picolcdfb_var", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 58, i32 39}
!31 = !{ptr @picolcdfb_fix, !32, !"picolcdfb_fix", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 47, i32 39}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 494, i32 8}
!35 = !{ptr @dev_attr_fb_update_rate, !34, !"dev_attr_fb_update_rate", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 461, i32 45}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 463, i32 45}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-picolcd_fb.c", i32 480, i32 18}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.peeled.count", i32 1}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{!"auto-init"}
