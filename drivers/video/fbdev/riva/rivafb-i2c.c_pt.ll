; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/riva/rivafb-i2c.c_pt.bc'
source_filename = "../drivers/video/fbdev/riva/rivafb-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.riva_par = type { %struct._riva_hw_inst, [16 x i32], [16 x i32], ptr, i32, %struct.riva_regs, %struct.riva_regs, %struct.mutex, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, [3 x %struct.riva_i2c_chan] }
%struct._riva_hw_inst = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.riva_regs = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, %struct._riva_hw_state }
%struct._riva_hw_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.riva_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.98 = type { ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUS1\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUS2\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUS3\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@riva_setup_i2c_bus.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rivafb\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"riva_setup_i2c_bus\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/fbdev/riva/rivafb-i2c.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C bus %s registered.\0A\00", [40 x i8] zeroinitializer }, align 32
@riva_setup_i2c_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 119, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register I2C bus %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@riva_setup_i2c_bus._entry_ptr = internal global ptr @riva_setup_i2c_bus._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 135, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 136, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 137, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 116, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [41 x i8] c"../drivers/video/fbdev/riva/rivafb-i2c.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 118, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @riva_setup_i2c_bus._entry, ptr @riva_setup_i2c_bus._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riva_setup_i2c_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @riva_create_i2c_busses(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 17
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %par, ptr %chan, align 8
  %arrayidx3 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %par, ptr %arrayidx3, align 8
  %arrayidx6 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %par, ptr %arrayidx6, align 8
  %ddc_base = getelementptr inbounds %struct.riva_par, ptr %par, i32 0, i32 17, i32 0, i32 1
  %3 = ptrtoint ptr %ddc_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 54, ptr %ddc_base, align 4
  %ddc_base12 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 1, i32 1
  %4 = ptrtoint ptr %ddc_base12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 62, ptr %ddc_base12, align 4
  %ddc_base15 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 2, i32 1
  %5 = ptrtoint ptr %ddc_base15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 80, ptr %ddc_base15, align 4
  tail call fastcc void @riva_setup_i2c_bus(ptr noundef %chan, ptr noundef nonnull @.str, i32 noundef 1)
  tail call fastcc void @riva_setup_i2c_bus(ptr noundef %arrayidx3, ptr noundef nonnull @.str.1, i32 noundef 0)
  tail call fastcc void @riva_setup_i2c_bus(ptr noundef %arrayidx6, ptr noundef nonnull @.str.2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @riva_setup_i2c_bus(ptr noundef %chan, ptr noundef %name, i32 noundef %i2c_class) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 2
  %name1 = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 2, i32 12
  %call = tail call ptr @strcpy(ptr noundef %name1, ptr noundef %name) #7
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i2c_class, ptr %class, align 4
  %algo = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3
  %algo_data = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %algo, ptr %algo_data, align 4
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 8
  %pdev = getelementptr inbounds %struct.riva_par, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %parent = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 2, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %setsda = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @riva_gpio_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @riva_gpio_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @riva_gpio_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @riva_gpio_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %timeout, align 8
  %14 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chan, ptr %algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 2, i32 9, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chan, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %ddc_base.i = getelementptr inbounds %struct.riva_i2c_chan, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddc_base.i, align 4
  %18 = trunc i32 %17 to i8
  %conv.i = add i8 %18, 1
  %PCIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %4, i32 0, i32 28
  %19 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %PCIO.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #4, !srcloc !28
  %21 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %PCIO.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %22, i32 981
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %24 = and i8 %23, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ddc_base.i, align 4
  %27 = trunc i32 %26 to i8
  %conv13.i = add i8 %27, 1
  %28 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %PCIO.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %29, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 %conv13.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %or20.i = or i8 %24, 17
  %30 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PCIO.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %31, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %or20.i) #4, !srcloc !28
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ddc_base.i, align 4
  %36 = trunc i32 %35 to i8
  %conv.i2 = add i8 %36, 1
  %PCIO.i3 = getelementptr inbounds %struct._riva_hw_inst, ptr %33, i32 0, i32 28
  %37 = ptrtoint ptr %PCIO.i3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %PCIO.i3, align 8
  %add.ptr.i4 = getelementptr i8, ptr %38, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4, i8 %conv.i2) #4, !srcloc !28
  %39 = ptrtoint ptr %PCIO.i3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %PCIO.i3, align 8
  %add.ptr4.i5 = getelementptr i8, ptr %40, i32 981
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i5) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %42 = and i8 %41, -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %ddc_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ddc_base.i, align 4
  %45 = trunc i32 %44 to i8
  %conv13.i7 = add i8 %45, 1
  %46 = ptrtoint ptr %PCIO.i3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %PCIO.i3, align 8
  %add.ptr16.i8 = getelementptr i8, ptr %47, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i8, i8 %conv13.i7) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %or20.i9 = or i8 %42, 33
  %48 = ptrtoint ptr %PCIO.i3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PCIO.i3, align 8
  %add.ptr24.i10 = getelementptr i8, ptr %49, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i10, i8 %or20.i9) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 4294960) #4
  %call17 = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %do.body, label %do.end27

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riva_setup_i2c_bus.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@riva_setup_i2c_bus, %if.then21)) #4
          to label %if.end32 [label %if.then21], !srcloc !37

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan, align 8
  %pdev23 = getelementptr inbounds %struct.riva_par, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev23, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @riva_setup_i2c_bus.__UNIQUE_ID_ddebug305, ptr noundef %dev24, ptr noundef nonnull @.str.6, ptr noundef %name) #4
  br label %if.end32

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chan, align 8
  %pdev29 = getelementptr inbounds %struct.riva_par, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev29, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.7, ptr noundef %name) #8
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %chan, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.end27, %if.then21, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @riva_delete_i2c_busses(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 0
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
  %adapter = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 1
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
  %adapter.1 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 1, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter.1) #4
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 2
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
  %adapter.2 = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 2, i32 2
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
define dso_local i32 @riva_probe_i2c_connector(ptr noundef %par, i32 noundef %conn, ptr noundef writeonly %out_edid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 %conn
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adapter = getelementptr %struct.riva_par, ptr %par, i32 0, i32 17, i32 %conn, i32 2
  %call = tail call ptr @fb_ddc_read(ptr noundef %adapter) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edid.0 = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  %tobool4.not = icmp eq ptr %out_edid, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %out_edid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %edid.0, ptr %out_edid, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %edid.0, null
  %. = zext i1 %tobool7.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @riva_gpio_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %ddc_base = getelementptr inbounds %struct.riva_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 1
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !28
  %7 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %PCIO, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 981
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %10 = and i8 %9, -32
  %or = or i8 %10, 16
  %val.0 = select i1 %tobool.not, i8 %10, i8 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ddc_base, align 4
  %13 = trunc i32 %12 to i8
  %conv13 = add i8 %13, 1
  %14 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PCIO, align 8
  %add.ptr16 = getelementptr i8, ptr %15, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %conv13) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %or20 = or i8 %val.0, 1
  %16 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %PCIO, align 8
  %add.ptr24 = getelementptr i8, ptr %17, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %or20) #4, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @riva_gpio_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %ddc_base = getelementptr inbounds %struct.riva_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 1
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !28
  %7 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %PCIO, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 981
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %10 = and i8 %9, -48
  %or = or i8 %10, 32
  %val.0 = select i1 %tobool.not, i8 %10, i8 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ddc_base, align 4
  %13 = trunc i32 %12 to i8
  %conv13 = add i8 %13, 1
  %14 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PCIO, align 8
  %add.ptr16 = getelementptr i8, ptr %15, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %conv13) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %or20 = or i8 %val.0, 1
  %16 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %PCIO, align 8
  %add.ptr24 = getelementptr i8, ptr %17, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %or20) #4, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riva_gpio_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %ddc_base = getelementptr inbounds %struct.riva_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %conv = trunc i32 %3 to i8
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !28
  %6 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %9 = lshr i8 %8, 3
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riva_gpio_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %ddc_base = getelementptr inbounds %struct.riva_i2c_chan, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ddc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddc_base, align 4
  %conv = trunc i32 %3 to i8
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !28
  %6 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %9 = lshr i8 %8, 2
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!1 = !{!"../drivers/video/fbdev/riva/rivafb-i2c.c", i32 135, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/riva/rivafb-i2c.c", i32 136, i32 36}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/riva/rivafb-i2c.c", i32 137, i32 36}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/riva/rivafb-i2c.c", i32 116, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @riva_setup_i2c_bus.__UNIQUE_ID_ddebug305, !7, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/riva/rivafb-i2c.c", i32 118, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @riva_setup_i2c_bus._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @riva_setup_i2c_bus._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2156242906}
!28 = !{i64 4989139}
!29 = !{i64 4989534}
!30 = !{i64 2156243353}
!31 = !{i64 2156243696}
!32 = !{i64 2156244122}
!33 = !{i64 2156241255}
!34 = !{i64 2156241702}
!35 = !{i64 2156242045}
!36 = !{i64 2156242471}
!37 = !{i64 2148955158, i64 2148955163, i64 2148955176, i64 2148955220, i64 2148955254, i64 2148955275}
!38 = !{i64 2156245327}
!39 = !{i64 2156245770}
!40 = !{i64 2156244549}
!41 = !{i64 2156244992}
