; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nv_i2c.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nv_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvidia #0\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvidia #1\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvidia #2\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nvidia_setup_i2c_bus.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvidiafb\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia_setup_i2c_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/fbdev/nvidia/nv_i2c.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C bus %s registered.\0A\00", [40 x i8] zeroinitializer }, align 32
@nvidia_setup_i2c_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 115, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register I2C bus %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvidia_setup_i2c_bus._entry_ptr = internal global ptr @nvidia_setup_i2c_bus._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 129, i32 39 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 133, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 137, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 111, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [39 x i8] c"../drivers/video/fbdev/nvidia/nv_i2c.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 114, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nvidia_setup_i2c_bus._entry, ptr @nvidia_setup_i2c_bus._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_setup_i2c_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidia_create_i2c_busses(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 56
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %par, ptr %chan, align 8
  %arrayidx3 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %par, ptr %arrayidx3, align 8
  %arrayidx6 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %par, ptr %arrayidx6, align 8
  %reverse_i2c = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 40
  %3 = ptrtoint ptr %reverse_i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reverse_i2c, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 62, i32 54
  %ddc_base = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 0, i32 1
  %5 = ptrtoint ptr %ddc_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %ddc_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp ne i32 %4, 0
  %cond14 = zext i1 %tobool13.not to i32
  tail call fastcc void @nvidia_setup_i2c_bus(ptr noundef %chan, ptr noundef nonnull @.str, i32 noundef %cond14)
  %6 = ptrtoint ptr %reverse_i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reverse_i2c, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  %cond17 = select i1 %tobool16.not, i32 54, i32 62
  %ddc_base20 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 1, i32 1
  %8 = ptrtoint ptr %ddc_base20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond17, ptr %ddc_base20, align 4
  %cond25 = zext i1 %tobool16.not to i32
  tail call fastcc void @nvidia_setup_i2c_bus(ptr noundef %arrayidx3, ptr noundef nonnull @.str.1, i32 noundef %cond25)
  %ddc_base29 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 2, i32 1
  %9 = ptrtoint ptr %ddc_base29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 80, ptr %ddc_base29, align 4
  tail call fastcc void @nvidia_setup_i2c_bus(ptr noundef %arrayidx6, ptr noundef nonnull @.str.2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvidia_setup_i2c_bus(ptr noundef %chan, ptr noundef %name, i32 noundef %i2c_class) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 2
  %name1 = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 2, i32 12
  %call = tail call ptr @strcpy(ptr noundef %name1, ptr noundef %name) #7
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i2c_class, ptr %class, align 4
  %algo = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3
  %algo_data = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %algo, ptr %algo_data, align 4
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 8
  %pci_dev = getelementptr inbounds %struct.nvidia_par, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %parent = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 2, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %setsda = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvidia_gpio_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvidia_gpio_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvidia_gpio_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nvidia_gpio_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %timeout, align 8
  %14 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chan, ptr %algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 2, i32 9, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chan, ptr %driver_data.i.i, align 4
  %ddc_base.i = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddc_base.i, align 4
  %18 = trunc i32 %17 to i8
  %conv.i = add i8 %18, 1
  %call.i = tail call zeroext i8 @NVReadCrtc(ptr noundef %4, i8 noundef zeroext %conv.i) #4
  %19 = and i8 %call.i, -32
  %20 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ddc_base.i, align 4
  %22 = trunc i32 %21 to i8
  %conv6.i = add i8 %22, 1
  %or7.i = or i8 %19, 17
  tail call void @NVWriteCrtc(ptr noundef %4, i8 noundef zeroext %conv6.i, i8 noundef zeroext %or7.i) #4
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan, align 8
  %25 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ddc_base.i, align 4
  %27 = trunc i32 %26 to i8
  %conv.i2 = add i8 %27, 1
  %call.i3 = tail call zeroext i8 @NVReadCrtc(ptr noundef %24, i8 noundef zeroext %conv.i2) #4
  %28 = and i8 %call.i3, -48
  %29 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ddc_base.i, align 4
  %31 = trunc i32 %30 to i8
  %conv6.i5 = add i8 %31, 1
  %or7.i6 = or i8 %28, 33
  tail call void @NVWriteCrtc(ptr noundef %24, i8 noundef zeroext %conv6.i5, i8 noundef zeroext %or7.i6) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 4294960) #4
  %call17 = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %do.body, label %do.end27

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvidia_setup_i2c_bus.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvidia_setup_i2c_bus, %if.then21)) #4
          to label %if.end32 [label %if.then21], !srcloc !27

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan, align 8
  %pci_dev23 = getelementptr inbounds %struct.nvidia_par, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %pci_dev23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev23, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvidia_setup_i2c_bus.__UNIQUE_ID_ddebug305, ptr noundef %dev24, ptr noundef nonnull @.str.6, ptr noundef %name) #4
  br label %if.end32

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan, align 8
  %pci_dev29 = getelementptr inbounds %struct.nvidia_par, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %pci_dev29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.7, ptr noundef %name) #8
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %chan, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.end27, %if.then21, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidia_delete_i2c_busses(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adapter = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 8
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %adapter.1 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 1, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter.1) #4
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 8
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %adapter.2 = getelementptr %struct.nvidia_par, ptr %par, i32 0, i32 56, i32 2, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter.2) #4
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvidia_probe_i2c_connector(ptr nocapture noundef readonly %info, i32 noundef %conn, ptr nocapture noundef writeonly %out_edid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %sub = add i32 %conn, -1
  %arrayidx = getelementptr %struct.nvidia_par, ptr %1, i32 0, i32 56, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end:                                           ; preds = %entry
  %adapter = getelementptr %struct.nvidia_par, ptr %1, i32 0, i32 56, i32 %sub, i32 2
  %call = tail call ptr @fb_ddc_read(ptr noundef %adapter) #4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conn)
  %cmp = icmp eq i32 %conn, 1
  br i1 %cmp, label %if.then7, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %call8 = tail call ptr @fb_firmware_edid(ptr noundef %5) #4
  %cmp9.not = icmp eq ptr %call8, null
  br i1 %cmp9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call ptr @kmemdup(ptr noundef nonnull %call8, i32 noundef 128, i32 noundef 3264) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %edid.2 = phi ptr [ %call, %if.end.if.end13_crit_edge ], [ null, %land.lhs.true.if.end13_crit_edge ], [ %call11, %if.then10 ], [ null, %if.then7.if.end13_crit_edge ]
  %6 = ptrtoint ptr %out_edid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %edid.2, ptr %out_edid, align 4
  %tobool14.not = icmp eq ptr %edid.2, null
  %cond = zext i1 %tobool14.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_firmware_edid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidia_gpio_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %ddc_base = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 1
  %call = tail call zeroext i8 @NVReadCrtc(ptr noundef %1, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %5 = and i8 %call, -32
  %or = or i8 %5, 16
  %val.0 = select i1 %tobool.not, i8 %5, i8 %or
  %6 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ddc_base, align 4
  %8 = trunc i32 %7 to i8
  %conv6 = add i8 %8, 1
  %or7 = or i8 %val.0, 1
  tail call void @NVWriteCrtc(ptr noundef %1, i8 noundef zeroext %conv6, i8 noundef zeroext %or7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidia_gpio_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %ddc_base = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 1
  %call = tail call zeroext i8 @NVReadCrtc(ptr noundef %1, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %5 = and i8 %call, -48
  %or = or i8 %5, 32
  %val.0 = select i1 %tobool.not, i8 %5, i8 %or
  %6 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ddc_base, align 4
  %8 = trunc i32 %7 to i8
  %conv6 = add i8 %8, 1
  %or7 = or i8 %val.0, 1
  tail call void @NVWriteCrtc(ptr noundef %1, i8 noundef zeroext %conv6, i8 noundef zeroext %or7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_gpio_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %ddc_base = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %conv = trunc i32 %3 to i8
  %call = tail call zeroext i8 @NVReadCrtc(ptr noundef %1, i8 noundef zeroext %conv) #4
  %4 = lshr i8 %call, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_gpio_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %ddc_base = getelementptr inbounds %struct.nvidia_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %conv = trunc i32 %3 to i8
  %call = tail call zeroext i8 @NVReadCrtc(ptr noundef %1, i8 noundef zeroext %conv) #4
  %4 = lshr i8 %call, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadCrtc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteCrtc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nv_i2c.c", i32 129, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/nvidia/nv_i2c.c", i32 133, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/nvidia/nv_i2c.c", i32 137, i32 39}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/nvidia/nv_i2c.c", i32 111, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvidia_setup_i2c_bus.__UNIQUE_ID_ddebug305, !7, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/nvidia/nv_i2c.c", i32 114, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvidia_setup_i2c_bus._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvidia_setup_i2c_bus._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2148955231, i64 2148955236, i64 2148955249, i64 2148955293, i64 2148955327, i64 2148955348}
