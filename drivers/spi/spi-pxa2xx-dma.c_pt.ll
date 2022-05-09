; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-pxa2xx-dma.c_pt.bc'
source_filename = "../drivers/spi/spi-pxa2xx-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.driver_data = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.chip_data = type { i32, i32, i32, i8, i32, i32, i32, i16, i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.pxa2xx_spi_controller = type { i16, i8, i8, i8, ptr, ptr, ptr, %struct.ssp_device }
%struct.pxa2xx_spi_chip = type { i8, i8, i8, i8, i32, i32 }

@pxa2xx_spi_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO overrun\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxa2xx_spi_dma_transfer\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spi/spi-pxa2xx-dma.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa2xx_spi_dma_transfer._entry_ptr = internal global ptr @pxa2xx_spi_dma_transfer._entry, section ".printk_index", align 4
@pxa2xx_spi_dma_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get DMA TX descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pxa2xx_spi_dma_prepare\00", [41 x i8] zeroinitializer }, align 32
@pxa2xx_spi_dma_prepare._entry_ptr = internal global ptr @pxa2xx_spi_dma_prepare._entry, section ".printk_index", align 4
@pxa2xx_spi_dma_prepare._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get DMA RX descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa2xx_spi_dma_prepare._entry_ptr.9 = internal global ptr @pxa2xx_spi_dma_prepare._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@pxa2xx_spi_dma_prepare_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 107, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA slave config failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pxa2xx_spi_dma_prepare_one\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pxa2xx_spi_dma_prepare_one._entry_ptr = internal global ptr @pxa2xx_spi_dma_prepare_one._entry, section ".printk_index", align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 121, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 141, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 148, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 193, i32 46 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 198, i32 46 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private constant [32 x i8] c"../drivers/spi/spi-pxa2xx-dma.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 107, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1169, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @pxa2xx_spi_dma_prepare._entry, ptr @pxa2xx_spi_dma_prepare._entry.7, ptr @pxa2xx_spi_dma_prepare._entry_ptr, ptr @pxa2xx_spi_dma_prepare._entry_ptr.9, ptr @pxa2xx_spi_dma_prepare_one._entry, ptr @pxa2xx_spi_dma_prepare_one._entry_ptr, ptr @pxa2xx_spi_dma_transfer._entry, ptr @pxa2xx_spi_dma_transfer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_dma_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_dma_prepare._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_dma_prepare_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_spi_dma_transfer(ptr noundef %drv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_sr = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 7
  %0 = ptrtoint ptr %mask_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask_sr, align 4
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !38
  %and.i = and i32 %1, 128
  %and = and i32 %and.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str) #9
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 61
  %13 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_rx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

do.end.dmaengine_terminate_async.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %18(ptr noundef %14) #6
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %do.end.dmaengine_terminate_async.exit_crit_edge
  %19 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %controller, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 60
  %21 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_tx, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %device_terminate_all.i9 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %device_terminate_all.i9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_terminate_all.i9, align 4
  %tobool.not.i10 = icmp eq ptr %26, null
  br i1 %tobool.not.i10, label %dmaengine_terminate_async.exit.dmaengine_terminate_async.exit14_crit_edge, label %if.then.i12

dmaengine_terminate_async.exit.dmaengine_terminate_async.exit14_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_async.exit14

if.then.i12:                                      ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i11 = tail call i32 %26(ptr noundef %22) #6
  br label %dmaengine_terminate_async.exit14

dmaengine_terminate_async.exit14:                 ; preds = %if.then.i12, %dmaengine_terminate_async.exit.dmaengine_terminate_async.exit14_crit_edge
  tail call fastcc void @pxa2xx_spi_dma_transfer_complete(ptr noundef %drv_data, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_async.exit14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %dmaengine_terminate_async.exit14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa2xx_spi_dma_transfer_complete(ptr noundef %drv_data, i1 noundef zeroext %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %dma_running = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_running, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %dma_running, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_running, ptr %dma_running, i32 1, ptr elementtype(i32) %dma_running) #6, !srcloc !40
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  br i1 %error, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %mask_sr = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 7
  %5 = ptrtoint ptr %mask_sr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask_sr, align 4
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !38
  %and.i = and i32 %6, 128
  %12 = and i32 %and.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %extract.t26 = icmp ne i32 %12, 0
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %error.addr.0.off0 = phi i1 [ true, %if.then.if.end_crit_edge ], [ %extract.t26, %if.then1 ]
  %dma_cr1 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 4
  %13 = ptrtoint ptr %dma_cr1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_cr1, align 4
  %15 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i27 = getelementptr inbounds %struct.ssp_device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %mmio_base.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base.i.i.i27, align 4
  %add.ptr.i.i.i28 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28) #6, !srcloc !38
  %neg.i = xor i32 %14, -1
  %and.i29 = and i32 %19, %neg.i
  %20 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i2.i = getelementptr inbounds %struct.ssp_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %mmio_base.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i.i2.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3.i, i32 %and.i29) #6, !srcloc !42
  %clear_sr = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 6
  %24 = ptrtoint ptr %clear_sr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clear_sr, align 4
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %26 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ssp_type.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end.write_SSSR_CS.exit_crit_edge [
    i32 8, label %if.end.if.then.i_crit_edge
    i32 10, label %if.end.if.then.i_crit_edge37
  ]

if.end.if.then.i_crit_edge37:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.write_SSSR_CS.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_SSSR_CS.exit

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge37
  %29 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !38
  %and.i.i = and i32 %33, 3
  %or.i = or i32 %and.i.i, %25
  br label %write_SSSR_CS.exit

write_SSSR_CS.exit:                               ; preds = %if.then.i, %if.end.write_SSSR_CS.exit_crit_edge
  %val.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %25, %if.end.write_SSSR_CS.exit_crit_edge ]
  %34 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i30 = getelementptr inbounds %struct.ssp_device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %mmio_base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_base.i.i.i30, align 4
  %add.ptr.i.i.i31 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i31, i32 %val.addr.0.i) #6, !srcloc !42
  %38 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ssp_type.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %39, label %if.then7 [
    i32 1, label %write_SSSR_CS.exit.if.end8_crit_edge
    i32 8, label %write_SSSR_CS.exit.if.end8_crit_edge38
    i32 10, label %write_SSSR_CS.exit.if.end8_crit_edge39
  ]

write_SSSR_CS.exit.if.end8_crit_edge39:           ; preds = %write_SSSR_CS.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

write_SSSR_CS.exit.if.end8_crit_edge38:           ; preds = %write_SSSR_CS.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

write_SSSR_CS.exit.if.end8_crit_edge:             ; preds = %write_SSSR_CS.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %write_SSSR_CS.exit
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !42
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %write_SSSR_CS.exit.if.end8_crit_edge, %write_SSSR_CS.exit.if.end8_crit_edge38, %write_SSSR_CS.exit.if.end8_crit_edge39
  br i1 %error.addr.0.off0, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i33 = getelementptr inbounds %struct.ssp_device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %mmio_base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio_base.i.i33, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !38
  %and.i34 = and i32 %49, -129
  %50 = ptrtoint ptr %mmio_base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base.i.i33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %and.i34) #6, !srcloc !42
  %status = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 7
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -5, ptr %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %53 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %controller, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %54) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_spi_dma_prepare(ptr noundef %drv_data, ptr nocapture noundef readonly %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pxa2xx_spi_dma_prepare_one(ptr noundef %drv_data, i32 noundef 1, ptr noundef %xfer)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @pxa2xx_spi_dma_prepare_one(ptr noundef %drv_data, i32 noundef 2, ptr noundef %xfer)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #9
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 60
  %10 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_tx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end6.cleanup_crit_edge, label %if.then.i

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %15(ptr noundef %11) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 6
  %16 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pxa2xx_spi_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 8
  %17 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %drv_data, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 4
  %18 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_submit.i, align 4
  %call.i25 = tail call i32 %19(ptr noundef nonnull %call1) #6
  %tx_submit.i26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %tx_submit.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_submit.i26, align 4
  %call.i27 = tail call i32 %21(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.i, %do.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -16, %do.end ], [ -16, %do.end6.cleanup_crit_edge ], [ -16, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pxa2xx_spi_dma_prepare_one(ptr nocapture noundef readonly %drv_data, i32 noundef %dir, ptr nocapture noundef readonly %xfer) unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %spi = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller_state.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #6
  %n_bytes = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 13
  %8 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch.selectcmp = icmp eq i8 %9, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %switch.selectcmp32 = icmp eq i8 %9, 1
  %switch.select33 = select i1 %switch.selectcmp32, i32 1, i32 %switch.select
  %10 = getelementptr inbounds i8, ptr %cfg, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 44)
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dir, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %phys_base = getelementptr inbounds %struct.ssp_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys_base, align 4
  %add = add i32 %16, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %17 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %18 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.select33, ptr %dst_addr_width, align 4
  %dma_burst_size = getelementptr inbounds %struct.chip_data, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_burst_size, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %21 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dst_maxburst, align 4
  %tx_sg = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %22 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %23 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.select33, ptr %src_addr_width, align 4
  %dma_burst_size7 = getelementptr inbounds %struct.chip_data, ptr %7, i32 0, i32 4
  %24 = ptrtoint ptr %dma_burst_size7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_burst_size7, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %26 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %src_maxburst, align 4
  %rx_sg = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chan.0.in = phi ptr [ %dma_tx, %if.then ], [ %dma_rx, %if.else ]
  %sgt.0 = phi ptr [ %tx_sg, %if.then ], [ %rx_sg, %if.else ]
  %27 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %28 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan.0, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %dmaengine_slave_config.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.end
  %call.i = call i32 %31(ptr noundef %chan.0, ptr noundef nonnull %cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %dmaengine_slave_config.exit.do.end_crit_edge

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %32 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv_data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end12:                                         ; preds = %dmaengine_slave_config.exit
  %36 = ptrtoint ptr %sgt.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sgt.0, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt.0, i32 0, i32 1
  %38 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents, align 4
  %tobool.not.i34 = icmp eq ptr %chan.0, null
  br i1 %tobool.not.i34, label %if.end12.cleanup_crit_edge, label %lor.lhs.false.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end12
  %40 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan.0, align 4
  %tobool1.not.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 39
  %42 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %43, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i35 = call ptr %43(ptr noundef nonnull %chan.0, ptr noundef %37, i32 noundef %39, i32 noundef %dir, i32 noundef 3, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call.i35, %if.end.i ], [ null, %lor.lhs.false2.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa2xx_spi_dma_callback(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pxa2xx_spi_dma_transfer_complete(ptr noundef %data, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pxa2xx_spi_dma_start(ptr noundef %drv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %7(ptr noundef %3) #6
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 60
  %10 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_tx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_issue_pending.i4 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %device_issue_pending.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_issue_pending.i4, align 4
  tail call void %15(ptr noundef %11) #6
  %dma_running = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_running, i32 noundef 4) #6
  %16 = ptrtoint ptr %dma_running to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %dma_running, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pxa2xx_spi_dma_stop(ptr noundef %drv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_running = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_running, i32 noundef 4) #6
  %0 = ptrtoint ptr %dma_running to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %dma_running, align 4
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %1 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %controller, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %2, i32 0, i32 61
  %3 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_rx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %entry.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

entry.dmaengine_terminate_sync.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %entry
  %call.i.i5 = tail call i32 %8(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %tobool.not.i = icmp eq i32 %call.i.i5, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1169) #6
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %12, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %4) #6
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %entry.dmaengine_terminate_sync.exit_crit_edge
  %13 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 60
  %15 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_tx, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i.i6 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i.i6, align 4
  %tobool.not.i.i7 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i7, label %dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit15_crit_edge, label %dmaengine_terminate_async.exit.i10

dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit15_crit_edge: ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit15

dmaengine_terminate_async.exit.i10:               ; preds = %dmaengine_terminate_sync.exit
  %call.i.i8 = tail call i32 %20(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool.not.i9 = icmp eq i32 %call.i.i8, 0
  br i1 %tobool.not.i9, label %if.end.i13, label %dmaengine_terminate_async.exit.i10.dmaengine_terminate_sync.exit15_crit_edge

dmaengine_terminate_async.exit.i10.dmaengine_terminate_sync.exit15_crit_edge: ; preds = %dmaengine_terminate_async.exit.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit15

if.end.i13:                                       ; preds = %dmaengine_terminate_async.exit.i10
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1169) #6
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %device_synchronize.i.i11 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %device_synchronize.i.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_synchronize.i.i11, align 4
  %tobool.not.i1.i12 = icmp eq ptr %24, null
  br i1 %tobool.not.i1.i12, label %if.end.i13.dmaengine_terminate_sync.exit15_crit_edge, label %if.then.i2.i14

if.end.i13.dmaengine_terminate_sync.exit15_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit15

if.then.i2.i14:                                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef %16) #6
  br label %dmaengine_terminate_sync.exit15

dmaengine_terminate_sync.exit15:                  ; preds = %if.then.i2.i14, %if.end.i13.dmaengine_terminate_sync.exit15_crit_edge, %dmaengine_terminate_async.exit.i10.dmaengine_terminate_sync.exit15_crit_edge, %dmaengine_terminate_sync.exit.dmaengine_terminate_sync.exit15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_spi_dma_setup(ptr nocapture noundef readonly %drv_data) local_unnamed_addr #0 align 64 {
entry:
  %mask.i30 = alloca %struct.dma_cap_mask_t, align 4
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_info = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 3
  %0 = ptrtoint ptr %controller_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_info, align 4
  %controller1 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %2 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller1, align 4
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #6
  %dma_filter = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_filter, align 4
  %tx_param = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %tx_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_param, align 4
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i)
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.fca.0.load, ptr %mask.i, align 4
  %call.i.i = call ptr @dma_request_chan(ptr noundef %7, ptr noundef nonnull @.str.10) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not9.i = icmp eq ptr %call.i.i, null
  %tobool.not.i = or i1 %cmp.i.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %if.end.i, label %dma_request_slave_channel_compat.exit.thread46

dma_request_slave_channel_compat.exit.thread46:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %dma_tx48 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %15 = ptrtoint ptr %dma_tx48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %dma_tx48, align 8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %10, null
  %tobool2.not.i = icmp eq ptr %12, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %dma_request_slave_channel_compat.exit.thread, label %dma_request_slave_channel_compat.exit

dma_request_slave_channel_compat.exit.thread:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %dma_tx44 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %16 = ptrtoint ptr %dma_tx44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_tx44, align 8
  br label %cleanup

dma_request_slave_channel_compat.exit:            ; preds = %if.end.i
  %call5.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %17 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %dma_request_slave_channel_compat.exit.cleanup_crit_edge, label %dma_request_slave_channel_compat.exit.if.end_crit_edge

dma_request_slave_channel_compat.exit.if.end_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dma_request_slave_channel_compat.exit.cleanup_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dma_request_slave_channel_compat.exit.if.end_crit_edge, %dma_request_slave_channel_compat.exit.thread46
  %dma_tx50 = phi ptr [ %dma_tx48, %dma_request_slave_channel_compat.exit.thread46 ], [ %dma_tx, %dma_request_slave_channel_compat.exit.if.end_crit_edge ]
  %18 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_filter, align 4
  %rx_param = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %rx_param to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_param, align 4
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.0.load17 = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i30)
  %23 = ptrtoint ptr %mask.i30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.fca.0.load17, ptr %mask.i30, align 4
  %call.i.i31 = call ptr @dma_request_chan(ptr noundef %7, ptr noundef nonnull @.str.11) #6
  %cmp.i.i.i32 = icmp ugt ptr %call.i.i31, inttoptr (i32 -4096 to ptr)
  %tobool.not9.i33 = icmp eq ptr %call.i.i31, null
  %tobool.not.i34 = or i1 %cmp.i.i.i32, %tobool.not9.i33
  br i1 %tobool.not.i34, label %if.end.i38, label %dma_request_slave_channel_compat.exit42.thread54

dma_request_slave_channel_compat.exit42.thread54: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i30)
  %dma_rx56 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %24 = ptrtoint ptr %dma_rx56 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i31, ptr %dma_rx56, align 4
  br label %cleanup

if.end.i38:                                       ; preds = %if.end
  %tobool1.not.i35 = icmp eq ptr %19, null
  %tobool2.not.i36 = icmp eq ptr %21, null
  %or.cond.i37 = or i1 %tobool1.not.i35, %tobool2.not.i36
  br i1 %or.cond.i37, label %dma_request_slave_channel_compat.exit42.thread, label %dma_request_slave_channel_compat.exit42

dma_request_slave_channel_compat.exit42.thread:   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i30)
  %dma_rx52 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %25 = ptrtoint ptr %dma_rx52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma_rx52, align 4
  br label %if.then9

dma_request_slave_channel_compat.exit42:          ; preds = %if.end.i38
  %call5.i39 = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i30, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i30)
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %26 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i39, ptr %dma_rx, align 4
  %tobool8.not = icmp eq ptr %call5.i39, null
  br i1 %tobool8.not, label %dma_request_slave_channel_compat.exit42.if.then9_crit_edge, label %dma_request_slave_channel_compat.exit42.cleanup_crit_edge

dma_request_slave_channel_compat.exit42.cleanup_crit_edge: ; preds = %dma_request_slave_channel_compat.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dma_request_slave_channel_compat.exit42.if.then9_crit_edge: ; preds = %dma_request_slave_channel_compat.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %dma_request_slave_channel_compat.exit42.if.then9_crit_edge, %dma_request_slave_channel_compat.exit42.thread
  %27 = ptrtoint ptr %dma_tx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_tx50, align 8
  call void @dma_release_channel(ptr noundef %28) #6
  %29 = ptrtoint ptr %dma_tx50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma_tx50, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %dma_request_slave_channel_compat.exit42.cleanup_crit_edge, %dma_request_slave_channel_compat.exit42.thread54, %dma_request_slave_channel_compat.exit.cleanup_crit_edge, %dma_request_slave_channel_compat.exit.thread
  %retval.0 = phi i32 [ -19, %if.then9 ], [ -19, %dma_request_slave_channel_compat.exit.cleanup_crit_edge ], [ 0, %dma_request_slave_channel_compat.exit42.cleanup_crit_edge ], [ -19, %dma_request_slave_channel_compat.exit.thread ], [ 0, %dma_request_slave_channel_compat.exit42.thread54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pxa2xx_spi_dma_release(ptr nocapture noundef readonly %drv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller1 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %0 = ptrtoint ptr %controller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller1, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %7(ptr noundef nonnull %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1169) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 48
  %10 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %11, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef nonnull %3) #6
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %12 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_rx, align 4
  tail call void @dma_release_channel(ptr noundef %13) #6
  %14 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %15 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_tx, align 8
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i.i20 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i.i20, align 4
  %tobool.not.i.i21 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i21, label %if.then6.dmaengine_terminate_sync.exit29_crit_edge, label %dmaengine_terminate_async.exit.i24

if.then6.dmaengine_terminate_sync.exit29_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit29

dmaengine_terminate_async.exit.i24:               ; preds = %if.then6
  %call.i.i22 = tail call i32 %20(ptr noundef nonnull %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i23, label %if.end.i27, label %dmaengine_terminate_async.exit.i24.dmaengine_terminate_sync.exit29_crit_edge

dmaengine_terminate_async.exit.i24.dmaengine_terminate_sync.exit29_crit_edge: ; preds = %dmaengine_terminate_async.exit.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit29

if.end.i27:                                       ; preds = %dmaengine_terminate_async.exit.i24
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1169) #6
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %device_synchronize.i.i25 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %device_synchronize.i.i25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_synchronize.i.i25, align 4
  %tobool.not.i1.i26 = icmp eq ptr %24, null
  br i1 %tobool.not.i1.i26, label %if.end.i27.dmaengine_terminate_sync.exit29_crit_edge, label %if.then.i2.i28

if.end.i27.dmaengine_terminate_sync.exit29_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_sync.exit29

if.then.i2.i28:                                   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef nonnull %16) #6
  br label %dmaengine_terminate_sync.exit29

dmaengine_terminate_sync.exit29:                  ; preds = %if.then.i2.i28, %if.end.i27.dmaengine_terminate_sync.exit29_crit_edge, %dmaengine_terminate_async.exit.i24.dmaengine_terminate_sync.exit29_crit_edge, %if.then6.dmaengine_terminate_sync.exit29_crit_edge
  %25 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_tx, align 8
  tail call void @dma_release_channel(ptr noundef %26) #6
  %27 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end11

if.end11:                                         ; preds = %dmaengine_terminate_sync.exit29, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pxa2xx_spi_set_dma_burst_and_threshold(ptr nocapture noundef readnone %chip, ptr nocapture noundef readonly %spi, i8 noundef zeroext %bits_per_word, ptr nocapture noundef writeonly %burst_code, ptr nocapture noundef writeonly %threshold) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma_burst_size2 = getelementptr inbounds %struct.pxa2xx_spi_chip, ptr %1, i32 0, i32 3
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %controller_info = getelementptr inbounds %struct.driver_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %controller_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller_info, align 4
  %dma_burst_size1 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %7, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi ptr [ %dma_burst_size2, %cond.true ], [ %dma_burst_size1, %cond.false ]
  %8 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %9 = ptrtoint ptr %burst_code to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %burst_code, align 4
  %10 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7616, ptr %threshold, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-pxa2xx-dma.c", i32 121, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pxa2xx_spi_dma_transfer._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pxa2xx_spi_dma_transfer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-pxa2xx-dma.c", i32 141, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pxa2xx_spi_dma_prepare._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pxa2xx_spi_dma_prepare._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-pxa2xx-dma.c", i32 148, i32 3}
!15 = !{ptr @pxa2xx_spi_dma_prepare._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pxa2xx_spi_dma_prepare._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-pxa2xx-dma.c", i32 193, i32 46}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-pxa2xx-dma.c", i32 198, i32 46}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-pxa2xx-dma.c", i32 107, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pxa2xx_spi_dma_prepare_one._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @pxa2xx_spi_dma_prepare_one._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 6221686}
!39 = !{i64 2148557055}
!40 = !{i64 2148471788, i64 2148471820, i64 2148471849, i64 2148471883, i64 2148471914, i64 2148471937}
!41 = !{i64 2148557284}
!42 = !{i64 6221268}
