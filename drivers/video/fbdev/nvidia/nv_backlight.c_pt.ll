; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nv_backlight.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nv_backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nvidia_par = type { %struct._riva_hw_state, %struct._riva_hw_state, %struct._riva_hw_state, ptr, %struct.vgastate, [16 x i32], ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.NVFBLayout, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, [3 x %struct.nvidia_i2c_chan], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._riva_hw_state = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.NVFBLayout = type { i32, i32, i32, i32 }
%struct.nvidia_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvidiabl%d\00", [21 x i8] zeroinitializer }, align 32
@nvidia_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @nvidia_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nvidia_bl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014nvidia: Backlight registration failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia_bl_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/video/fbdev/nvidia/nv_backlight.c\00", [54 x i8] zeroinitializer }, align 32
@nvidia_bl_init._entry_ptr = internal global ptr @nvidia_bl_init._entry, section ".printk_index", align 4
@nvidia_bl_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nvidia: Backlight initialized (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@nvidia_bl_init._entry_ptr.6 = internal global ptr @nvidia_bl_init._entry.4, section ".printk_index", align 4
@nvidia_bl_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia: Backlight unloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia_bl_exit\00", [17 x i8] zeroinitializer }, align 32
@nvidia_bl_exit._entry_ptr = internal global ptr @nvidia_bl_exit._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 102, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"nvidia_bl_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 82, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 111, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 124, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [45 x i8] c"../drivers/video/fbdev/nvidia/nv_backlight.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 136, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @nvidia_bl_exit._entry, ptr @nvidia_bl_exit._entry_ptr, ptr @nvidia_bl_init._entry, ptr @nvidia_bl_init._entry.4, ptr @nvidia_bl_init._entry_ptr, ptr @nvidia_bl_init._entry_ptr.6, ptr @.str, ptr @nvidia_bl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_bl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_bl_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_bl_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidia_bl_init(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %name = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #5
  %pci_dev = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 6
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #5
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 26
  %4 = call ptr @memset(ptr %name, i32 255, i32 12)
  %5 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %8 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %node = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 12, ptr noundef nonnull @.str, i32 noundef %10)
  %11 = call ptr @memset(ptr %props, i32 0, i32 28)
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %7, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 127, ptr %8, align 4
  %dev = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call3 = call ptr @backlight_device_register(ptr noundef nonnull %name, ptr noundef %15, ptr noundef %par, ptr noundef nonnull @nvidia_bl_ops, ptr noundef nonnull %props) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 15
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bl_dev, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %17 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3, ptr %bl_dev, align 4
  call void @fb_bl_default_curve(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 65, i8 noundef zeroext -1) #5
  %max_brightness10 = getelementptr inbounds %struct.backlight_properties, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %max_brightness10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_brightness10, align 4
  %20 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call3, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %power, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call3, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end7.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end7.backlight_update_status.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %25(ptr noundef %call3) #5
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end7.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #5
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %name) #8
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_bl_default_curve(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidia_bl_exit(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 6
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %5) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_bl_update_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

lor.lhs.false:                                    ; preds = %if.end
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 3
  %6 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.else, label %lor.lhs.false.if.end5_crit_edge

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %lor.lhs.false.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %level.0 = phi i32 [ %9, %if.else ], [ 0, %lor.lhs.false.if.end5_crit_edge ], [ 0, %if.end.if.end5_crit_edge ]
  %PMC = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 66
  %10 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PMC, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4336
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %and = and i32 %12, 65535
  %PCRTC0 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 58
  %13 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %PCRTC0, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 2076
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !28
  %and9 = and i32 %15, -4
  %PRAMDAC = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 75
  %16 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr10 = getelementptr i8, ptr %17, i32 2120
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !28
  %and12 = and i32 %18, -805306420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0)
  %cmp13 = icmp sgt i32 %level.0, 0
  br i1 %cmp13, label %if.then14, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %and9, 1
  %pci_dev.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.fb_info, ptr %22, i32 0, i32 17, i32 %level.0
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %24 to i32
  %add.i = mul nuw nsw i32 %conv.i, 196608
  %shl = add nuw nsw i32 %add.i, 22544384
  %or15 = or i32 %shl, %and
  %or17 = or i32 %or15, -2147483648
  %fpSyncs = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 42
  %25 = ptrtoint ptr %fpSyncs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fpSyncs, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end5.if.end21_crit_edge
  %tmp_pcrt.0 = phi i32 [ %or, %if.then14 ], [ %and9, %if.end5.if.end21_crit_edge ]
  %tmp_pmc.0 = phi i32 [ %or17, %if.then14 ], [ %and, %if.end5.if.end21_crit_edge ]
  %.pn = phi i32 [ %26, %if.then14 ], [ 536870946, %if.end5.if.end21_crit_edge ]
  %fpcontrol.0 = or i32 %.pn, %and12
  %27 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %PCRTC0, align 4
  %add.ptr23 = getelementptr i8, ptr %28, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %tmp_pcrt.0) #5, !srcloc !29
  %29 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %PMC, align 4
  %add.ptr25 = getelementptr i8, ptr %30, i32 4336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %tmp_pmc.0) #5, !srcloc !29
  %31 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr27 = getelementptr i8, ptr %32, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %fpcontrol.0) #5, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nv_backlight.c", i32 102, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/nvidia/nv_backlight.c", i32 111, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvidia_bl_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvidia_bl_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/nvidia/nv_backlight.c", i32 124, i32 2}
!10 = !{ptr @nvidia_bl_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvidia_bl_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/nvidia/nv_backlight.c", i32 136, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvidia_bl_exit._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvidia_bl_exit._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nvidia_bl_ops, !18, !"nvidia_bl_ops", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/nvidia/nv_backlight.c", i32 82, i32 35}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 4972728}
!29 = !{i64 4972310}
