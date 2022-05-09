; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-simple.c_pt.bc'
source_filename = "../drivers/reset/reset-simple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+reset_simple_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_reset_simple_ops\09\09\09\09"
module asm "\09.long\09__crc_reset_simple_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_simple_ops\22\09\09\09\09\09"
module asm "__kstrtabns_reset_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_simple_devdata = type { i32, i32, i8, i8 }
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
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@reset_simple_ops = dso_local constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @reset_simple_reset, ptr @reset_simple_assert, ptr @reset_simple_deassert, ptr @reset_simple_status }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_reset_simple_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_simple_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_simple_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_simple_ops to i32), ptr @__kstrtab_reset_simple_ops, ptr @__kstrtabns_reset_simple_ops }, section "___ksymtab_gpl+reset_simple_ops", align 4
@__initcall__kmod_reset_simple__170_204_reset_simple_driver_init6 = internal global ptr @reset_simple_driver_init, section ".initcall6.init", align 4
@reset_simple_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @reset_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @reset_simple_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"simple-reset\00", [19 x i8] zeroinitializer }, align 32
@reset_simple_dt_ids = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,stratix10-rst-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_socfpga }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-clock-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zte,zx296718-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-lpc-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-lpc-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bitmain,bm1880-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-misc-pcie-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-high-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-low-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@reset_simple_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@reset_simple_socfpga = internal constant { %struct.reset_simple_devdata, [20 x i8] } { %struct.reset_simple_devdata { i32 32, i32 256, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@reset_simple_active_low = internal constant { %struct.reset_simple_devdata, [20 x i8] } { %struct.reset_simple_devdata { i32 0, i32 0, i8 1, i8 1 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"reset_simple_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 99, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"reset_simple_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 197, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 200, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"reset_simple_dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 137, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 177, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"reset_simple_socfpga\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 126, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"reset_simple_active_low\00", align 1
@___asan_gen_.24 = private constant [32 x i8] c"../drivers/reset/reset-simple.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 132, i32 42 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_reset_simple__170_204_reset_simple_driver_init6, ptr @__ksymtab_reset_simple_ops, ptr @reset_simple_ops, ptr @reset_simple_driver, ptr @.str, ptr @reset_simple_dt_ids, ptr @reset_simple_probe.__key, ptr @.str.1, ptr @reset_simple_socfpga, ptr @reset_simple_active_low], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_simple_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_simple_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_simple_dt_ids to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_simple_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_simple_socfpga to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_simple_active_low to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_simple_reset(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_us = getelementptr i8, ptr %rcdev, i32 48
  %0 = ptrtoint ptr %reset_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -48
  %rem.i.i = and i32 %id, 31
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #4
  %membase.i.i = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %4 = lshr i32 %id, 3
  %mul7.i.i = and i32 %4, 536870908
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %mul7.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !28
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %active_low.i.i = getelementptr i8, ptr %rcdev, i32 44
  %7 = ptrtoint ptr %active_low.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_low.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %tobool14.not.i.i = icmp eq i8 %8, 1
  %shl15.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %6, %shl15.i.i
  %neg.i.i = xor i32 %shl15.i.i, -1
  %and.i.i = and i32 %6, %neg.i.i
  %reg.0.i.i = select i1 %tobool14.not.i.i, i32 %and.i.i, i32 %or.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #4
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %11, i32 %mul7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %9) #4, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4.i.i) #4
  %12 = ptrtoint ptr %reset_us to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reset_us, align 4
  %mul = shl i32 %13, 1
  tail call void @usleep_range_state(i32 noundef %13, i32 noundef %mul, i32 noundef 2) #4
  %call4.i.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #4
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %15, i32 %mul7.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #4, !srcloc !28
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %18 = ptrtoint ptr %active_low.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active_low.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not.i.i22 = icmp eq i8 %19, 0
  %or.i.i24 = or i32 %17, %shl15.i.i
  %and.i.i26 = and i32 %17, %neg.i.i
  %reg.0.i.i27 = select i1 %tobool14.not.i.i22, i32 %and.i.i26, i32 %or.i.i24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i27) #4
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr21.i.i28 = getelementptr i8, ptr %22, i32 %mul7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i28, i32 %20) #4, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4.i.i17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_simple_assert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rcdev, i32 -48
  %rem.i = and i32 %id, 31
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i.i) #4
  %membase.i = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = lshr i32 %id, 3
  %mul7.i = and i32 %2, 536870908
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul7.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !28
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %active_low.i = getelementptr i8, ptr %rcdev, i32 44
  %5 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active_low.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %tobool14.not.i = icmp eq i8 %6, 1
  %shl15.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %4, %shl15.i
  %neg.i = xor i32 %shl15.i, -1
  %and.i = and i32 %4, %neg.i
  %reg.0.i = select i1 %tobool14.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %9, i32 %mul7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %7) #4, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call4.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_simple_deassert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rcdev, i32 -48
  %rem.i = and i32 %id, 31
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i.i) #4
  %membase.i = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = lshr i32 %id, 3
  %mul7.i = and i32 %2, 536870908
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul7.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !28
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %active_low.i = getelementptr i8, ptr %rcdev, i32 44
  %5 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active_low.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not.i = icmp eq i8 %6, 0
  %shl15.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %4, %shl15.i
  %neg.i = xor i32 %shl15.i, -1
  %and.i = and i32 %4, %neg.i
  %reg.0.i = select i1 %tobool14.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %9, i32 %mul7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %7) #4, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call4.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_simple_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %id, 31
  %membase = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %2 = lshr i32 %id, 3
  %mul2 = and i32 %2, 536870908
  %add.ptr = getelementptr i8, ptr %1, i32 %mul2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = lshr i32 %5, %rem
  %7 = and i32 %6, 1
  %status_active_low = getelementptr i8, ptr %rcdev, i32 45
  %8 = ptrtoint ptr %status_active_low to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status_active_low, align 1, !range !30
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  %xor = xor i32 %7, %11
  ret i32 %xor
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_simple_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @reset_simple_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_simple_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call4 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @reset_simple_probe.__key, i16 noundef signext 3) #4
  %membase10 = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %membase10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %membase10, align 4
  %rcdev = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 2
  %owner = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call3, align 4
  %sub.i = add i32 %4, 1
  %add.i = sub i32 %sub.i, %6
  %mul = shl i32 %add.i, 3
  %nr_resets = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 2, i32 8
  %7 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %nr_resets, align 4
  %8 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @reset_simple_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %of_node15 = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %of_node15, align 4
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %do.body.if.end31_crit_edge, label %if.then17

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then17:                                        ; preds = %do.body
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call, align 4
  %nr_resets19 = getelementptr inbounds %struct.reset_simple_devdata, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %nr_resets19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_resets19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %if.then17.if.end25_crit_edge, label %if.then21

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nr_resets, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then17.if.end25_crit_edge
  %active_low = getelementptr inbounds %struct.reset_simple_devdata, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %active_low to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %active_low, align 4, !range !30
  %active_low27 = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %active_low27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %active_low27, align 4
  %status_active_low = getelementptr inbounds %struct.reset_simple_devdata, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %status_active_low to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status_active_low, align 1, !range !30
  %status_active_low29 = getelementptr inbounds %struct.reset_simple_data, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %status_active_low29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %status_active_low29, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end25, %do.body.if.end31_crit_edge
  %reg_offset.0 = phi i32 [ %13, %if.end25 ], [ 0, %do.body.if.end31_crit_edge ]
  %23 = ptrtoint ptr %membase10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase10, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %reg_offset.0
  store ptr %add.ptr, ptr %membase10, align 4
  %call34 = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then6 ], [ %call34, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @reset_simple_ops, !1, !"reset_simple_ops", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-simple.c", i32 99, i32 32}
!2 = !{ptr @__ksymtab_reset_simple_ops, !3, !"__ksymtab_reset_simple_ops", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-simple.c", i32 105, i32 1}
!4 = !{ptr @__initcall__kmod_reset_simple__170_204_reset_simple_driver_init6, !5, !"__initcall__kmod_reset_simple__170_204_reset_simple_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/reset/reset-simple.c", i32 204, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/reset/reset-simple.c", i32 200, i32 12}
!8 = !{ptr @reset_simple_driver, !9, !"reset_simple_driver", i1 false, i1 false}
!9 = !{!"../drivers/reset/reset-simple.c", i32 197, i32 31}
!10 = !{ptr @reset_simple_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-simple.c", i32 177, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @reset_simple_dt_ids, !14, !"reset_simple_dt_ids", i1 false, i1 false}
!14 = !{!"../drivers/reset/reset-simple.c", i32 137, i32 34}
!15 = !{ptr @reset_simple_socfpga, !16, !"reset_simple_socfpga", i1 false, i1 false}
!16 = !{!"../drivers/reset/reset-simple.c", i32 126, i32 42}
!17 = !{ptr @reset_simple_active_low, !18, !"reset_simple_active_low", i1 false, i1 false}
!18 = !{!"../drivers/reset/reset-simple.c", i32 132, i32 42}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 4782644}
!29 = !{i64 2152514888}
!30 = !{i8 0, i8 2}
!31 = !{i64 2152515279}
!32 = !{i64 4782226}
!33 = !{i64 2152516033}
