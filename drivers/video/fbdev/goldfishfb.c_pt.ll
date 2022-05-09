; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/goldfishfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/goldfishfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.goldfish_fb = type { ptr, i32, %struct.spinlock, %struct.wait_queue_head, i32, i32, %struct.fb_info, [16 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.84 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_goldfishfb__304_326_goldfish_fb_driver_init6 = internal global ptr @goldfish_fb_driver_init, section ".initcall6.init", align 4
@goldfish_fb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @goldfish_fb_probe, ptr @goldfish_fb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @goldfish_fb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_goldfish_fb_driver_exit = internal global ptr @goldfish_fb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file305 = internal constant [47 x i8] c"goldfishfb.file=drivers/video/fbdev/goldfishfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"goldfishfb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"goldfish_fb\00", [20 x i8] zeroinitializer }, align 32
@goldfish_fb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,goldfish-fb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@goldfish_fb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fb->lock\00", [22 x i8] zeroinitializer }, align 32
@goldfish_fb_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fb->wait\00", [22 x i8] zeroinitializer }, align 32
@goldfish_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @goldfish_fb_check_var, ptr @goldfish_fb_set_par, ptr @goldfish_fb_setcolreg, ptr null, ptr @goldfish_fb_blank, ptr @goldfish_fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@goldfish_fb_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"goldfishfb\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"goldfish_fb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/goldfishfb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"allocating frame buffer %d * %d, got %p\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@goldfish_fb_pan_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.6, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: timeout waiting for base update\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"goldfish_fb_pan_display\00", [40 x i8] zeroinitializer }, align 32
@goldfish_fb_pan_display._entry_ptr = internal global ptr @goldfish_fb_pan_display._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"goldfish_fb_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 316, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 320, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"goldfish_fb_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 302, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 190, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 191, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"goldfish_fb_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 163, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 244, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [36 x i8] c"../drivers/video/fbdev/goldfishfb.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 144, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_goldfish_fb_driver_exit, ptr @__initcall__kmod_goldfishfb__304_326_goldfish_fb_driver_init6, ptr @goldfish_fb_driver_exit, ptr @goldfish_fb_pan_display._entry, ptr @goldfish_fb_pan_display._entry_ptr, ptr @goldfish_fb_driver, ptr @.str, ptr @goldfish_fb_of_match, ptr @goldfish_fb_probe.__key, ptr @.str.1, ptr @goldfish_fb_probe.__key.2, ptr @.str.3, ptr @goldfish_fb_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_fb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_fb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_fb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_fb_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_fb_pan_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @goldfish_fb_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_fb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @goldfish_fb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fbpaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbpaddr) #9
  %0 = ptrtoint ptr %fbpaddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fbpaddr, align 4, !annotation !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1292) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @goldfish_fb_probe.__key, i16 noundef signext 3) #9
  %wait = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @goldfish_fb_probe.__key.2) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %do.body.err_no_io_base_crit_edge, label %if.end8

do.body.err_no_io_base_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_io_base

if.end8:                                          ; preds = %do.body
  %3 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call5, align 4
  %call9 = tail call ptr @ioremap(i32 noundef %4, i32 noundef 4096) #9
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %call7.i.i, align 8
  %cmp11 = icmp eq ptr %call9, null
  br i1 %cmp11, label %if.end8.err_no_io_base_crit_edge, label %if.end13

if.end8.err_no_io_base_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_io_base

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 1
  br i1 %cmp16, label %if.end13.err_no_irq_crit_edge, label %if.end18

if.end13.err_no_irq_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_irq

if.end18:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !41
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %add.ptr25 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !41
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %fb29 = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6
  %fbops = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @goldfish_fb_ops, ptr %fbops, align 8
  %flags = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 8
  %cmap = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 7
  %pseudo_palette = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 27
  %17 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmap, ptr %pseudo_palette, align 4
  %type = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 8
  %visual = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 5
  %19 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %visual, align 8
  %mul = shl i32 %10, 1
  %line_length = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 9
  %20 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %line_length, align 4
  %accel = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 12
  %21 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %accel, align 8
  %ypanstep = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 7
  %22 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %ypanstep, align 2
  %var = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %10, ptr %var, align 8
  %yres = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 1
  %24 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %yres, align 4
  %xres_virtual = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 2
  %25 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %10, ptr %xres_virtual, align 8
  %mul46 = shl i32 %14, 1
  %yres_virtual = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 3
  %26 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul46, ptr %yres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 6
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %bits_per_pixel, align 8
  %activate = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 13
  %28 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %activate, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %add.ptr56 = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #9, !srcloc !41
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %height62 = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 14
  %33 = ptrtoint ptr %height62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height62, align 8
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %add.ptr66 = getelementptr i8, ptr %35, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #9, !srcloc !41
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %width72 = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 15
  %38 = ptrtoint ptr %width72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %width72, align 4
  %pixclock = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 17
  %39 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pixclock, align 4
  %red = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 8
  %40 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 11, ptr %red, align 8
  %length = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 8, i32 1
  %41 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %length, align 4
  %green = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 9
  %42 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %green, align 4
  %length86 = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 9, i32 1
  %43 = ptrtoint ptr %length86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %length86, align 8
  %blue = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 10
  %44 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %blue, align 8
  %length93 = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 10, i32 1
  %45 = ptrtoint ptr %length93 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5, ptr %length93, align 4
  %mul94 = shl i32 %10, 2
  %mul96 = mul i32 %mul94, %14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul96, ptr noundef nonnull %fbpaddr, i32 noundef 3264, i32 noundef 0) #9
  %46 = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 25
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @goldfish_fb_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@goldfish_fb_probe, %if.then104)) #9
          to label %do.end108 [label %if.then104], !srcloc !46

if.then104:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %46, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @goldfish_fb_probe.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %14, ptr noundef %49) #9
  br label %do.end108

do.end108:                                        ; preds = %if.then104, %if.end18
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %46, align 4
  %cmp110 = icmp eq ptr %51, null
  br i1 %cmp110, label %do.end108.err_no_irq_crit_edge, label %if.end112

do.end108.err_no_irq_crit_edge:                   ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_irq

if.end112:                                        ; preds = %do.end108
  %52 = ptrtoint ptr %fbpaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fbpaddr, align 4
  %smem_start = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 1
  %54 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %smem_start, align 8
  %smem_len = getelementptr inbounds %struct.goldfish_fb, ptr %call7.i.i, i32 0, i32 6, i32 7, i32 2
  %55 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul96, ptr %smem_len, align 4
  %call120 = call i32 @fb_set_var(ptr noundef %fb29, ptr noundef %var) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end112.err_fb_set_var_failed_crit_edge

if.end112.err_fb_set_var_failed_crit_edge:        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fb_set_var_failed

if.end123:                                        ; preds = %if.end112
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 8
  %call.i229 = call i32 @request_threaded_irq(i32 noundef %57, ptr noundef nonnull @goldfish_fb_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %59, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool126.not = icmp eq i32 %call.i229, 0
  br i1 %tobool126.not, label %do.body129, label %if.end123.err_fb_set_var_failed_crit_edge

if.end123.err_fb_set_var_failed_crit_edge:        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fb_set_var_failed

do.body129:                                       ; preds = %if.end123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %add.ptr133 = getelementptr i8, ptr %61, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 33554432) #9, !srcloc !48
  %call137 = call i32 @goldfish_fb_pan_display(ptr noundef %var, ptr noundef %fb29)
  %call139 = call i32 @register_framebuffer(ptr noundef %fb29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %do.body129.cleanup_crit_edge, label %err_register_framebuffer_failed

do.body129.cleanup_crit_edge:                     ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_register_framebuffer_failed:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  %call144 = call ptr @free_irq(i32 noundef %63, ptr noundef nonnull %call7.i.i) #9
  br label %err_fb_set_var_failed

err_fb_set_var_failed:                            ; preds = %err_register_framebuffer_failed, %if.end123.err_fb_set_var_failed_crit_edge, %if.end112.err_fb_set_var_failed_crit_edge
  %ret.0 = phi i32 [ %call120, %if.end112.err_fb_set_var_failed_crit_edge ], [ %call.i229, %if.end123.err_fb_set_var_failed_crit_edge ], [ %call139, %err_register_framebuffer_failed ]
  %64 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %46, align 4
  %66 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %smem_start, align 8
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul96, ptr noundef %65, i32 noundef %67, i32 noundef 0) #9
  br label %err_no_irq

err_no_irq:                                       ; preds = %err_fb_set_var_failed, %do.end108.err_no_irq_crit_edge, %if.end13.err_no_irq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_fb_set_var_failed ], [ -19, %if.end13.err_no_irq_crit_edge ], [ -12, %do.end108.err_no_irq_crit_edge ]
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  call void @iounmap(ptr noundef %69) #9
  br label %err_no_io_base

err_no_io_base:                                   ; preds = %err_no_irq, %if.end8.err_no_io_base_crit_edge, %do.body.err_no_io_base_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_no_irq ], [ -19, %do.body.err_no_io_base_crit_edge ], [ -12, %if.end8.err_no_io_base_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_no_io_base, %do.body129.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body129.cleanup_crit_edge ], [ %ret.2, %err_no_io_base ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbpaddr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fb1 = getelementptr inbounds %struct.goldfish_fb, ptr %1, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.goldfish_fb, ptr %1, i32 0, i32 6, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.goldfish_fb, ptr %1, i32 0, i32 6, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  %mul = shl i32 %3, 1
  %mul4 = mul i32 %mul, %5
  tail call void @unregister_framebuffer(ptr noundef %fb1) #9
  %irq = getelementptr inbounds %struct.goldfish_fb, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %8 = getelementptr inbounds %struct.goldfish_fb, ptr %1, i32 0, i32 6, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %smem_start = getelementptr inbounds %struct.goldfish_fb, ptr %1, i32 0, i32 6, i32 7, i32 1
  %11 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smem_start, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul4, ptr noundef %10, i32 noundef %12, i32 noundef 0) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %14) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.goldfish_fb, ptr %dev_id, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base_update_count = getelementptr inbounds %struct.goldfish_fb, ptr %dev_id, i32 0, i32 4
  %4 = ptrtoint ptr %base_update_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_update_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %base_update_count, align 4
  %wait = getelementptr inbounds %struct.goldfish_fb, ptr %dev_id, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp ne i32 %2, 0
  %cond = zext i1 %tobool9.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_pan_display(ptr nocapture noundef readonly %var, ptr noundef %info) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -112
  %lock = getelementptr i8, ptr %info, i32 -104
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %base_update_count6 = getelementptr i8, ptr %info, i32 -8
  %0 = ptrtoint ptr %base_update_count6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_update_count6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_start, align 4
  %var12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var12, align 4
  %mul = shl i32 %5, 1
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %mul13 = mul i32 %mul, %7
  %add = add i32 %mul13, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %add)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #9, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 142) #9
  %11 = ptrtoint ptr %base_update_count6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_update_count6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp23.not = icmp eq i32 %12, %1
  br i1 %cmp23.not, label %if.then32, label %entry.if.end60_crit_edge

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then32:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr i8, ptr %info, i32 -60
  %call3498 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %14 = ptrtoint ptr %base_update_count6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_update_count6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp37.not99.not = icmp eq i32 %15, %1
  br i1 %cmp37.not99.not, label %if.then32.cleanup_crit_edge, label %if.then32.for.end_crit_edge

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then32.cleanup_crit_edge
  %__ret33.1101 = phi i32 [ %__ret33.1, %cleanup.cleanup_crit_edge ], [ 6, %if.then32.cleanup_crit_edge ]
  %call57 = call i32 @schedule_timeout(i32 noundef %__ret33.1101) #9
  %call34 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %16 = ptrtoint ptr %base_update_count6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_update_count6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp37.not = icmp eq i32 %17, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool43.not = icmp eq i32 %call57, 0
  %spec.store.select75 = select i1 %tobool43.not, i32 1, i32 %call57
  %__ret33.1 = select i1 %cmp37.not, i32 %call57, i32 %spec.store.select75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.1)
  %tobool50.not = icmp eq i32 %__ret33.1, 0
  %not.cmp37.not = xor i1 %cmp37.not, true
  %18 = select i1 %not.cmp37.not, i1 true, i1 %tobool50.not
  br i1 %18, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then32.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end60

if.end60:                                         ; preds = %for.end, %entry.if.end60_crit_edge
  %19 = ptrtoint ptr %base_update_count6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_update_count6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %1)
  %cmp63 = icmp eq i32 %20, %1
  br i1 %cmp63, label %do.end68, label %if.end60.if.end71_crit_edge

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #13
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %if.end60.if.end71_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @goldfish_fb_check_var(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 26
  %0 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotate, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %rotate2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 26
  %2 = ptrtoint ptr %rotate2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate2, align 4
  %4 = xor i32 %3, %1
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp eq i32 %7, %9
  br i1 %cmp5.not, label %lor.lhs.false, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.then
  %yres6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %10 = ptrtoint ptr %yres6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres6, align 4
  %12 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %var1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9.not = icmp eq i32 %11, %13
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %14 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp13.not = icmp eq i32 %15, %7
  br i1 %cmp13.not, label %lor.lhs.false14, label %lor.lhs.false10.return_crit_edge

lor.lhs.false10.return_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %16 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres_virtual, align 4
  %mul = shl i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mul)
  %cmp17 = icmp ugt i32 %17, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %11)
  %cmp22 = icmp ult i32 %17, %11
  %or.cond = or i1 %cmp17, %cmp22
  br i1 %or.cond, label %lor.lhs.false14.return_crit_edge, label %lor.lhs.false14.if.end51_crit_edge

lor.lhs.false14.if.end51_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false14.return_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  %18 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %var1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %19)
  %cmp27.not = icmp eq i32 %7, %19
  br i1 %cmp27.not, label %lor.lhs.false28, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false28:                                  ; preds = %if.else
  %yres29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %20 = ptrtoint ptr %yres29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres29, align 4
  %yres31 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %yres31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp32.not = icmp eq i32 %21, %23
  br i1 %cmp32.not, label %lor.lhs.false33, label %lor.lhs.false28.return_crit_edge

lor.lhs.false28.return_crit_edge:                 ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %xres_virtual34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %24 = ptrtoint ptr %xres_virtual34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xres_virtual34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %7)
  %cmp37.not = icmp eq i32 %25, %7
  br i1 %cmp37.not, label %lor.lhs.false38, label %lor.lhs.false33.return_crit_edge

lor.lhs.false33.return_crit_edge:                 ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false38:                                  ; preds = %lor.lhs.false33
  %yres_virtual39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %26 = ptrtoint ptr %yres_virtual39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres_virtual39, align 4
  %mul42 = shl i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul42)
  %cmp43 = icmp ugt i32 %27, %mul42
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp48 = icmp ult i32 %27, %21
  %or.cond96 = or i1 %cmp43, %cmp48
  br i1 %or.cond96, label %lor.lhs.false38.return_crit_edge, label %lor.lhs.false38.if.end51_crit_edge

lor.lhs.false38.if.end51_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false38.return_crit_edge:                 ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end51:                                         ; preds = %lor.lhs.false38.if.end51_crit_edge, %lor.lhs.false14.if.end51_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %28 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xoffset, align 4
  %xoffset53 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %30 = ptrtoint ptr %xoffset53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xoffset53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp54.not = icmp eq i32 %29, %31
  br i1 %cmp54.not, label %lor.lhs.false55, label %if.end51.return_crit_edge

if.end51.return_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false55:                                  ; preds = %if.end51
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %32 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bits_per_pixel, align 4
  %bits_per_pixel57 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %bits_per_pixel57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bits_per_pixel57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp58.not = icmp eq i32 %33, %35
  br i1 %cmp58.not, label %lor.lhs.false59, label %lor.lhs.false55.return_crit_edge

lor.lhs.false55.return_crit_edge:                 ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false59:                                  ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #11
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %36 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %grayscale, align 4
  %grayscale61 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %38 = ptrtoint ptr %grayscale61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %grayscale61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp62.not = icmp eq i32 %37, %39
  %spec.select = select i1 %cmp62.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %lor.lhs.false59, %lor.lhs.false55.return_crit_edge, %if.end51.return_crit_edge, %lor.lhs.false38.return_crit_edge, %lor.lhs.false33.return_crit_edge, %lor.lhs.false28.return_crit_edge, %if.else.return_crit_edge, %lor.lhs.false14.return_crit_edge, %lor.lhs.false10.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false14.return_crit_edge ], [ -22, %lor.lhs.false10.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %lor.lhs.false38.return_crit_edge ], [ -22, %lor.lhs.false33.return_crit_edge ], [ -22, %lor.lhs.false28.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ -22, %lor.lhs.false55.return_crit_edge ], [ -22, %if.end51.return_crit_edge ], [ %spec.select, %lor.lhs.false59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation = getelementptr i8, ptr %info, i32 -4
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotation, align 4
  %rotate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 26
  %2 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %info, i32 -112
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var2, align 4
  %mul = shl i32 %5, 1
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %line_length, align 4
  %7 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %rotation, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rotation, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #9, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @goldfish_fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp = icmp ult i32 %regno, 16
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %transp2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  %notmask.i = shl nsw i32 -1, %1
  %sub.i = xor i32 %notmask.i, -1
  %sub2.i = sub i32 16, %1
  %shr.i = ashr i32 %transp, %sub2.i
  %and.i = and i32 %shr.i, %sub.i
  %2 = ptrtoint ptr %transp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transp2, align 4
  %shl3.i = shl i32 %and.i, %3
  %blue5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length.i22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %4 = ptrtoint ptr %length.i22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i22, align 4
  %notmask.i23 = shl nsw i32 -1, %5
  %sub.i24 = xor i32 %notmask.i23, -1
  %sub2.i25 = sub i32 16, %5
  %shr.i26 = ashr i32 %blue, %sub2.i25
  %and.i27 = and i32 %shr.i26, %sub.i24
  %6 = ptrtoint ptr %blue5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blue5, align 4
  %shl3.i28 = shl i32 %and.i27, %7
  %or = or i32 %shl3.i28, %shl3.i
  %green9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length.i29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %8 = ptrtoint ptr %length.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i29, align 4
  %notmask.i30 = shl nsw i32 -1, %9
  %sub.i31 = xor i32 %notmask.i30, -1
  %sub2.i32 = sub i32 16, %9
  %shr.i33 = ashr i32 %green, %sub2.i32
  %and.i34 = and i32 %shr.i33, %sub.i31
  %10 = ptrtoint ptr %green9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %green9, align 4
  %shl3.i35 = shl i32 %and.i34, %11
  %or11 = or i32 %or, %shl3.i35
  %red14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length.i36 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %12 = ptrtoint ptr %length.i36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i36, align 4
  %notmask.i37 = shl nsw i32 -1, %13
  %sub.i38 = xor i32 %notmask.i37, -1
  %sub2.i39 = sub i32 16, %13
  %shr.i40 = ashr i32 %red, %sub2.i39
  %and.i41 = and i32 %shr.i40, %sub.i38
  %14 = ptrtoint ptr %red14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %red14, align 4
  %shl3.i42 = shl i32 %and.i41, %15
  %or16 = or i32 %or11, %shl3.i42
  %cmap = getelementptr i8, ptr %info, i32 1116
  %arrayidx = getelementptr [16 x i32], ptr %cmap, i32 0, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or16, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_fb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -112
  %0 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %blank, label %entry.sw.epilog_crit_edge [
    i32 1, label %do.body
    i32 0, label %do.body3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #9, !srcloc !48
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %add.ptr7 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #9, !srcloc !48
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body3, %do.body, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_goldfishfb__304_326_goldfish_fb_driver_init6, !1, !"__initcall__kmod_goldfishfb__304_326_goldfish_fb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_goldfish_fb_driver_exit, !1, !"__exitcall_goldfish_fb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file305, !4, !"__UNIQUE_ID_file305", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 328, i32 1}
!5 = !{ptr @__UNIQUE_ID_license306, !4, !"__UNIQUE_ID_license306", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 320, i32 11}
!8 = !{ptr @goldfish_fb_driver, !9, !"goldfish_fb_driver", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 316, i32 31}
!10 = !{ptr @goldfish_fb_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 190, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @goldfish_fb_probe.__key.2, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 191, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 244, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @goldfish_fb_probe.__UNIQUE_ID_ddebug303, !17, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!22 = !{ptr @goldfish_fb_ops, !23, !"goldfish_fb_ops", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 163, i32 28}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 144, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @goldfish_fb_pan_display._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @goldfish_fb_pan_display._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @goldfish_fb_of_match, !30, !"goldfish_fb_of_match", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/goldfishfb.c", i32 302, i32 34}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{i64 6223653}
!42 = !{i64 2155922073}
!43 = !{i64 2155922603}
!44 = !{i64 2155923178}
!45 = !{i64 2155923724}
!46 = !{i64 2148959976, i64 2148959981, i64 2148959994, i64 2148960038, i64 2148960072, i64 2148960093}
!47 = !{i64 2155926694}
!48 = !{i64 6223235}
!49 = !{i64 2155910038}
!50 = !{i64 2155914876}
!51 = !{i64 2155912867}
!52 = !{i64 2155920286}
!53 = !{i64 2155920687}
