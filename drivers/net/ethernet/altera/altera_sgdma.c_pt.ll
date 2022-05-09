; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/altera/altera_sgdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/altera/altera_sgdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.altera_tse_private = type { ptr, ptr, %struct.napi_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.sgdma_descrip = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i16, i8, i8 }
%struct.tse_buffer = type { %struct.list_head, ptr, i32, i32, i32 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error mapping rx descriptor memory\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error mapping tx descriptor memory\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sgdma rx and rx queue empty!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SGDMA RX Error Info: %x, %x, %x\0A\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no rx buffers available\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout waiting for tx dma\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 75, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 85, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 259, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 280, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 326, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 348, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [46 x i8] c"../drivers/net/ethernet/altera/altera_sgdma.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 523, i32 25 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sgdma_initialize(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %txctrlreg = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %txctrlreg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 24, ptr %txctrlreg, align 8
  %rxctrlreg = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 30
  %1 = ptrtoint ptr %rxctrlreg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 28, ptr %rxctrlreg, align 4
  %txlisthd = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %txlisthd to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %txlisthd, ptr %txlisthd, align 4
  %prev.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 33, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %txlisthd, ptr %prev.i, align 4
  %rxlisthd = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 34
  %4 = ptrtoint ptr %rxlisthd to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %rxlisthd, ptr %rxlisthd, align 4
  %prev.i56 = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 34, i32 1
  %5 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rxlisthd, ptr %prev.i56, align 4
  %rxdescphys = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rxdescphys, align 8
  %txdescphys = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 32
  %7 = ptrtoint ptr %txdescphys to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %txdescphys, align 4
  %device = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %rx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_dma_desc, align 4
  %rxdescmem = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 26
  %12 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxdescmem, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !25

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %11, i32 noundef %13) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %13, i32 noundef 0, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %20 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %rxdescphys, align 8
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  %23 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxdescphys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i57

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i57:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxdescmem, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %24, i32 noundef %28, i32 noundef 0, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i57, %if.then.if.end.i_crit_edge
  %29 = ptrtoint ptr %txdescphys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %txdescphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not.i = icmp eq i32 %30, 0
  br i1 %tobool2.not.i, label %if.end.i.sgdma_uninitialize.exit_crit_edge, label %if.then3.i

if.end.i.sgdma_uninitialize.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgdma_uninitialize.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %txdescmem.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 25
  %33 = ptrtoint ptr %txdescmem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txdescmem.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %30, i32 noundef %34, i32 noundef 1, i32 noundef 0) #5
  br label %sgdma_uninitialize.exit

sgdma_uninitialize.exit:                          ; preds = %if.then3.i, %if.end.i.sgdma_uninitialize.exit_crit_edge
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str) #8
  br label %return

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device, align 4
  %tx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 9
  %39 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_dma_desc, align 8
  %txdescmem = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 25
  %41 = ptrtoint ptr %txdescmem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txdescmem, align 8
  %call.i58 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #5
  br i1 %call.i58, label %land.rhs.i60, label %if.end39.i73

land.rhs.i60:                                     ; preds = %if.end
  %.b1.i59 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i59, label %land.rhs.i60.dma_map_single_attrs.exit75_crit_edge, label %if.then.i64, !prof !25

land.rhs.i60.dma_map_single_attrs.exit75_crit_edge: ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit75

if.then.i64:                                      ; preds = %land.rhs.i60
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i61 = tail call ptr @dev_driver_string(ptr noundef %38) #5
  %init_name.i.i62 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i62, align 8
  %tobool.not.i.i63 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i63, label %if.end.i.i65, label %if.then.i64.dev_name.exit.i67_crit_edge

if.then.i64.dev_name.exit.i67_crit_edge:          ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i67

if.end.i.i65:                                     ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %38, align 4
  br label %dev_name.exit.i67

dev_name.exit.i67:                                ; preds = %if.end.i.i65, %if.then.i64.dev_name.exit.i67_crit_edge
  %retval.0.i.i66 = phi ptr [ %46, %if.end.i.i65 ], [ %44, %if.then.i64.dev_name.exit.i67_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i61, ptr noundef %retval.0.i.i66) #5
  br label %dma_map_single_attrs.exit75

if.end39.i73:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %38, ptr noundef %40, i32 noundef %42) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %40 to i32
  %sub.i68 = add i32 %48, 1073741824
  %shr.i69 = lshr i32 %sub.i68, 12
  %add.ptr.i70 = getelementptr %struct.page, ptr %47, i32 %shr.i69
  %and.i71 = and i32 %48, 4095
  %call41.i72 = tail call i32 @dma_map_page_attrs(ptr noundef %38, ptr noundef %add.ptr.i70, i32 noundef %and.i71, i32 noundef %42, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit75

dma_map_single_attrs.exit75:                      ; preds = %if.end39.i73, %dev_name.exit.i67, %land.rhs.i60.dma_map_single_attrs.exit75_crit_edge
  %retval.0.i74 = phi i32 [ %call41.i72, %if.end39.i73 ], [ -1, %dev_name.exit.i67 ], [ -1, %land.rhs.i60.dma_map_single_attrs.exit75_crit_edge ]
  %49 = ptrtoint ptr %txdescphys to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i74, ptr %txdescphys, align 4
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef %retval.0.i74) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i74)
  %cmp.i76 = icmp eq i32 %retval.0.i74, -1
  br i1 %cmp.i76, label %if.then12, label %if.end14

if.then12:                                        ; preds = %dma_map_single_attrs.exit75
  %52 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rxdescphys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i79 = icmp eq i32 %53, 0
  br i1 %tobool.not.i79, label %if.then12.if.end.i85_crit_edge, label %if.then.i82

if.then12.if.end.i85_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i85

if.then.i82:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %56 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rxdescmem, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 0) #5
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then.i82, %if.then12.if.end.i85_crit_edge
  %58 = ptrtoint ptr %txdescphys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %txdescphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool2.not.i84 = icmp eq i32 %59, 0
  br i1 %tobool2.not.i84, label %if.end.i85.sgdma_uninitialize.exit89_crit_edge, label %if.then3.i88

if.end.i85.sgdma_uninitialize.exit89_crit_edge:   ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgdma_uninitialize.exit89

if.then3.i88:                                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 4
  %62 = ptrtoint ptr %txdescmem to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %txdescmem, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %61, i32 noundef %59, i32 noundef %63, i32 noundef 1, i32 noundef 0) #5
  br label %sgdma_uninitialize.exit89

sgdma_uninitialize.exit89:                        ; preds = %if.then3.i88, %if.end.i85.sgdma_uninitialize.exit89_crit_edge
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.1) #8
  br label %return

if.end14:                                         ; preds = %dma_map_single_attrs.exit75
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_dma_desc, align 8
  %68 = ptrtoint ptr %txdescmem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %txdescmem, align 8
  tail call void @mmioset(ptr noundef %67, i32 noundef 0, i32 noundef %69) #5
  %70 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_dma_desc, align 4
  %72 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rxdescmem, align 4
  tail call void @mmioset(ptr noundef %71, i32 noundef 0, i32 noundef %73) #5
  %74 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device, align 4
  %76 = ptrtoint ptr %txdescphys to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %txdescphys, align 4
  %78 = ptrtoint ptr %txdescmem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %txdescmem, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef 1) #5
  %80 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device, align 4
  %82 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rxdescphys, align 8
  %84 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rxdescmem, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef 1) #5
  br label %return

return:                                           ; preds = %if.end14, %sgdma_uninitialize.exit89, %sgdma_uninitialize.exit
  %retval.0 = phi i32 [ -22, %sgdma_uninitialize.exit ], [ -22, %sgdma_uninitialize.exit89 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sgdma_uninitialize(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rxdescphys = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 31
  %0 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxdescphys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %rxdescmem = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 26
  %4 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxdescmem, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %txdescphys = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 32
  %6 = ptrtoint ptr %txdescphys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txdescphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %device4 = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device4, align 4
  %txdescmem = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 25
  %10 = ptrtoint ptr %txdescmem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txdescmem, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %7, i32 noundef %11, i32 noundef 1, i32 noundef 0) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sgdma_reset(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_desc, align 8
  %txdescmem = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 25
  %2 = ptrtoint ptr %txdescmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txdescmem, align 8
  tail call void @mmioset(ptr noundef %1, i32 noundef 0, i32 noundef %3) #5
  %rx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_dma_desc, align 4
  %rxdescmem = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 26
  %6 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxdescmem, align 4
  tail call void @mmioset(ptr noundef %5, i32 noundef 0, i32 noundef %7) #5
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %8 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_dma_csr, align 4
  %10 = ptrtoint ptr %9 to i32
  %add.i = add i32 %10, 16
  %11 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 256) #5, !srcloc !27
  %12 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_dma_csr, align 4
  %14 = ptrtoint ptr %13 to i32
  %add.i10 = add i32 %14, 16
  %15 = inttoptr i32 %add.i10 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #5, !srcloc !27
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %16 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_csr, align 8
  %18 = ptrtoint ptr %17 to i32
  %add.i11 = add i32 %18, 16
  %19 = inttoptr i32 %add.i11 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 256) #5, !srcloc !27
  %20 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_dma_csr, align 8
  %22 = ptrtoint ptr %21 to i32
  %add.i12 = add i32 %22, 16
  %23 = inttoptr i32 %add.i12 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #5, !srcloc !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sgdma_enable_rxirq(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sgdma_enable_txirq(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sgdma_disable_rxirq(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sgdma_disable_txirq(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sgdma_clear_rxirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_csr, align 8
  tail call void @tse_set_bit(ptr noundef %1, i32 noundef 16, i32 noundef -2147483648) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tse_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sgdma_clear_txirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_csr, align 4
  tail call void @tse_set_bit(ptr noundef %1, i32 noundef 16, i32 noundef -2147483648) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sgdma_tx_buffer(ptr noundef %priv, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_desc, align 8
  %tx_dma_csr.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_dma_csr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not7.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not7.not.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %delay.08.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %delay.08.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #5
  %7 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_dma_csr.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %10 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %delay.08.i)
  %cmp.i = icmp ult i32 %delay.08.i, 99
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %11 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_dma_csr.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %if.end, label %sgdma_txbusy.exit

sgdma_txbusy.exit:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end:                                           ; preds = %while.end.i
  %arrayidx1 = getelementptr %struct.sgdma_descrip, ptr %1, i32 1
  %txdescmem_busaddr.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 28
  %17 = ptrtoint ptr %txdescmem_busaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txdescmem_busaddr.i, align 4
  %19 = ptrtoint ptr %arrayidx1 to i32
  %20 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_dma_desc, align 8
  %22 = ptrtoint ptr %21 to i32
  %sub.i = add i32 %18, %19
  %add.i = sub i32 %sub.i, %22
  %dma_addr = getelementptr inbounds %struct.tse_buffer, ptr %buffer, i32 0, i32 2
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 4
  %len = getelementptr inbounds %struct.tse_buffer, ptr %buffer, i32 0, i32 3
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %conv = trunc i32 %26 to i16
  tail call fastcc void @sgdma_setup_descrip(ptr noundef %1, ptr noundef %arrayidx1, i32 noundef %add.i, i32 noundef %24, i32 noundef 0, i16 noundef zeroext %conv, i32 noundef 1, i32 noundef 4)
  %27 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_dma_csr.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %30 = and i32 %29, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not7.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not7.not.i.i, label %if.end.while.end.i.i_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.while.end.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %delay.08.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.while.body.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %delay.08.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #5
  %32 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_dma_csr.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %35 = and i32 %34, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %delay.08.i.i)
  %cmp.i.i = icmp ult i32 %delay.08.i.i, 99
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end.while.end.i.i_crit_edge
  %36 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_dma_csr.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %39 = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i.i, label %if.end.i, label %sgdma_txbusy.exit.i

sgdma_txbusy.exit.i:                              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.7) #8
  br label %sgdma_async_write.exit

if.end.i:                                         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_dma_csr.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %add.i.i = add i32 %44, 16
  %45 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #5, !srcloc !27
  %46 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_dma_csr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 520093696) #5, !srcloc !27
  %device.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %48 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device.i, align 4
  %txdescphys.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 32
  %50 = ptrtoint ptr %txdescphys.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %txdescphys.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %49, i32 noundef %51, i32 noundef 32, i32 noundef 1) #5
  %52 = ptrtoint ptr %txdescmem_busaddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %txdescmem_busaddr.i, align 4
  %54 = ptrtoint ptr %1 to i32
  %55 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_dma_desc, align 8
  %57 = ptrtoint ptr %56 to i32
  %sub.i.i = add i32 %53, %54
  %add.i1.i = sub i32 %sub.i.i, %57
  %58 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_dma_csr.i, align 4
  %60 = ptrtoint ptr %59 to i32
  %add.i2.i = add i32 %60, 32
  %61 = inttoptr i32 %add.i2.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %add.i1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %62) #5, !srcloc !27
  %txctrlreg.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 29
  %63 = ptrtoint ptr %txctrlreg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %txctrlreg.i, align 8
  %or.i = or i32 %64, 32
  %65 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_dma_csr.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %add.i3.i = add i32 %67, 16
  %68 = inttoptr i32 %add.i3.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %69) #5, !srcloc !27
  br label %sgdma_async_write.exit

sgdma_async_write.exit:                           ; preds = %if.end.i, %sgdma_txbusy.exit.i
  %txlisthd.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 33
  %prev.i.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 33, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buffer, ptr noundef %71, ptr noundef %txlisthd.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sgdma_async_write.exit.cleanup_crit_edge

sgdma_async_write.exit.cleanup_crit_edge:         ; preds = %sgdma_async_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %sgdma_async_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buffer, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %txlisthd.i, ptr %buffer, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buffer, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %buffer, ptr %71, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %sgdma_async_write.exit.cleanup_crit_edge, %sgdma_txbusy.exit
  %retval.0 = phi i32 [ 0, %sgdma_txbusy.exit ], [ 1, %sgdma_async_write.exit.cleanup_crit_edge ], [ 1, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgdma_setup_descrip(ptr noundef %desc, ptr noundef %ndesc, i32 noundef %ndesc_phys, i32 noundef %raddr, i32 noundef %waddr, i16 noundef zeroext %length, i32 noundef %generate_eop, i32 noundef %wfixed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndesc to i32
  %add.i = add i32 %0, 31
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %3 = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %3) #5, !srcloc !33
  %or = or i32 %wfixed, %generate_eop
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %raddr) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %desc, i32 %4) #5, !srcloc !27
  %5 = ptrtoint ptr %desc to i32
  %add.i2 = add i32 %5, 8
  %6 = inttoptr i32 %add.i2 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %waddr) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %7) #5, !srcloc !27
  %add.i3 = add i32 %5, 4
  %8 = inttoptr i32 %add.i3 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !27
  %add.i4 = add i32 %5, 12
  %9 = inttoptr i32 %add.i4 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !27
  %add.i5 = add i32 %5, 16
  %10 = inttoptr i32 %add.i5 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %ndesc_phys) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %11) #5, !srcloc !27
  %12 = trunc i32 %or to i8
  %conv7 = or i8 %12, -128
  %add.i6 = add i32 %5, 31
  %13 = inttoptr i32 %add.i6 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %conv7) #5, !srcloc !33
  %add.i7 = add i32 %5, 30
  %14 = inttoptr i32 %add.i7 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 0) #5, !srcloc !33
  %add.i8 = add i32 %5, 27
  %15 = inttoptr i32 %add.i8 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 0) #5, !srcloc !33
  %add.i9 = add i32 %5, 26
  %16 = inttoptr i32 %add.i9 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 0) #5, !srcloc !33
  %add.i10 = add i32 %5, 24
  %17 = inttoptr i32 %add.i10 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %18 = tail call i16 @llvm.bswap.i16(i16 %length) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %18) #5, !srcloc !35
  %add.i11 = add i32 %5, 28
  %19 = inttoptr i32 %add.i11 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 0) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sgdma_tx_completions(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_csr.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_csr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not7.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not7.not.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %delay.08.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %delay.08.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #5
  %5 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_dma_csr.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %delay.08.i)
  %cmp.i = icmp ult i32 %delay.08.i, 99
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %9 = ptrtoint ptr %tx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_dma_csr.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %land.lhs.true, label %sgdma_txbusy.exit

sgdma_txbusy.exit:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.7) #8
  br label %if.end

land.lhs.true:                                    ; preds = %while.end.i
  %tx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 9
  %15 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_dma_desc, align 8
  %17 = ptrtoint ptr %16 to i32
  %add.i = add i32 %17, 31
  %18 = inttoptr i32 %add.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp = icmp sgt i8 %19, -1
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %txlisthd.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 33
  %20 = ptrtoint ptr %txlisthd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %txlisthd.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %txlisthd.i
  br i1 %cmp.i.not.i, label %land.lhs.true3.if.end_crit_edge, label %if.then.i8

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i8:                                       ; preds = %land.lhs.true3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i8.list_del_init.exit.i_crit_edge

if.then.i8.list_del_init.exit.i_crit_edge:        ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i8.list_del_init.exit.i_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %prev.i3.i.i, align 4
  %phi.cmp = icmp ne ptr %21, null
  %phi.cast = zext i1 %phi.cmp to i32
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit.i, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sgdma_txbusy.exit
  %ready.0 = phi i32 [ 0, %sgdma_txbusy.exit ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.lhs.true3.if.end_crit_edge ], [ %phi.cast, %list_del_init.exit.i ]
  ret i32 %ready.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sgdma_start_rxdma(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sgdma_async_read(ptr noundef %priv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgdma_async_read(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_desc, align 4
  %arrayidx1 = getelementptr %struct.sgdma_descrip, ptr %1, i32 1
  %rx_dma_csr.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %rx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_dma_csr.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %rxlisthd.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 34
  %6 = ptrtoint ptr %rxlisthd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rxlisthd.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %rxlisthd.i
  %cmp7 = icmp eq ptr %7, null
  %cmp = or i1 %cmp.i.not.i, %cmp7
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rxdescmem_busaddr.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 27
  %10 = ptrtoint ptr %rxdescmem_busaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxdescmem_busaddr.i, align 8
  %12 = ptrtoint ptr %arrayidx1 to i32
  %13 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_dma_desc, align 4
  %15 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %11, %12
  %add.i = sub i32 %sub.i, %15
  %dma_addr = getelementptr inbounds %struct.tse_buffer, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 4
  tail call fastcc void @sgdma_setup_descrip(ptr noundef %1, ptr noundef %arrayidx1, i32 noundef %add.i, i32 noundef 0, i32 noundef %17, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0)
  %device = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %rxdescphys = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 31
  %20 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxdescphys, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %21, i32 noundef 32, i32 noundef 1) #5
  %22 = ptrtoint ptr %rxdescmem_busaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxdescmem_busaddr.i, align 8
  %24 = ptrtoint ptr %1 to i32
  %25 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_dma_desc, align 4
  %27 = ptrtoint ptr %26 to i32
  %sub.i3 = add i32 %23, %24
  %add.i4 = sub i32 %sub.i3, %27
  %28 = ptrtoint ptr %rx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_dma_csr.i, align 8
  %30 = ptrtoint ptr %29 to i32
  %add.i5 = add i32 %30, 32
  %31 = inttoptr i32 %add.i5 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %add.i4) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %32) #5, !srcloc !27
  %rxctrlreg = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 30
  %33 = ptrtoint ptr %rxctrlreg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rxctrlreg, align 4
  %or = or i32 %34, 32
  %35 = ptrtoint ptr %rx_dma_csr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_dma_csr.i, align 8
  %37 = ptrtoint ptr %36 to i32
  %add.i6 = add i32 %37, 16
  %38 = inttoptr i32 %add.i6 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %39) #5, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sgdma_add_rx_desc(ptr noundef %priv, ptr noundef %rxbuffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rxlisthd.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 34
  %prev.i.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 34, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rxbuffer, ptr noundef %1, ptr noundef %rxlisthd.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.queue_rx.exit_crit_edge

entry.queue_rx.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue_rx.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rxbuffer, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %rxbuffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rxlisthd.i, ptr %rxbuffer, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %rxbuffer, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %rxbuffer, ptr %1, align 4
  br label %queue_rx.exit

queue_rx.exit:                                    ; preds = %if.end.i.i.i, %entry.queue_rx.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sgdma_rx_status(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_desc, align 4
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_dma_csr, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !28
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else18, label %if.then

if.then:                                          ; preds = %entry
  %device = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %rxdescphys = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 31
  %8 = ptrtoint ptr %rxdescphys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxdescphys, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %7, i32 noundef %9, i32 noundef 32, i32 noundef 2) #5
  %10 = ptrtoint ptr %1 to i32
  %add.i = add i32 %10, 28
  %11 = inttoptr i32 %add.i to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #5, !srcloc !36
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %conv = zext i16 %13 to i32
  %add.i44 = add i32 %10, 30
  %14 = inttoptr i32 %add.i44 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %16 = and i8 %15, 127
  %and4 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %and4, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool6.not = icmp eq i32 %or, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 0) #5, !srcloc !33
  %rxlisthd.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 34
  %17 = ptrtoint ptr %rxlisthd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %rxlisthd.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %rxlisthd.i
  br i1 %cmp.i.not.i, label %if.then7.if.then10_crit_edge, label %if.then.i

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then.i:                                        ; preds = %if.then7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.dequeue_rx.exit_crit_edge

if.then.i.dequeue_rx.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dequeue_rx.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %dequeue_rx.exit

dequeue_rx.exit:                                  ; preds = %if.end.i.i.i, %if.then.i.dequeue_rx.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %18, ptr %18, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %18, ptr %prev.i3.i.i, align 4
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %dequeue_rx.exit.if.then10_crit_edge, label %dequeue_rx.exit.if.end_crit_edge

dequeue_rx.exit.if.end_crit_edge:                 ; preds = %dequeue_rx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

dequeue_rx.exit.if.then10_crit_edge:              ; preds = %dequeue_rx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %dequeue_rx.exit.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end:                                           ; preds = %if.then10, %dequeue_rx.exit.if.end_crit_edge
  %29 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_dma_csr, align 8
  %31 = ptrtoint ptr %30 to i32
  %add.i46 = add i32 %31, 16
  %32 = inttoptr i32 %add.i46 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #5, !srcloc !27
  %33 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_dma_csr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 251658240) #5, !srcloc !27
  tail call fastcc void @sgdma_async_read(ptr noundef %priv)
  br label %if.end24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %conv16 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %conv16, i32 noundef 0) #8
  br label %if.end24

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp19 = icmp eq i32 %4, 0
  br i1 %cmp19, label %if.then21, label %if.else18.if.end24_crit_edge

if.else18.if.end24_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @sgdma_async_read(ptr noundef %priv)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else18.if.end24_crit_edge, %if.else, %if.end
  %rxstatus.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.else18.if.end24_crit_edge ], [ 0, %if.else ], [ %or, %if.end ]
  ret i32 %rxstatus.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/altera/altera_sgdma.c", i32 75, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/altera/altera_sgdma.c", i32 85, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/altera/altera_sgdma.c", i32 259, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/altera/altera_sgdma.c", i32 280, i32 8}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/altera/altera_sgdma.c", i32 348, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/altera/altera_sgdma.c", i32 523, i32 25}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2156527941}
!27 = !{i64 6576932}
!28 = !{i64 6577350}
!29 = !{i64 2156526586}
!30 = !{i64 6577130}
!31 = !{i64 2156527570}
!32 = !{i64 2156529009}
!33 = !{i64 6576735}
!34 = !{i64 2156528475}
!35 = !{i64 6576312}
!36 = !{i64 6576512}
!37 = !{i64 2156527193}
