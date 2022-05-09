; ModuleID = '/llk/IR_all_yes/drivers/net/can/m_can/tcan4x5x-regmap.c_pt.bc'
source_filename = "../drivers/net/can/m_can/tcan4x5x-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.tcan4x5x_priv = type { %struct.m_can_classdev, ptr, ptr, ptr, ptr, ptr, ptr, [96 x i8], %struct.tcan4x5x_map_buf, %struct.tcan4x5x_map_buf }
%struct.m_can_classdev = type { %struct.can_priv, %struct.can_rx_offload, %struct.napi_struct, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [7 x %struct.mram_cfg] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mram_cfg = type { i16, i8 }
%struct.tcan4x5x_map_buf = type { %struct.tcan4x5x_buf_cmd, [1024 x i8], [124 x i8] }
%struct.tcan4x5x_buf_cmd = type <{ i8, i16, i8 }>
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@tcan4x5x_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tcan4x5x_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @tcan4x5x_regmap_write, ptr @tcan4x5x_regmap_gather_write, ptr null, ptr null, ptr null, ptr @tcan4x5x_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 1, i32 1, i32 256, i32 256, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tcan4x5x_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 24, i32 4, i32 8, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 34812, ptr @tcan4x5x_reg_table, ptr @tcan4x5x_reg_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 1090519040, i32 1627389952, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tcan4x5x_regmap:133:(&tcan4x5x_regmap)->lock\00", [51 x i8] zeroinitializer }, align 32
@tcan4x5x_reg_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tcan4x5x_reg_table_yes_range, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tcan4x5x_reg_table_yes_range = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 44 }, %struct.regmap_range { i32 2048, i32 2108 }, %struct.regmap_range { i32 4096, i32 4348 }, %struct.regmap_range { i32 32768, i32 34812 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"tcan4x5x_bus\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 120, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"tcan4x5x_regmap\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 105, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 132, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"tcan4x5x_reg_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 100, i32 41 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"tcan4x5x_reg_table_yes_range\00", align 1
@___asan_gen_.17 = private constant [43 x i8] c"../drivers/net/can/m_can/tcan4x5x-regmap.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 93, i32 34 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @tcan4x5x_regmap_init._key, ptr @tcan4x5x_bus, ptr @tcan4x5x_regmap, ptr @.str, ptr @tcan4x5x_reg_table, ptr @tcan4x5x_reg_table_yes_range], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_reg_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_reg_table_yes_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcan4x5x_regmap_init(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.tcan4x5x_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %call = tail call ptr @__devm_regmap_init(ptr noundef %1, ptr noundef nonnull @tcan4x5x_bus, ptr noundef %1, ptr noundef nonnull @tcan4x5x_regmap, ptr noundef nonnull @tcan4x5x_regmap_init._key, ptr noundef nonnull @.str) #3
  %regmap = getelementptr inbounds %struct.tcan4x5x_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %regmap, align 8
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_regmap_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %sub = add i32 %count, -4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %map_buf_tx.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #3
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map_buf_tx.i, ptr %xfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %len.i, align 4
  %6 = call ptr @memcpy(ptr %map_buf_tx.i, ptr %data, i32 3)
  %conv.i = trunc i32 %sub to i8
  %7 = lshr i8 %conv.i, 2
  %len2.i.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %len2.i.i, align 1
  %data.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9, i32 1
  %9 = call ptr @memcpy(ptr %data.i, ptr %add.ptr, i32 %sub)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #3
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #3
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.tcan4x5x_regmap_gather_write.exit_crit_edge

entry.tcan4x5x_regmap_gather_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %tcan4x5x_regmap_gather_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %tcan4x5x_regmap_gather_write.exit

tcan4x5x_regmap_gather_write.exit:                ; preds = %if.end.i.i.i.i.i.i, %entry.tcan4x5x_regmap_gather_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #3
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_regmap_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_len, ptr nocapture noundef readonly %val, i32 noundef %val_len) #0 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_tx = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #3
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map_buf_tx, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %add = add i32 %val_len, 4
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %len, align 4
  %6 = call ptr @memcpy(ptr %map_buf_tx, ptr %reg, i32 3)
  %conv = trunc i32 %val_len to i8
  %7 = lshr i8 %conv, 2
  %len2.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %len2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %len2.i, align 1
  %data = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9, i32 1
  %9 = call ptr @memcpy(ptr %data, ptr %val, i32 %val_len)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #3
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_sync_transfer.exit_crit_edge

entry.spi_sync_transfer.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %entry.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_regmap_read(ptr noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_len, ptr noundef %val_buf, i32 noundef %val_len) #0 align 64 {
entry:
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_tx = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #3
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map_buf_tx, ptr %xfer, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #3
  %5 = getelementptr inbounds i8, ptr %msg, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %15 = call ptr @memcpy(ptr %map_buf_tx, ptr %reg_buf, i32 3)
  %conv = trunc i32 %val_len to i8
  %16 = lshr i8 %conv, 2
  %len2.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %len2.i, align 1
  %controller = getelementptr inbounds %struct.spi_device, ptr %context, i32 0, i32 1
  %18 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 4
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %spi_message_add_tail.exit
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %len, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %val_buf, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %val_len, ptr %len6, align 4
  %transfer_list.i45 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i47 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i45, ptr noundef %27, ptr noundef nonnull %msg) #3
  br i1 %call.i.i.i47, label %if.end.i.i.i49, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.i.i49:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i45, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg, ptr %transfer_list.i45, align 4
  %prev3.i.i.i48 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i48, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i45, ptr %27, align 4
  br label %if.end

if.else:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %map_buf_rx = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 8
  %rx_buf9 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %32 = ptrtoint ptr %rx_buf9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %map_buf_rx, ptr %rx_buf9, align 4
  %add = add i32 %val_len, 4
  %len11 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %33 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %len11, align 4
  %data = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 9, i32 1
  %34 = call ptr @memset(ptr %data, i32 0, i32 %val_len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i.i49, %if.then.if.end_crit_edge
  %call12 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %35 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller, align 8
  %flags17 = getelementptr inbounds %struct.spi_controller, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %flags17 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags17, align 4
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool20.not = icmp eq i16 %39, 0
  br i1 %tobool20.not, label %if.then21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %data22 = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 8, i32 1
  %40 = call ptr @memcpy(ptr %val_buf, ptr %data22, i32 %val_len)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #3
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #3
  ret i32 %call12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @tcan4x5x_regmap_init._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/net/can/m_can/tcan4x5x-regmap.c", i32 132, i32 17}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tcan4x5x_bus, !4, !"tcan4x5x_bus", i1 false, i1 false}
!4 = !{!"../drivers/net/can/m_can/tcan4x5x-regmap.c", i32 120, i32 32}
!5 = !{ptr @tcan4x5x_regmap, !6, !"tcan4x5x_regmap", i1 false, i1 false}
!6 = !{!"../drivers/net/can/m_can/tcan4x5x-regmap.c", i32 105, i32 35}
!7 = !{ptr @tcan4x5x_reg_table, !8, !"tcan4x5x_reg_table", i1 false, i1 false}
!8 = !{!"../drivers/net/can/m_can/tcan4x5x-regmap.c", i32 100, i32 41}
!9 = !{ptr @tcan4x5x_reg_table_yes_range, !10, !"tcan4x5x_reg_table_yes_range", i1 false, i1 false}
!10 = !{!"../drivers/net/can/m_can/tcan4x5x-regmap.c", i32 93, i32 34}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
