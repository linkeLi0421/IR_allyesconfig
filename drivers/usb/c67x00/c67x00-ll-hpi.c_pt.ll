; ModuleID = '/llk/IR_all_yes/drivers/usb/c67x00/c67x00-ll-hpi.c_pt.bc'
source_filename = "../drivers/usb/c67x00/c67x00-ll-hpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.c67x00_hpi = type { ptr, i32, %struct.spinlock, %struct.c67x00_lcp }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.c67x00_lcp = type { %struct.mutex, %struct.completion, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.c67x00_sie = type { %struct.spinlock, ptr, ptr, ptr, i32, i32 }
%struct.c67x00_lcp_int_data = type { [14 x i16] }
%struct.c67x00_device = type { %struct.c67x00_hpi, [2 x %struct.c67x00_sie], ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@c67x00_ll_husb_init_host_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 353, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SIE %d not set to host mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"c67x00_ll_husb_init_host_port\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/c67x00/c67x00-ll-hpi.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c67x00_ll_husb_init_host_port._entry_ptr = internal global ptr @c67x00_ll_husb_init_host_port._entry, section ".printk_index", align 4
@c67x00_ll_write_mem_le16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 410, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Trying to write beyond writable region!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"c67x00_ll_write_mem_le16\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@c67x00_ll_write_mem_le16._entry_ptr = internal global ptr @c67x00_ll_write_mem_le16._entry, section ".printk_index", align 4
@c67x00_ll_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->hpi.lcp.mutex\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 352, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 409, i32 3 }
@___asan_gen_.44 = private constant [38 x i8] c"../drivers/usb/c67x00/c67x00-ll-hpi.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 471, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 87, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @c67x00_ll_husb_init_host_port._entry, ptr @c67x00_ll_husb_init_host_port._entry_ptr, ptr @c67x00_ll_write_mem_le16._entry, ptr @c67x00_ll_write_mem_le16._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @c67x00_ll_init.__key, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_ll_husb_init_host_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_ll_write_mem_le16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_ll_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @c67x00_ll_hpi_status(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %regstep.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regstep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regstep.i, align 4
  %mul.i = mul i32 %4, 3
  %add.ptr.i = getelementptr i8, ptr %2, i32 %mul.i
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i16 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_hpi_reg_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %regstep.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regstep.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i = mul i32 %10, 3
  %add.ptr.i.i16 = getelementptr i8, ptr %8, i32 %mul.i.i
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i14) #6
  %call2.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i = shl i32 %16, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 0) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i18) #6
  %call2.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #6
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i22 = shl i32 %24, 1
  %add.ptr.i.i.i23 = getelementptr i8, ptr %22, i32 %mul.i.i.i22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i23, i16 324) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 0) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i20) #6
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i27 = shl i32 %32, 1
  %add.ptr.i.i.i28 = getelementptr i8, ptr %30, i32 %mul.i.i.i27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i28, i16 324) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #6
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i25) #6
  %call2.i20.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i22.1 = shl i32 %41, 1
  %add.ptr.i.i.i23.1 = getelementptr i8, ptr %39, i32 %mul.i.i.i22.1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i23.1, i16 328) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #6
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 0) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i20.1) #6
  %call2.i25.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #6
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i27.1 = shl i32 %49, 1
  %add.ptr.i.i.i28.1 = getelementptr i8, ptr %47, i32 %mul.i.i.i27.1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i28.1, i16 328) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #6
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i25.1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_hpi_enable_sofeop(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 2048, i16 8192
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  %or15.i = or i16 %12, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i17.i = shl i32 %17, 1
  %add.ptr.i.i18.i = getelementptr i8, ptr %15, i32 %mul.i.i17.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %or15.i) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_hpi_disable_sofeop(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  %neg.i = select i1 %tobool.not, i16 -2049, i16 -8193
  %and.i = and i16 %12, %neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i2.i = shl i32 %17, 1
  %add.ptr.i.i3.i = getelementptr i8, ptr %15, i32 %mul.i.i2.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i3.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %and.i) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @c67x00_ll_fetch_siemsg(ptr noundef %dev, i32 noundef %sie_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sie_num)
  %tobool.not = icmp eq i32 %sie_num, 0
  %conv = select i1 %tobool.not, i16 324, i16 328
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %4, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %call2.i7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i9 = shl i32 %13, 1
  %add.ptr.i.i.i10 = getelementptr i8, ptr %11, i32 %mul.i.i.i9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i10, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 0) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i7) #6
  ret i16 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @c67x00_ll_get_usb_ctl(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 -16246, i16 -16214
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret i16 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_usb_clear_status(ptr nocapture noundef readonly %sie, i16 noundef zeroext %bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 -16240, i16 -16208
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %bits) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @c67x00_ll_usb_get_status(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 -16240, i16 -16208
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret i16 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_set_husb_eot(ptr noundef %dev, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lcp = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lcp, i32 noundef 0) #6
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %4, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 436) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %value) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  tail call void @mutex_unlock(ptr noundef %lcp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_husb_reset(ptr nocapture noundef readonly %sie, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.c67x00_lcp_int_data, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %data) #6
  %2 = getelementptr inbounds [14 x i16], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %data, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 50, ptr %data, align 2
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %6 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sie_num, align 4
  %shl = shl i32 %7, 1
  %or = or i32 %shl, %port
  %conv = trunc i32 %or to i16
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %2, align 2
  %call = call fastcc i32 @c67x00_comm_exec_int(ptr noundef %1, i16 noundef zeroext 116, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end11, label %do.body6, !prof !31

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/c67x00/c67x00-ll-hpi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c67x00_comm_exec_int(ptr noundef %dev, i16 noundef zeroext %nr, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lcp = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lcp, i32 noundef 0) #6
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %4, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 450) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %nr) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.020 to i16
  %8 = shl i16 %i.0.tr, 1
  %conv = add i16 %8, 452
  %arrayidx = getelementptr [14 x i16], ptr %data, i32 0, i32 %i.020
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i16 = shl i32 %15, 1
  %add.ptr.i.i.i17 = getelementptr i8, ptr %13, i32 %mul.i.i.i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i17, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %10) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i14) #6
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %call2.i19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regstep.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -12799) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i19) #6
  %msg_received.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3, i32 1
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_received.i, i32 noundef 500) #6
  %conv.i = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %for.end.ll_recv_msg.exit_crit_edge, !prof !33

for.end.ll_recv_msg.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ll_recv_msg.exit

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #6
  br label %ll_recv_msg.exit

ll_recv_msg.exit:                                 ; preds = %do.end.i, %for.end.ll_recv_msg.exit_crit_edge
  %conv21.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21.i)
  %cmp.i = icmp eq i32 %conv21.i, 0
  %cond.i = select i1 %cmp.i, i32 -5, i32 0
  tail call void @mutex_unlock(ptr noundef %lcp) #6
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_husb_set_current_td(ptr nocapture noundef readonly %sie, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 432, i16 434
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %addr) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @c67x00_ll_husb_get_current_td(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 432, i16 434
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret i16 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @c67x00_ll_husb_get_frame(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 -16234, i16 -16202
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret i16 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_husb_init_host_port(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.c67x00_lcp_int_data, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 -16246, i16 -16214
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !29
  %or15.i = or i16 %12, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i17.i = shl i32 %17, 1
  %add.ptr.i.i18.i = getelementptr i8, ptr %15, i32 %mul.i.i17.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18.i, i16 %conv) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %or15.i) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %data.i) #6
  %23 = call ptr @memset(ptr %data.i, i32 255, i32 28)
  %24 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %conv.i = select i1 %tobool.not.i, i16 114, i16 115
  %call.i = call fastcc i32 @c67x00_comm_exec_int(ptr noundef %22, i16 noundef zeroext %conv.i, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %c67x00_ll_husb_sie_init.exit, label %do.body5.i, !prof !31

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/c67x00/c67x00-ll-hpi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 313, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

c67x00_ll_husb_sie_init.exit:                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %data.i) #6
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i19 = icmp eq i32 %29, 0
  %conv.i20 = select i1 %tobool.not.i19, i16 -16240, i16 -16208
  %lock.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %27, i32 0, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %27, align 4
  %regstep.i.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %regstep.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regstep.i.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %34, 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 %mul.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 %conv.i20) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #6
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 765) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #6
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not = icmp eq i32 %41, 0
  %conv5 = select i1 %tobool3.not, i16 -16246, i16 -16214
  %lock.i21 = getelementptr inbounds %struct.c67x00_hpi, ptr %39, i32 0, i32 2
  %call2.i22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i21) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #6
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %39, align 4
  %regstep.i.i.i23 = getelementptr inbounds %struct.c67x00_hpi, ptr %39, i32 0, i32 1
  %45 = ptrtoint ptr %regstep.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regstep.i.i.i23, align 4
  %mul.i.i.i24 = shl i32 %46, 1
  %add.ptr.i.i.i25 = getelementptr i8, ptr %44, i32 %mul.i.i.i24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i25, i16 %conv5) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #6
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %39, align 4
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %49) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i21, i32 noundef %call2.i22) #6
  %51 = and i16 %50, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool7.not = icmp eq i16 %51, 0
  br i1 %tobool7.not, label %do.end, label %c67x00_ll_husb_sie_init.exit.if.end_crit_edge

c67x00_ll_husb_sie_init.exit.if.end_crit_edge:    ; preds = %c67x00_ll_husb_sie_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %c67x00_ll_husb_sie_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.c67x00_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sie_num, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str, i32 noundef %57) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %c67x00_ll_husb_sie_init.exit.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_husb_reset_port(ptr nocapture noundef readonly %sie, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  %conv = select i1 %tobool.not, i16 16, i16 32
  %dev.i = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %sie_num.i = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %2 = ptrtoint ptr %sie_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sie_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %conv.i = select i1 %tobool.not.i, i16 -16240, i16 -16208
  %lock.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %regstep.i.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regstep.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regstep.i.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %8, 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 %conv.i) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %conv) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #6
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %sie_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sie_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  %conv3 = select i1 %tobool1.not, i16 1024, i16 4096
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %13, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %20, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %13, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #6, !srcloc !29
  %or15.i = or i16 %24, %conv3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %13, align 4
  %28 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i17.i = shl i32 %29, 1
  %add.ptr.i.i18.i = getelementptr i8, ptr %27, i32 %mul.i.i17.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18.i, i16 322) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %or15.i) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %sie_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sie_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool6.not = icmp eq i32 %36, 0
  %conv8 = select i1 %tobool6.not, i16 -16244, i16 -16212
  %lock.i24 = getelementptr inbounds %struct.c67x00_hpi, ptr %34, i32 0, i32 2
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 4
  %regstep.i.i.i26 = getelementptr inbounds %struct.c67x00_hpi, ptr %34, i32 0, i32 1
  %40 = ptrtoint ptr %regstep.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regstep.i.i.i26, align 4
  %mul.i.i.i27 = shl i32 %41, 1
  %add.ptr.i.i.i28 = getelementptr i8, ptr %39, i32 %mul.i.i.i27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i28, i16 %conv8) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #6
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %34, align 4
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #6, !srcloc !29
  %or15.i29 = or i16 %45, 513
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %34, align 4
  %49 = ptrtoint ptr %regstep.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regstep.i.i.i26, align 4
  %mul.i.i17.i30 = shl i32 %50, 1
  %add.ptr.i.i18.i31 = getelementptr i8, ptr %48, i32 %mul.i.i17.i30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18.i31, i16 %conv8) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #6
  %52 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 %or15.i29) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i24, i32 noundef %call2.i25) #6
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %56 = ptrtoint ptr %sie_num.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sie_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool11.not = icmp eq i32 %57, 0
  %conv13 = select i1 %tobool11.not, i16 -16246, i16 -16214
  %conv16 = select i1 %tobool.not, i16 128, i16 256
  %lock.i32 = getelementptr inbounds %struct.c67x00_hpi, ptr %55, i32 0, i32 2
  %call2.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #6
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %55, align 4
  %regstep.i.i.i34 = getelementptr inbounds %struct.c67x00_hpi, ptr %55, i32 0, i32 1
  %61 = ptrtoint ptr %regstep.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %regstep.i.i.i34, align 4
  %mul.i.i.i35 = shl i32 %62, 1
  %add.ptr.i.i.i36 = getelementptr i8, ptr %60, i32 %mul.i.i.i35
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i36, i16 %conv13) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #6
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %55, align 4
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #6, !srcloc !29
  %or15.i37 = or i16 %66, %conv16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #6
  %68 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %55, align 4
  %70 = ptrtoint ptr %regstep.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %regstep.i.i.i34, align 4
  %mul.i.i17.i38 = shl i32 %71, 1
  %add.ptr.i.i18.i39 = getelementptr i8, ptr %69, i32 %mul.i.i17.i38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18.i39, i16 %conv13) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #6
  %73 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 %or15.i37) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i32, i32 noundef %call2.i33) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_irq(ptr noundef %dev, i16 noundef zeroext %int_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %int_status, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp = icmp eq i16 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %regstep.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regstep.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %last_msg = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %last_msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %last_msg, align 4
  %msg_received = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3, i32 1
  tail call void @complete(ptr noundef %msg_received) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c67x00_ll_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lcp = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lcp, i32 noundef 0) #6
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %regstep.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regstep.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -1456) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %msg_received.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3, i32 1
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_received.i, i32 noundef 500) #6
  %conv.i = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.ll_recv_msg.exit_crit_edge, !prof !33

entry.ll_recv_msg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ll_recv_msg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #6
  br label %ll_recv_msg.exit

ll_recv_msg.exit:                                 ; preds = %do.end.i, %entry.ll_recv_msg.exit_crit_edge
  %conv21.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21.i)
  %cmp.i = icmp eq i32 %conv21.i, 0
  %cond.i = select i1 %cmp.i, i32 -5, i32 0
  tail call void @mutex_unlock(ptr noundef %lcp) #6
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_write_mem_le16(ptr noundef %dev, i16 noundef zeroext %addr, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %add = add i32 %conv, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp = icmp sgt i32 %add, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.c67x00_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i16 %addr, -1
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %6, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %sub) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %11 = and i16 %10, 255
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %conv9 = zext i8 %13 to i16
  %shl = shl nuw i16 %conv9, 8
  %or = or i16 %shl, %11
  %call2.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i59 = shl i32 %18, 1
  %add.ptr.i.i.i60 = getelementptr i8, ptr %16, i32 %mul.i.i.i59
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i60, i16 %sub) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %or) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i57) #6
  %inc = add i16 %addr, 1
  %dec = add i32 %len, -1
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.end.if.end14_crit_edge
  %buf.0 = phi ptr [ %incdec.ptr, %if.then4 ], [ %data, %if.end.if.end14_crit_edge ]
  %len.addr.0 = phi i32 [ %dec, %if.then4 ], [ %len, %if.end.if.end14_crit_edge ]
  %addr.addr.0 = phi i16 [ %inc, %if.then4 ], [ %addr, %if.end.if.end14_crit_edge ]
  %div = sdiv i32 %len.addr.0, 2
  %conv15 = trunc i32 %div to i16
  %lock.i61 = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %regstep.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %25 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i = shl i32 %26, 1
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %mul.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %addr.addr.0) #6, !srcloc !30
  %conv5.i = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv15)
  %cmp615.not.i = icmp eq i16 %conv15, 0
  br i1 %cmp615.not.i, label %if.end14.hpi_write_words_le16.exit_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.hpi_write_words_le16.exit_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpi_write_words_le16.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %data.addr.017.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf.0, %if.end14.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %data.addr.017.i, i32 1
  %27 = ptrtoint ptr %data.addr.017.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data.addr.017.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %29) #6, !srcloc !30
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv5.i
  br i1 %exitcond.not.i, label %for.body.i.hpi_write_words_le16.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.hpi_write_words_le16.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpi_write_words_le16.exit

hpi_write_words_le16.exit:                        ; preds = %for.body.i.hpi_write_words_le16.exit_crit_edge, %if.end14.hpi_write_words_le16.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61, i32 noundef %call2.i62) #6
  %and21 = and i32 %len.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %hpi_write_words_le16.exit.cleanup_crit_edge, label %if.then23

hpi_write_words_le16.exit.cleanup_crit_edge:      ; preds = %hpi_write_words_le16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %hpi_write_words_le16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and16 = and i32 %len.addr.0, -2
  %33 = trunc i32 %and16 to i16
  %conv20 = add i16 %addr.addr.0, %33
  %add.ptr = getelementptr i8, ptr %buf.0, i32 %and16
  %call2.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #6
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i66 = shl i32 %38, 1
  %add.ptr.i.i.i67 = getelementptr i8, ptr %36, i32 %mul.i.i.i66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i67, i16 %conv20) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #6
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61, i32 noundef %call2.i64) #6
  %43 = and i16 %42, -256
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr, align 1
  %conv28 = zext i8 %45 to i16
  %or29 = or i16 %43, %conv28
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i71 = shl i32 %50, 1
  %add.ptr.i.i.i72 = getelementptr i8, ptr %48, i32 %mul.i.i.i71
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i72, i16 %conv20) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #6
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 %or29) #6, !srcloc !30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61, i32 noundef %call2.i69) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %hpi_write_words_le16.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_read_mem_le16(ptr noundef %dev, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i16 %addr, -1
  %lock.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %regstep.i.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %regstep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regstep.i.i.i, align 4
  %mul.i.i.i = shl i32 %5, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %mul.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %sub) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %10 = lshr i16 %9, 8
  %conv5 = trunc i16 %10 to i8
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %data, align 1
  %inc = add i16 %addr, 1
  %dec = add i32 %len, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf.0 = phi ptr [ %incdec.ptr, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %len.addr.0 = phi i32 [ %dec, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %addr.addr.0 = phi i16 [ %inc, %if.then ], [ %addr, %entry.if.end_crit_edge ]
  %div = sdiv i32 %len.addr.0, 2
  %conv6 = trunc i32 %div to i16
  %lock.i35 = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 2
  %call2.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i35) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %regstep.i.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i = shl i32 %16, 1
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %mul.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %addr.addr.0) #6, !srcloc !30
  %conv5.i = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6)
  %cmp616.not.i = icmp eq i16 %conv6, 0
  br i1 %cmp616.not.i, label %if.end.hpi_read_words_le16.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.hpi_read_words_le16.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpi_read_words_le16.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %data.addr.018.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf.0, %if.end.for.body.i_crit_edge ]
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #6, !srcloc !29
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  %incdec.ptr.i = getelementptr i16, ptr %data.addr.018.i, i32 1
  %22 = ptrtoint ptr %data.addr.018.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %data.addr.018.i, align 2
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv5.i
  br i1 %exitcond.not.i, label %for.body.i.hpi_read_words_le16.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.hpi_read_words_le16.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpi_read_words_le16.exit

hpi_read_words_le16.exit:                         ; preds = %for.body.i.hpi_read_words_le16.exit_crit_edge, %if.end.hpi_read_words_le16.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i35, i32 noundef %call2.i36) #6
  %and11 = and i32 %len.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %hpi_read_words_le16.exit.if.end19_crit_edge, label %if.then13

hpi_read_words_le16.exit.if.end19_crit_edge:      ; preds = %hpi_read_words_le16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %hpi_read_words_le16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and7 = and i32 %len.addr.0, -2
  %23 = trunc i32 %and7 to i16
  %conv10 = add i16 %addr.addr.0, %23
  %add.ptr = getelementptr i8, ptr %buf.0, i32 %and7
  %call2.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i35) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #6
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %regstep.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regstep.i.i, align 4
  %mul.i.i.i40 = shl i32 %28, 1
  %add.ptr.i.i.i41 = getelementptr i8, ptr %26, i32 %mul.i.i.i40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i41, i16 %conv10) #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #6, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i35, i32 noundef %call2.i38) #6
  %conv18 = trunc i16 %32 to i8
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv18, ptr %add.ptr, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %hpi_read_words_le16.exit.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_ll_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lcp = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lcp, ptr noundef nonnull @.str.8, ptr noundef nonnull @c67x00_ll_init.__key) #6
  %msg_received = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %msg_received to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %msg_received, align 4
  %wait.i = getelementptr inbounds %struct.c67x00_hpi, ptr %dev, i32 0, i32 3, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @c67x00_ll_release(ptr nocapture noundef %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/c67x00/c67x00-ll-hpi.c", i32 352, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @c67x00_ll_husb_init_host_port._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @c67x00_ll_husb_init_host_port._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/c67x00/c67x00-ll-hpi.c", i32 409, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @c67x00_ll_write_mem_le16._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @c67x00_ll_write_mem_le16._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @c67x00_ll_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/c67x00/c67x00-ll-hpi.c", i32 471, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @init_completion.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/completion.h", i32 87, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2985365}
!30 = !{i64 2985165}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2152377882, i64 2152378381, i64 2152377919, i64 2152377975, i64 2152378009, i64 2152378033, i64 2152378074, i64 2152378095, i64 2152378123, i64 2152378157}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2152376270, i64 2152376769, i64 2152376307, i64 2152376363, i64 2152376397, i64 2152376421, i64 2152376462, i64 2152376483, i64 2152376511, i64 2152376545}
