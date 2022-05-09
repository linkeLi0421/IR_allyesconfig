; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-gpio.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.96, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"solo6x10_gpio\00", [18 x i8] zeroinitializer }, align 32
@solo_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@solo_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 162, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.8 = private constant [46 x i8] c"../drivers/media/pci/solo6x10/solo6x10-gpio.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 175, i32 8 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @solo_gpio_init.lock_key, ptr @solo_gpio_init.request_key], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_gpio_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @solo_gpio_config(ptr noundef %solo_dev)
  %gpio_dev = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11
  %0 = ptrtoint ptr %gpio_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %gpio_dev, align 8
  %1 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %parent = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %owner = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 8
  %base = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 19
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %ngpio, align 8
  %can_sleep = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 23
  %7 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %can_sleep, align 8
  %get_direction = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 7
  %8 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @solo_gpiochip_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 8
  %9 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @solo_gpiochip_direction_input, ptr %direction_input, align 8
  %direction_output = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 9
  %10 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @solo_gpiochip_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 10
  %11 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @solo_gpiochip_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11, i32 12
  %12 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @solo_gpiochip_set, ptr %set, align 8
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_dev, ptr noundef %solo_dev, ptr noundef nonnull @solo_gpio_init.lock_key, ptr noundef nonnull @solo_gpio_init.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %gpio_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %gpio_dev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_gpio_config(ptr nocapture noundef readonly %solo_dev) unnamed_addr #0 align 64 {
entry:
  %val.i.i12 = alloca i16, align 2
  %val.i.i7 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @solo_gpio_mode(ptr noundef %solo_dev, i32 noundef 48, i32 noundef 1)
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2824
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %3 = and i32 %2, -805306369
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i.i, align 2, !annotation !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %3) #5, !srcloc !18
  %7 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 21474800) #5
  %10 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %11, i32 2824
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #5, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %13 = or i32 %12, 805306368
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i7) #5
  %14 = ptrtoint ptr %val.i.i7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %val.i.i7, align 2, !annotation !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i3.i10 = getelementptr i8, ptr %16, i32 2824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i10, i32 %13) #5, !srcloc !18
  %17 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %solo_dev, align 8
  %call.i.i11 = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 6, ptr noundef nonnull %val.i.i7) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i7) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 21474800) #5
  call fastcc void @solo_gpio_mode(ptr noundef %solo_dev, i32 noundef 15, i32 noundef 2)
  call fastcc void @solo_gpio_mode(ptr noundef %solo_dev, i32 noundef 65280, i32 noundef 1)
  %20 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %21, i32 2824
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #5, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %23 = and i32 %22, -16711681
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i12) #5
  %24 = ptrtoint ptr %val.i.i12 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %val.i.i12, align 2, !annotation !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i3.i16 = getelementptr i8, ptr %26, i32 2824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i16, i32 %23) #5, !srcloc !18
  %27 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %solo_dev, align 8
  %call.i.i17 = call i32 @pci_read_config_word(ptr noundef %28, i32 noundef 6, ptr noundef nonnull %val.i.i12) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i12) #5
  call fastcc void @solo_gpio_mode(ptr noundef %solo_dev, i32 noundef -65536, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_gpiochip_get_direction(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %cmp = icmp ult i32 %offset, 8
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 2816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %add = shl nuw nsw i32 %offset, 1
  %mul = add nuw nsw i32 %add, 16
  %shr = ashr i32 %3, %mul
  %and = and i32 %shr, 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i22 = getelementptr i8, ptr %1, i32 2820
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #5, !srcloc !14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %sub = add i32 %offset, -8
  %shr318 = lshr i32 %5, %sub
  %and4 = and i32 %shr318, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mode.0 = phi i32 [ %and, %if.then ], [ %and4, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %switch.selectcmp = icmp ne i32 %mode.0, 1
  %switch.select = sext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.0)
  %switch.selectcmp19 = icmp eq i32 %mode.0, 0
  %switch.select20 = select i1 %switch.selectcmp19, i32 1, i32 %switch.select
  ret i32 %switch.select20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_gpiochip_direction_input(ptr nocapture noundef readnone %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_gpiochip_direction_output(ptr nocapture noundef readnone %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_gpiochip_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2828
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %add = add i32 %offset, 8
  %shr2 = lshr i32 %3, %add
  %and = and i32 %shr2, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_gpiochip_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  %val.i.i5 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %add1 = add i32 %offset, 8
  %shl2 = shl nuw i32 1, %add1
  %reg_base.i.i6 = getelementptr inbounds %struct.solo_dev, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i.i6, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %1, i32 2824
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %3, %shl2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i.i, align 2, !annotation !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %6 = ptrtoint ptr %reg_base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i.i6, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %5) #5, !srcloc !18
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = xor i32 %shl2, -1
  %and.i = and i32 %3, %neg.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i5) #5
  %10 = ptrtoint ptr %val.i.i5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i.i5, align 2, !annotation !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %12 = ptrtoint ptr %reg_base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i6, align 4
  %add.ptr.i3.i8 = getelementptr i8, ptr %13, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i8, i32 %11) #5, !srcloc !18
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 8
  %call.i.i9 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %val.i.i5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i5) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_gpio_exit(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_dev = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 11
  %0 = ptrtoint ptr %gpio_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiochip_remove(ptr noundef %gpio_dev) #5
  %2 = ptrtoint ptr %gpio_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gpio_dev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %3 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2824
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %6 = and i32 %5, -805306369
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i.i, align 2, !annotation !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %9, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %6) #5, !srcloc !18
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  call fastcc void @solo_gpio_config(ptr noundef %solo_dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_gpio_mode(ptr nocapture noundef readonly %solo_dev, i32 noundef %port_mask, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val.i52 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %and4 = and i32 %mode, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ret.058 = phi i32 [ %3, %entry ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %port.056 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %port.056
  %and = and i32 %shl, %port_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl1 = shl nuw i32 %port.056, 1
  %shl2 = shl i32 3, %shl1
  %neg = xor i32 %shl2, -1
  %and3 = and i32 %ret.058, %neg
  %shl6 = shl i32 %and4, %shl1
  %or = or i32 %and3, %shl6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %or, %if.end ], [ %ret.058, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %port.056, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i, align 2, !annotation !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %ret.1) #5
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %7, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %5) #5, !srcloc !18
  %8 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %11, i32 2820
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #5, !srcloc !14
  %13 = call i32 @llvm.bswap.i32(i32 %12) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool16.not = icmp eq i32 %mode, 0
  br label %for.body10

for.body10:                                       ; preds = %for.inc24.for.body10_crit_edge, %for.end
  %ret.261 = phi i32 [ %13, %for.end ], [ %ret.3, %for.inc24.for.body10_crit_edge ]
  %port.159 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24.for.body10_crit_edge ]
  %shl11 = shl i32 65536, %port.159
  %and12 = and i32 %shl11, %port_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body10.for.inc24_crit_edge, label %if.end15

for.body10.for.inc24_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

if.end15:                                         ; preds = %for.body10
  %shl18 = shl nuw nsw i32 1, %port.159
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %neg19 = xor i32 %shl18, -1
  %and20 = and i32 %ret.261, %neg19
  br label %for.inc24

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %or22 = or i32 %ret.261, %shl18
  br label %for.inc24

for.inc24:                                        ; preds = %if.else, %if.then17, %for.body10.for.inc24_crit_edge
  %ret.3 = phi i32 [ %or22, %if.else ], [ %and20, %if.then17 ], [ %ret.261, %for.body10.for.inc24_crit_edge ]
  %inc25 = add nuw nsw i32 %port.159, 1
  %exitcond62.not = icmp eq i32 %inc25, 16
  br i1 %exitcond62.not, label %for.end26, label %for.inc24.for.body10_crit_edge

for.inc24.for.body10_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10

for.end26:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  %or27 = or i32 %ret.3, -65536
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i52) #5
  %14 = ptrtoint ptr %val.i52 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %val.i52, align 2, !annotation !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %15 = call i32 @llvm.bswap.i32(i32 %or27) #5
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %17, i32 2820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %15) #5, !srcloc !18
  %18 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %solo_dev, align 8
  %call.i55 = call i32 @pci_read_config_word(ptr noundef %19, i32 noundef 6, ptr noundef nonnull %val.i52) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i52) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-gpio.c", i32 162, i32 29}
!2 = !{ptr @solo_gpio_init.lock_key, !3, !"lock_key", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/solo6x10/solo6x10-gpio.c", i32 175, i32 8}
!4 = !{ptr @solo_gpio_init.request_key, !3, !"request_key", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 5729810}
!15 = !{i64 2156752252}
!16 = !{!"auto-init"}
!17 = !{i64 2156752643}
!18 = !{i64 5729392}
