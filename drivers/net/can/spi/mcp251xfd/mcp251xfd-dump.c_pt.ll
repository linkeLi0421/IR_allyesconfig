; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-dump.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mcp251xfd_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [44 x i8], [1 x %struct.mcp251xfd_tef_ring], [1 x %struct.mcp251xfd_tx_ring], [1 x ptr], i8, %struct.mcp251xfd_ecc, %struct.mcp251xfd_regs_status, %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, ptr, ptr, ptr, %struct.mcp251xfd_devtype_data, %struct.can_berr_counter, [40 x i8] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mcp251xfd_tef_ring = type { i32, i32, [120 x i8], %union.mcp251xfd_write_reg_buf, [8 x %struct.spi_transfer] }
%union.mcp251xfd_write_reg_buf = type { %struct.anon.140, [122 x i8] }
%struct.anon.140 = type { %struct.mcp251xfd_buf_cmd, [4 x i8] }
%struct.mcp251xfd_buf_cmd = type { i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.mcp251xfd_tx_ring = type { i32, i32, i16, i8, i8, [116 x i8], [8 x %struct.mcp251xfd_tx_obj], %union.mcp251xfd_write_reg_buf }
%struct.mcp251xfd_tx_obj = type { %struct.spi_message, [2 x %struct.spi_transfer], [8 x i8], %union.mcp251xfd_tx_obj_load_buf }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%union.mcp251xfd_tx_obj_load_buf = type { %struct.anon.143, [51 x i8] }
%struct.anon.143 = type <{ %struct.mcp251xfd_buf_cmd_crc, %struct.mcp251xfd_hw_tx_obj_raw, i16 }>
%struct.mcp251xfd_buf_cmd_crc = type <{ i16, i8 }>
%struct.mcp251xfd_hw_tx_obj_raw = type { i32, i32, [64 x i8] }
%struct.mcp251xfd_ecc = type { i32, i32 }
%struct.mcp251xfd_regs_status = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mcp251xfd_devtype_data = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.mcp251xfd_dump_object_header = type { i32, i32, i32, i32 }
%struct.mcp251xfd_dump_object_reg = type { i32, i32 }
%struct.mcp251xfd_rx_ring = type { i32, i32, i16, i8, i8, i8, i8, [114 x i8], %union.mcp251xfd_write_reg_buf, [32 x %struct.spi_transfer], [0 x %struct.mcp251xfd_hw_rx_obj_canfd] }
%struct.mcp251xfd_hw_rx_obj_canfd = type { i32, i32, i32, [64 x i8] }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate devcoredump file.\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-dump.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 269, i32 27 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcp251xfd_dump(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_ring_num, align 4
  %conv1 = zext i8 %1 to i32
  %add4 = add nuw nsw i32 %conv1, 4
  %mul5 = mul nuw nsw i32 %conv1, 56
  %mul8 = shl nuw nsw i32 %add4, 4
  %add7 = add nuw nsw i32 %mul5, 5752
  %add9 = add nuw nsw i32 %add7, %mul8
  %call = tail call noalias ptr @__vmalloc(i32 noundef %add9, i32 noundef 77248) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %kmalloc.exit.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str) #10
  br label %cleanup

kmalloc.exit.i:                                   ; preds = %entry
  %arrayidx13 = getelementptr %struct.mcp251xfd_dump_object_header, ptr %call, i32 %add4
  %map_rx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %map_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_rx.i, align 16
  %call.i = tail call i32 @regmap_get_val_bytes(ptr noundef %5) #6
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 752) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.mcp251xfd_dump_tef_ring.exit_crit_edge, label %if.end.i

kmalloc.exit.i.mcp251xfd_dump_tef_ring.exit_crit_edge: ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_dump_tef_ring.exit

if.end.i:                                         ; preds = %kmalloc.exit.i
  %7 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_reg.i, align 4
  %div.i = sdiv i32 752, %call.i
  %call5.i = tail call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef %div.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.for.body14.i_crit_edge, label %if.end.i.kmalloc.exit.i.1_crit_edge

if.end.i.kmalloc.exit.i.1_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i.1

if.end.i.for.body14.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %if.end.i.for.body14.i_crit_edge
  %j.052.i = phi i32 [ %add19.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %if.end.i.for.body14.i_crit_edge ]
  %reg.151.i = phi ptr [ %incdec.ptr.i, %for.body14.i.for.body14.i_crit_edge ], [ %arrayidx13, %if.end.i.for.body14.i_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %j.052.i) #6
  %10 = ptrtoint ptr %reg.151.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %reg.151.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 %j.052.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %val.i = getelementptr inbounds %struct.mcp251xfd_dump_object_reg, ptr %reg.151.i, i32 0, i32 1
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val.i, align 4
  %add19.i = add nuw nsw i32 %j.052.i, 4
  %incdec.ptr.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.151.i, i32 1
  %cmp12.i = icmp ult i32 %j.052.i, 748
  br i1 %cmp12.i, label %for.body14.i.for.body14.i_crit_edge, label %for.body14.i.kmalloc.exit.i.1_crit_edge

for.body14.i.kmalloc.exit.i.1_crit_edge:          ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i.1

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14.i

kmalloc.exit.i.1:                                 ; preds = %for.body14.i.kmalloc.exit.i.1_crit_edge, %if.end.i.kmalloc.exit.i.1_crit_edge
  %reg.2.ph.i = phi ptr [ %arrayidx13, %if.end.i.kmalloc.exit.i.1_crit_edge ], [ %incdec.ptr.i, %for.body14.i.kmalloc.exit.i.1_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 2048) #11
  %tobool.not.i.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool.not.i.1, label %kmalloc.exit.i.1.out.i_crit_edge, label %if.end.i.1

kmalloc.exit.i.1.out.i_crit_edge:                 ; preds = %kmalloc.exit.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end.i.1:                                       ; preds = %kmalloc.exit.i.1
  %16 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map_reg.i, align 4
  %div.i.1 = sdiv i32 2048, %call.i
  %call5.i.1 = tail call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 1024, ptr noundef nonnull %call7.i.i.1, i32 noundef %div.i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.1)
  %tobool6.not.i.1 = icmp eq i32 %call5.i.1, 0
  br i1 %tobool6.not.i.1, label %if.end.i.1.for.body14.i.1_crit_edge, label %if.end.i.1.kmalloc.exit.i.2_crit_edge

if.end.i.1.kmalloc.exit.i.2_crit_edge:            ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i.2

if.end.i.1.for.body14.i.1_crit_edge:              ; preds = %if.end.i.1
  br label %for.body14.i.1

for.body14.i.1:                                   ; preds = %for.body14.i.1.for.body14.i.1_crit_edge, %if.end.i.1.for.body14.i.1_crit_edge
  %j.052.i.1 = phi i32 [ %add19.i.1, %for.body14.i.1.for.body14.i.1_crit_edge ], [ 0, %if.end.i.1.for.body14.i.1_crit_edge ]
  %reg.151.i.1 = phi ptr [ %incdec.ptr.i.1, %for.body14.i.1.for.body14.i.1_crit_edge ], [ %reg.2.ph.i, %if.end.i.1.for.body14.i.1_crit_edge ]
  %add.i.1 = add nuw nsw i32 %j.052.i.1, 1024
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i.1) #6
  %19 = ptrtoint ptr %reg.151.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg.151.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %call7.i.i.1, i32 %j.052.i.1
  %20 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.1, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %val.i.1 = getelementptr inbounds %struct.mcp251xfd_dump_object_reg, ptr %reg.151.i.1, i32 0, i32 1
  %23 = ptrtoint ptr %val.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val.i.1, align 4
  %add19.i.1 = add nuw nsw i32 %j.052.i.1, 4
  %incdec.ptr.i.1 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.151.i.1, i32 1
  %cmp12.i.1 = icmp ult i32 %j.052.i.1, 2044
  br i1 %cmp12.i.1, label %for.body14.i.1.for.body14.i.1_crit_edge, label %for.body14.i.1.kmalloc.exit.i.2_crit_edge

for.body14.i.1.kmalloc.exit.i.2_crit_edge:        ; preds = %for.body14.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i.2

for.body14.i.1.for.body14.i.1_crit_edge:          ; preds = %for.body14.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14.i.1

kmalloc.exit.i.2:                                 ; preds = %for.body14.i.1.kmalloc.exit.i.2_crit_edge, %if.end.i.1.kmalloc.exit.i.2_crit_edge
  %reg.2.ph.i.1 = phi ptr [ %reg.2.ph.i, %if.end.i.1.kmalloc.exit.i.2_crit_edge ], [ %incdec.ptr.i.1, %for.body14.i.1.kmalloc.exit.i.2_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 20) #11
  %tobool.not.i.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool.not.i.2, label %kmalloc.exit.i.2.out.i_crit_edge, label %if.end.i.2

kmalloc.exit.i.2.out.i_crit_edge:                 ; preds = %kmalloc.exit.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end.i.2:                                       ; preds = %kmalloc.exit.i.2
  %25 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map_reg.i, align 4
  %div.i.2 = sdiv i32 20, %call.i
  %call5.i.2 = tail call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 3584, ptr noundef nonnull %call7.i.i.2, i32 noundef %div.i.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2)
  %tobool6.not.i.2 = icmp eq i32 %call5.i.2, 0
  br i1 %tobool6.not.i.2, label %for.body14.i.preheader.2, label %if.end.i.2.for.inc21.i.2_crit_edge

if.end.i.2.for.inc21.i.2_crit_edge:               ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc21.i.2

for.body14.i.preheader.2:                         ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %reg.2.ph.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 917504, ptr %reg.2.ph.i.1, align 4
  %28 = ptrtoint ptr %call7.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i.i.2, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %val.i.2 = getelementptr inbounds %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 0, i32 1
  %31 = ptrtoint ptr %val.i.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val.i.2, align 4
  %incdec.ptr.i.2 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 1
  %32 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 68026368, ptr %incdec.ptr.i.2, align 4
  %add.ptr.i.2.1 = getelementptr i8, ptr %call7.i.i.2, i32 4
  %33 = ptrtoint ptr %add.ptr.i.2.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.2.1, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %val.i.2.1 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 1, i32 1
  %36 = ptrtoint ptr %val.i.2.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val.i.2.1, align 4
  %incdec.ptr.i.2.1 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 2
  %37 = ptrtoint ptr %incdec.ptr.i.2.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 135135232, ptr %incdec.ptr.i.2.1, align 4
  %add.ptr.i.2.2 = getelementptr i8, ptr %call7.i.i.2, i32 8
  %38 = ptrtoint ptr %add.ptr.i.2.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.2.2, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %val.i.2.2 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 2, i32 1
  %41 = ptrtoint ptr %val.i.2.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val.i.2.2, align 4
  %incdec.ptr.i.2.2 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 3
  %42 = ptrtoint ptr %incdec.ptr.i.2.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 202244096, ptr %incdec.ptr.i.2.2, align 4
  %add.ptr.i.2.3 = getelementptr i8, ptr %call7.i.i.2, i32 12
  %43 = ptrtoint ptr %add.ptr.i.2.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.2.3, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %val.i.2.3 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 3, i32 1
  %46 = ptrtoint ptr %val.i.2.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %val.i.2.3, align 4
  %incdec.ptr.i.2.3 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 4
  %47 = ptrtoint ptr %incdec.ptr.i.2.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 269352960, ptr %incdec.ptr.i.2.3, align 4
  %add.ptr.i.2.4 = getelementptr i8, ptr %call7.i.i.2, i32 16
  %48 = ptrtoint ptr %add.ptr.i.2.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.2.4, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %val.i.2.4 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 4, i32 1
  %51 = ptrtoint ptr %val.i.2.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val.i.2.4, align 4
  %incdec.ptr.i.2.4 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %reg.2.ph.i.1, i32 5
  br label %for.inc21.i.2

for.inc21.i.2:                                    ; preds = %for.body14.i.preheader.2, %if.end.i.2.for.inc21.i.2_crit_edge
  %reg.2.ph.i.2 = phi ptr [ %reg.2.ph.i.1, %if.end.i.2.for.inc21.i.2_crit_edge ], [ %incdec.ptr.i.2.4, %for.body14.i.preheader.2 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.2) #6
  br label %out.i

out.i:                                            ; preds = %for.inc21.i.2, %kmalloc.exit.i.2.out.i_crit_edge, %kmalloc.exit.i.1.out.i_crit_edge
  %reg.0.lcssa.i = phi ptr [ %reg.2.ph.i, %kmalloc.exit.i.1.out.i_crit_edge ], [ %reg.2.ph.i.1, %kmalloc.exit.i.2.out.i_crit_edge ], [ %reg.2.ph.i.2, %for.inc21.i.2 ]
  %tobool.not.i.i = icmp eq ptr %arrayidx13, %reg.0.lcssa.i
  br i1 %tobool.not.i.i, label %out.i.mcp251xfd_dump_tef_ring.exit_crit_edge, label %if.end.i41.i

out.i.mcp251xfd_dump_tef_ring.exit_crit_edge:     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_dump_tef_ring.exit

if.end.i41.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %arrayidx13 to i32
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %reg.0.lcssa.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %52 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1296246040, ptr %call, align 4
  %type.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %call, i32 0, i32 1
  %53 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %type.i.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %mul8) #6
  %offset.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %call, i32 0, i32 2
  %55 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %offset.i.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub.i.i) #6
  %len6.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %call, i32 0, i32 3
  %57 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %len6.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.mcp251xfd_dump_object_header, ptr %call, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx13, i32 %sub.ptr.sub.i.i
  br label %mcp251xfd_dump_tef_ring.exit

mcp251xfd_dump_tef_ring.exit:                     ; preds = %if.end.i41.i, %out.i.mcp251xfd_dump_tef_ring.exit_crit_edge, %kmalloc.exit.i.mcp251xfd_dump_tef_ring.exit_crit_edge
  %iter.sroa.25.0 = phi ptr [ %arrayidx13, %out.i.mcp251xfd_dump_tef_ring.exit_crit_edge ], [ %add.ptr.i.i, %if.end.i41.i ], [ %arrayidx13, %kmalloc.exit.i.mcp251xfd_dump_tef_ring.exit_crit_edge ]
  %iter.sroa.9.0 = phi ptr [ %call, %out.i.mcp251xfd_dump_tef_ring.exit_crit_edge ], [ %incdec.ptr.i.i, %if.end.i41.i ], [ %call, %kmalloc.exit.i.mcp251xfd_dump_tef_ring.exit_crit_edge ]
  %tef1.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14
  %58 = ptrtoint ptr %tef1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tef1.i, align 128
  %tail.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 14, i32 0, i32 1
  %60 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail.i, align 4
  %obj_num.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %62 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %obj_num.i, align 2
  %conv.i36 = zext i8 %63 to i32
  %64 = ptrtoint ptr %iter.sroa.25.0 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %iter.sroa.25.0, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  %val3.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 0, i32 1
  %66 = ptrtoint ptr %val3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %val3.i.i, align 4
  %incdec.ptr.i.i37 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 1
  %67 = ptrtoint ptr %incdec.ptr.i.i37 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16777216, ptr %incdec.ptr.i.i37, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  %val3.1.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 1, i32 1
  %69 = ptrtoint ptr %val3.1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %val3.1.i.i, align 4
  %incdec.ptr.1.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 2
  %70 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 33554432, ptr %incdec.ptr.1.i.i, align 4
  %val3.2.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 2, i32 1
  %71 = ptrtoint ptr %val3.2.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %val3.2.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 3
  %72 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 50331648, ptr %incdec.ptr.2.i.i, align 4
  %val3.3.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 3, i32 1
  %73 = ptrtoint ptr %val3.3.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %val3.3.i.i, align 4
  %incdec.ptr.3.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 4
  %74 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 67108864, ptr %incdec.ptr.3.i.i, align 4
  %val3.4.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 4, i32 1
  %75 = ptrtoint ptr %val3.4.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %val3.4.i.i, align 4
  %incdec.ptr.4.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 5
  %76 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 83886080, ptr %incdec.ptr.4.i.i, align 4
  %77 = shl nuw i32 %conv.i36, 24
  %val3.5.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 5, i32 1
  %78 = ptrtoint ptr %val3.5.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %val3.5.i.i, align 4
  %incdec.ptr.5.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 6
  %79 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 100663296, ptr %incdec.ptr.5.i.i, align 4
  %val3.6.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 6, i32 1
  %80 = ptrtoint ptr %val3.6.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 201326592, ptr %val3.6.i.i, align 4
  %incdec.ptr.6.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.0, i32 7
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %iter.sroa.25.0 to i32
  %81 = ptrtoint ptr %iter.sroa.9.0 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1296246040, ptr %iter.sroa.9.0, align 4
  %type.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.0, i32 0, i32 1
  %82 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 16777216, ptr %type.i.i.i, align 4
  %sub.ptr.rhs.cast4.i.i.i = ptrtoint ptr %call to i32
  %sub.ptr.sub5.i.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.rhs.cast4.i.i.i
  %83 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub5.i.i.i) #6
  %offset.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.0, i32 0, i32 2
  %84 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %offset.i.i.i, align 4
  %len6.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.0, i32 0, i32 3
  %85 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 939524096, ptr %len6.i.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.0, i32 1
  %rx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %86 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp12.not.i = icmp eq i8 %87, 0
  br i1 %cmp12.not.i, label %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_tx_ring.exit_crit_edge, label %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge

mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge: ; preds = %mcp251xfd_dump_tef_ring.exit
  br label %mcp251xfd_dump_rx_ring_one.exit.i

mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_tx_ring.exit_crit_edge: ; preds = %mcp251xfd_dump_tef_ring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_dump_tx_ring.exit

mcp251xfd_dump_rx_ring_one.exit.i:                ; preds = %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge
  %iter.sroa.25.2 = phi ptr [ %incdec.ptr.6.i.i.i, %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ], [ %incdec.ptr.6.i.i, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ]
  %iter.sroa.9.2 = phi ptr [ %incdec.ptr.i.i.i.i, %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ], [ %incdec.ptr.i.i.i, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ]
  %i.014.i = phi i32 [ %inc.i41, %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ], [ 0, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ]
  %rx_ring.0.in13.i = phi ptr [ %add.ptr4.i, %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ], [ %rx.i, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge ]
  %88 = ptrtoint ptr %rx_ring.0.in13.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %rx_ring.0.i = load ptr, ptr %rx_ring.0.in13.i, align 4
  %89 = ptrtoint ptr %rx_ring.0.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_ring.0.i, align 128
  %tail.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0.i, i32 0, i32 1
  %91 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0.i, i32 0, i32 2
  %93 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %94 to i32
  %nr.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0.i, i32 0, i32 3
  %95 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %nr.i.i, align 2
  %conv9.i.i = zext i8 %96 to i32
  %fifo_nr.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0.i, i32 0, i32 4
  %97 = ptrtoint ptr %fifo_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %fifo_nr.i.i, align 1
  %conv13.i.i = zext i8 %98 to i32
  %obj_num.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0.i, i32 0, i32 5
  %99 = ptrtoint ptr %obj_num.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %obj_num.i.i, align 4
  %conv17.i.i = zext i8 %100 to i32
  %obj_size.i.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0.i, i32 0, i32 6
  %101 = ptrtoint ptr %obj_size.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %obj_size.i.i, align 1
  %conv21.i.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %iter.sroa.25.2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %iter.sroa.25.2, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  %val3.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 0, i32 1
  %105 = ptrtoint ptr %val3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %val3.i.i.i, align 4
  %incdec.ptr.i.i.i39 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 1
  %106 = ptrtoint ptr %incdec.ptr.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 16777216, ptr %incdec.ptr.i.i.i39, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %92) #6
  %val3.1.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 1, i32 1
  %108 = ptrtoint ptr %val3.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %val3.1.i.i.i, align 4
  %incdec.ptr.1.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 2
  %109 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 33554432, ptr %incdec.ptr.1.i.i.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #6
  %val3.2.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 2, i32 1
  %111 = ptrtoint ptr %val3.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %val3.2.i.i.i, align 4
  %incdec.ptr.2.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 3
  %112 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 50331648, ptr %incdec.ptr.2.i.i.i, align 4
  %113 = shl nuw i32 %conv9.i.i, 24
  %val3.3.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 3, i32 1
  %114 = ptrtoint ptr %val3.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %val3.3.i.i.i, align 4
  %incdec.ptr.3.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 4
  %115 = ptrtoint ptr %incdec.ptr.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 67108864, ptr %incdec.ptr.3.i.i.i, align 4
  %116 = shl nuw i32 %conv13.i.i, 24
  %val3.4.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 4, i32 1
  %117 = ptrtoint ptr %val3.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %val3.4.i.i.i, align 4
  %incdec.ptr.4.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 5
  %118 = ptrtoint ptr %incdec.ptr.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 83886080, ptr %incdec.ptr.4.i.i.i, align 4
  %119 = shl nuw i32 %conv17.i.i, 24
  %val3.5.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 5, i32 1
  %120 = ptrtoint ptr %val3.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %val3.5.i.i.i, align 4
  %incdec.ptr.5.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 6
  %121 = ptrtoint ptr %incdec.ptr.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 100663296, ptr %incdec.ptr.5.i.i.i, align 4
  %122 = shl nuw i32 %conv21.i.i, 24
  %val3.6.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 6, i32 1
  %123 = ptrtoint ptr %val3.6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %val3.6.i.i.i, align 4
  %incdec.ptr.6.i.i.i = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.2, i32 7
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %iter.sroa.25.2 to i32
  %124 = ptrtoint ptr %iter.sroa.9.2 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1296246040, ptr %iter.sroa.9.2, align 4
  %type.i.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.2, i32 0, i32 1
  %125 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 33554432, ptr %type.i.i.i.i, align 4
  %sub.ptr.sub5.i.i.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i.i, %sub.ptr.rhs.cast4.i.i.i
  %126 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub5.i.i.i.i) #6
  %offset.i.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.2, i32 0, i32 2
  %127 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %offset.i.i.i.i, align 4
  %len6.i.i.i.i = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.2, i32 0, i32 3
  %128 = ptrtoint ptr %len6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 939524096, ptr %len6.i.i.i.i, align 4
  %incdec.ptr.i.i.i.i = getelementptr %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.2, i32 1
  %inc.i41 = add nuw nsw i32 %i.014.i, 1
  %add.ptr4.i = getelementptr ptr, ptr %rx.i, i32 %inc.i41
  %129 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %rx_ring_num, align 4
  %conv.i42 = zext i8 %130 to i32
  %cmp.i = icmp ult i32 %inc.i41, %conv.i42
  br i1 %cmp.i, label %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge, label %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_tx_ring.exit_crit_edge

mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_tx_ring.exit_crit_edge: ; preds = %mcp251xfd_dump_rx_ring_one.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_dump_tx_ring.exit

mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_rx_ring_one.exit.i_crit_edge: ; preds = %mcp251xfd_dump_rx_ring_one.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp251xfd_dump_rx_ring_one.exit.i

mcp251xfd_dump_tx_ring.exit:                      ; preds = %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_tx_ring.exit_crit_edge, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_tx_ring.exit_crit_edge
  %iter.sroa.25.4 = phi ptr [ %incdec.ptr.6.i.i, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_tx_ring.exit_crit_edge ], [ %incdec.ptr.6.i.i.i, %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_tx_ring.exit_crit_edge ]
  %iter.sroa.9.4 = phi ptr [ %incdec.ptr.i.i.i, %mcp251xfd_dump_tef_ring.exit.mcp251xfd_dump_tx_ring.exit_crit_edge ], [ %incdec.ptr.i.i.i.i, %mcp251xfd_dump_rx_ring_one.exit.i.mcp251xfd_dump_tx_ring.exit_crit_edge ]
  %tx1.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15
  %131 = ptrtoint ptr %tx1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx1.i, align 128
  %tail.i43 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 1
  %133 = ptrtoint ptr %tail.i43 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tail.i43, align 4
  %base.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 2
  %135 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %base.i, align 8
  %conv.i44 = zext i16 %136 to i32
  %137 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %obj_num.i, align 2
  %conv16.i = zext i8 %138 to i32
  %obj_size.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 4
  %139 = ptrtoint ptr %obj_size.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %obj_size.i, align 1
  %conv20.i = zext i8 %140 to i32
  %141 = ptrtoint ptr %iter.sroa.25.4 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %iter.sroa.25.4, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %132) #6
  %val3.i.i47 = getelementptr inbounds %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 0, i32 1
  %143 = ptrtoint ptr %val3.i.i47 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %val3.i.i47, align 4
  %incdec.ptr.i.i48 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 1
  %144 = ptrtoint ptr %incdec.ptr.i.i48 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 16777216, ptr %incdec.ptr.i.i48, align 4
  %145 = tail call i32 @llvm.bswap.i32(i32 %134) #6
  %val3.1.i.i49 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 1, i32 1
  %146 = ptrtoint ptr %val3.1.i.i49 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %val3.1.i.i49, align 4
  %incdec.ptr.1.i.i50 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 2
  %147 = ptrtoint ptr %incdec.ptr.1.i.i50 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 33554432, ptr %incdec.ptr.1.i.i50, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %conv.i44) #6
  %val3.2.i.i51 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 2, i32 1
  %149 = ptrtoint ptr %val3.2.i.i51 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %val3.2.i.i51, align 4
  %incdec.ptr.2.i.i52 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 3
  %150 = ptrtoint ptr %incdec.ptr.2.i.i52 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 50331648, ptr %incdec.ptr.2.i.i52, align 4
  %val3.3.i.i53 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 3, i32 1
  %151 = ptrtoint ptr %val3.3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %val3.3.i.i53, align 4
  %incdec.ptr.3.i.i54 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 4
  %152 = ptrtoint ptr %incdec.ptr.3.i.i54 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 67108864, ptr %incdec.ptr.3.i.i54, align 4
  %val3.4.i.i55 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 4, i32 1
  %153 = ptrtoint ptr %val3.4.i.i55 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 16777216, ptr %val3.4.i.i55, align 4
  %incdec.ptr.4.i.i56 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 5
  %154 = ptrtoint ptr %incdec.ptr.4.i.i56 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 83886080, ptr %incdec.ptr.4.i.i56, align 4
  %155 = shl nuw i32 %conv16.i, 24
  %val3.5.i.i57 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 5, i32 1
  %156 = ptrtoint ptr %val3.5.i.i57 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %val3.5.i.i57, align 4
  %incdec.ptr.5.i.i58 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 6
  %157 = ptrtoint ptr %incdec.ptr.5.i.i58 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 100663296, ptr %incdec.ptr.5.i.i58, align 4
  %158 = shl nuw i32 %conv20.i, 24
  %val3.6.i.i59 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 6, i32 1
  %159 = ptrtoint ptr %val3.6.i.i59 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %val3.6.i.i59, align 4
  %incdec.ptr.6.i.i60 = getelementptr %struct.mcp251xfd_dump_object_reg, ptr %iter.sroa.25.4, i32 7
  %sub.ptr.rhs.cast.i.i.i62 = ptrtoint ptr %iter.sroa.25.4 to i32
  %160 = ptrtoint ptr %iter.sroa.9.4 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1296246040, ptr %iter.sroa.9.4, align 4
  %type.i.i.i66 = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 0, i32 1
  %161 = ptrtoint ptr %type.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 50331648, ptr %type.i.i.i66, align 4
  %sub.ptr.sub5.i.i.i69 = sub i32 %sub.ptr.rhs.cast.i.i.i62, %sub.ptr.rhs.cast4.i.i.i
  %162 = tail call i32 @llvm.bswap.i32(i32 %sub.ptr.sub5.i.i.i69) #6
  %offset.i.i.i70 = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 0, i32 2
  %163 = ptrtoint ptr %offset.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %offset.i.i.i70, align 4
  %len6.i.i.i71 = getelementptr inbounds %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 0, i32 3
  %164 = ptrtoint ptr %len6.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 939524096, ptr %len6.i.i.i71, align 4
  %incdec.ptr.i.i.i72 = getelementptr %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 1
  %165 = ptrtoint ptr %incdec.ptr.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1296246040, ptr %incdec.ptr.i.i.i72, align 4
  %type.i = getelementptr %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 1, i32 1
  %166 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %type.i, align 4
  %offset.i = getelementptr %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 1, i32 2
  %167 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %offset.i, align 4
  %len.i = getelementptr %struct.mcp251xfd_dump_object_header, ptr %iter.sroa.9.4, i32 1, i32 3
  %168 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %len.i, align 4
  %spi = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %169 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %spi, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr.6.i.i60 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.i.i.i
  tail call void @dev_coredumpv(ptr noundef %170, ptr noundef nonnull %call, i32 noundef %sub.ptr.sub, i32 noundef 3264) #6
  br label %cleanup

cleanup:                                          ; preds = %mcp251xfd_dump_tx_ring.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-dump.c", i32 269, i32 27}
!2 = distinct !{null, !3, !"mcp251xfd_dump_reg_space", i1 false, i1 false}
!3 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-dump.c", i32 31, i32 46}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
