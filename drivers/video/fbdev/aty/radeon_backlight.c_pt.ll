; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/radeon_backlight.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/radeon_backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.radeonfb_info = type { ptr, %struct.radeon_regs, %struct.radeon_regs, [50 x i8], i32, i32, ptr, ptr, i32, ptr, ptr, i32, [16 x i32], [256 x %struct.anon.80], i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.panel_info, i32, ptr, ptr, i32, i32, ptr, i32, %struct.pll_info, i32, [100 x i32], i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.timer_list, i32, [4 x %struct.radeon_i2c_chan] }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.radeon_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.radeon_bl_privdata = type { ptr, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@radeonfb_bl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"radeonfb: Memory allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeonfb_bl_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/video/fbdev/aty/radeon_backlight.c\00", [53 x i8] zeroinitializer }, align 32
@radeonfb_bl_init._entry_ptr = internal global ptr @radeonfb_bl_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeonbl%d\00", [21 x i8] zeroinitializer }, align 32
@radeon_bl_data = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @radeon_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeonfb_bl_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"radeonfb: Backlight registration failed\0A\00", [55 x i8] zeroinitializer }, align 32
@radeonfb_bl_init._entry_ptr.6 = internal global ptr @radeonfb_bl_init._entry.4, section ".printk_index", align 4
@radeonfb_bl_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeonfb: Backlight initialized (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@radeonfb_bl_init._entry_ptr.9 = internal global ptr @radeonfb_bl_init._entry.7, section ".printk_index", align 4
@radeonfb_bl_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"radeonfb: Backlight unloaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeonfb_bl_exit\00", [47 x i8] zeroinitializer }, align 32
@radeonfb_bl_exit._entry_ptr = internal global ptr @radeonfb_bl_exit._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 145, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 149, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"radeon_bl_data\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 123, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 158, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 189, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [46 x i8] c"../drivers/video/fbdev/aty/radeon_backlight.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 210, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @radeonfb_bl_exit._entry, ptr @radeonfb_bl_exit._entry_ptr, ptr @radeonfb_bl_init._entry, ptr @radeonfb_bl_init._entry.4, ptr @radeonfb_bl_init._entry.7, ptr @radeonfb_bl_init._entry_ptr, ptr @radeonfb_bl_init._entry_ptr.6, ptr @radeonfb_bl_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @radeon_bl_data, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_bl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bl_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_bl_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_bl_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_bl_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_bl_init(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %name = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #8
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %2 = call ptr @memset(ptr %props, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #8
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 31
  %3 = call ptr @memset(ptr %name, i32 255, i32 12)
  %4 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %error

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rinfo, align 8
  %node = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str.3, i32 noundef %10)
  %11 = call ptr @memset(ptr %props, i32 0, i32 28)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %1, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 127, ptr %0, align 4
  %14 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rinfo, align 8
  %dev = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call7 = call ptr @backlight_device_register(ptr noundef nonnull %name, ptr noundef %17, ptr noundef nonnull %call7.i, ptr noundef nonnull @radeon_bl_data, ptr noundef nonnull %props) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rinfo, align 8
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bl_dev, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %error

if.end16:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rinfo, ptr %call7.i, align 8
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %family, align 4
  %switch.tableidx = add i8 %23, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %24 = icmp ugt i8 %switch.tableidx, 8
  %switch.cast = zext i8 %switch.tableidx to i9
  %switch.downshift = lshr i9 214, %switch.cast
  %25 = and i9 %switch.downshift, 1
  %26 = sext i9 %25 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %switch.masked = icmp ne i9 %25, 0
  %27 = select i1 %24, i1 true, i1 %switch.masked
  %conv33 = zext i1 %27 to i8
  %negative = getelementptr inbounds %struct.radeon_bl_privdata, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %negative to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv33, ptr %negative, align 4
  %29 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rinfo, align 8
  %bl_dev35 = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %bl_dev35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7, ptr %bl_dev35, align 4
  %32 = load ptr, ptr %rinfo, align 8
  call void @fb_bl_default_curve(ptr noundef %32, i8 noundef zeroext 0, i8 noundef zeroext 63, i8 noundef zeroext -39) #8
  %max_brightness38 = getelementptr inbounds %struct.backlight_properties, ptr %call7, i32 0, i32 1
  %33 = ptrtoint ptr %max_brightness38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_brightness38, align 4
  %35 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %call7, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call7, i32 0, i32 2
  %36 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %power, align 8
  call fastcc void @backlight_update_status(ptr noundef %call7)
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %name) #12
  br label %cleanup

error:                                            ; preds = %if.then9, %do.end
  call void @kfree(ptr noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end16, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_bl_default_curve(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @backlight_update_status(ptr noundef %bd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %ops = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %update_status = getelementptr inbounds %struct.backlight_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %update_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_status, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef %bd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_bl_exit(ptr nocapture noundef readonly %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rinfo, align 8
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @backlight_device_unregister(ptr noundef nonnull %3) #8
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rinfo, align 8
  %bl_dev2 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %bl_dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bl_dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_bl_update_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mon1_type = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %mon1_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mon1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %6 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

lor.lhs.false:                                    ; preds = %if.end
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 3
  %8 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not = icmp eq i32 %9, 0
  br i1 %cmp4.not, label %if.else, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %lor.lhs.false.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %level.0 = phi i32 [ %11, %if.else ], [ 0, %lor.lhs.false.if.end7_crit_edge ], [ 0, %if.end.if.end7_crit_edge ]
  %lvds_timer = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 48
  %call8 = tail call i32 @del_timer_sync(ptr noundef %lvds_timer) #8
  tail call void @_radeon_engine_idle(ptr noundef %3) #8
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 720
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !32
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0)
  %cmp11 = icmp sgt i32 %level.0, 0
  br i1 %cmp11, label %if.then12, label %if.else53

if.then12:                                        ; preds = %if.end7
  %16 = and i32 %15, 524289
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %16)
  %.not = icmp eq i32 %16, 524289
  br i1 %.not, label %if.else34, label %if.then17

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %15, -524419
  %lvds_gen_cntl18 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 2, i32 60
  %17 = ptrtoint ptr %lvds_gen_cntl18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lvds_gen_cntl18, align 4
  %and19 = and i32 %18, 262144
  %or = or i32 %and, %and19
  %or20 = or i32 %or, 524416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 8
  %add.ptr22 = getelementptr i8, ptr %21, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %19) #8, !srcloc !35
  %and23 = and i32 %or20, -65284
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %arrayidx.i = getelementptr %struct.fb_info, ptr %25, i32 0, i32 17, i32 %level.0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %negative.i = getelementptr inbounds %struct.radeon_bl_privdata, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %negative.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %negative.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %30 = shl nuw nsw i32 %conv.i, 8
  %31 = xor i32 %30, 65280
  %shl = select i1 %tobool.not.i, i32 %30, i32 %31
  %32 = ptrtoint ptr %lvds_gen_cntl18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lvds_gen_cntl18, align 4
  %and29 = and i32 %33, 65536
  %or25 = or i32 %and23, %and29
  %or26 = or i32 %or25, %shl
  %or30 = or i32 %or26, 1
  %pending_lvds_gen_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 49
  %34 = ptrtoint ptr %pending_lvds_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or30, ptr %pending_lvds_gen_cntl, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %pwr_delay = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 30, i32 13
  %36 = ptrtoint ptr %pwr_delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pwr_delay, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %37) #8
  %add = add i32 %call2.i, %35
  %call33 = tail call i32 @mod_timer(ptr noundef %lvds_timer, i32 noundef %add) #8
  br label %if.end44

if.else34:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %and35 = and i32 %15, -65283
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %arrayidx.i169 = getelementptr %struct.fb_info, ptr %41, i32 0, i32 17, i32 %level.0
  %42 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i169, align 1
  %conv.i170 = zext i8 %43 to i32
  %negative.i171 = getelementptr inbounds %struct.radeon_bl_privdata, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %negative.i171 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %negative.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i172 = icmp eq i8 %45, 0
  %46 = shl nuw nsw i32 %conv.i170, 8
  %47 = xor i32 %46, 65280
  %shl37 = select i1 %tobool.not.i172, i32 %46, i32 %47
  %or38 = or i32 %shl37, %and35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %49 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio_base, align 8
  %add.ptr43 = getelementptr i8, ptr %50, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %48) #8, !srcloc !35
  br label %if.end44

if.end44:                                         ; preds = %if.else34, %if.then17
  %lvds_gen_cntl.0 = phi i32 [ %or38, %if.else34 ], [ %or30, %if.then17 ]
  %lvds_gen_cntl46 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 2, i32 60
  %51 = ptrtoint ptr %lvds_gen_cntl46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lvds_gen_cntl46, align 4
  %and47 = and i32 %52, -589572
  %pending_lvds_gen_cntl48 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 49
  %53 = ptrtoint ptr %pending_lvds_gen_cntl48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pending_lvds_gen_cntl48, align 8
  %and49 = and i32 %54, 589571
  %or52 = or i32 %and49, %and47
  store i32 %or52, ptr %lvds_gen_cntl46, align 4
  br label %if.end91

if.else53:                                        ; preds = %if.end7
  %call54 = tail call i32 @__INPLL(ptr noundef %3, i32 noundef 45) #8
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 26
  %55 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool55.not = icmp eq i32 %56, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.else53.if.then58_crit_edge

if.else53.if.then58_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

lor.lhs.false56:                                  ; preds = %if.else53
  %is_IGP = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 27
  %57 = ptrtoint ptr %is_IGP to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %is_IGP, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool57.not = icmp eq i32 %58, 0
  br i1 %tobool57.not, label %lor.lhs.false56.if.end59_crit_edge, label %lor.lhs.false56.if.then58_crit_edge

lor.lhs.false56.if.then58_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

lor.lhs.false56.if.end59_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %lor.lhs.false56.if.then58_crit_edge, %if.else53.if.then58_crit_edge
  tail call void @__OUTPLLP(ptr noundef %3, i32 noundef 45, i32 noundef 0, i32 noundef -16385) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %lor.lhs.false56.if.end59_crit_edge
  %and60 = and i32 %15, -130819
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %arrayidx.i175 = getelementptr %struct.fb_info, ptr %62, i32 0, i32 17, i32 0
  %63 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i175, align 1
  %conv.i176 = zext i8 %64 to i32
  %negative.i177 = getelementptr inbounds %struct.radeon_bl_privdata, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %negative.i177 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %negative.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i178 = icmp eq i8 %66, 0
  %67 = shl nuw nsw i32 %conv.i176, 8
  %68 = xor i32 %67, 65280
  %shl62 = select i1 %tobool.not.i178, i32 %67, i32 %68
  %or63 = or i32 %and60, %shl62
  %or64 = or i32 %or63, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %69 = tail call i32 @llvm.bswap.i32(i32 %or64)
  %70 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_base, align 8
  %add.ptr69 = getelementptr i8, ptr %71, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %69) #8, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 21474800) #8
  %and70 = and i32 %or64, -130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %and70)
  %74 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_base, align 8
  %add.ptr75 = getelementptr i8, ptr %75, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %73) #8, !srcloc !35
  %and76 = and i32 %or64, -262274
  %pending_lvds_gen_cntl77 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 49
  %76 = ptrtoint ptr %pending_lvds_gen_cntl77 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and76, ptr %pending_lvds_gen_cntl77, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %pwr_delay80 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 30, i32 13
  %78 = ptrtoint ptr %pwr_delay80 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pwr_delay80, align 4
  %call2.i165 = tail call i32 @__msecs_to_jiffies(i32 noundef %79) #8
  %add82 = add i32 %call2.i165, %77
  %call83 = tail call i32 @mod_timer(ptr noundef %lvds_timer, i32 noundef %add82) #8
  %80 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool85.not = icmp eq i32 %81, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %if.end59.if.then89_crit_edge

if.end59.if.then89_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

lor.lhs.false86:                                  ; preds = %if.end59
  %is_IGP87 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 27
  %82 = ptrtoint ptr %is_IGP87 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %is_IGP87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool88.not = icmp eq i32 %83, 0
  br i1 %tobool88.not, label %lor.lhs.false86.if.end91_crit_edge, label %lor.lhs.false86.if.then89_crit_edge

lor.lhs.false86.if.then89_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

lor.lhs.false86.if.end91_crit_edge:               ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then89:                                        ; preds = %lor.lhs.false86.if.then89_crit_edge, %if.end59.if.then89_crit_edge
  tail call void @__OUTPLL(ptr noundef %3, i32 noundef 45, i32 noundef %call54) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %lor.lhs.false86.if.end91_crit_edge, %if.end44
  %lvds_gen_cntl.1 = phi i32 [ %lvds_gen_cntl.0, %if.end44 ], [ %and76, %if.then89 ], [ %and76, %lor.lhs.false86.if.end91_crit_edge ]
  %lvds_gen_cntl93 = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 2, i32 60
  %84 = ptrtoint ptr %lvds_gen_cntl93 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lvds_gen_cntl93, align 4
  %and94 = and i32 %85, -589572
  %and95 = and i32 %lvds_gen_cntl.1, 589571
  %or98 = or i32 %and94, %and95
  store i32 %or98, ptr %lvds_gen_cntl93, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_radeon_engine_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__INPLL(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__OUTPLLP(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__OUTPLL(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/radeon_backlight.c", i32 145, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @radeonfb_bl_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @radeonfb_bl_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/radeon_backlight.c", i32 149, i32 31}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/aty/radeon_backlight.c", i32 158, i32 3}
!10 = !{ptr @radeonfb_bl_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeonfb_bl_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/aty/radeon_backlight.c", i32 189, i32 2}
!14 = !{ptr @radeonfb_bl_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeonfb_bl_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/aty/radeon_backlight.c", i32 210, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @radeonfb_bl_exit._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeonfb_bl_exit._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @radeon_bl_data, !22, !"radeon_bl_data", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/aty/radeon_backlight.c", i32 123, i32 35}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 5005137}
!33 = !{i64 2156325464}
!34 = !{i64 2156325819}
!35 = !{i64 5004719}
!36 = !{i64 2156326376}
!37 = !{i64 2156327238}
!38 = !{i64 2156328316}
