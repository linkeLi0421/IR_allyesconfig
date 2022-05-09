; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/asix/ax88796c_spi.c_pt.bc'
source_filename = "../drivers/net/ethernet/asix/ax88796c_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.axspi_data = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], [6 x i8], [6 x i8], i8 }

@ax88796c_rx_cmd_buf = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0B\FF\FF\FF\FF", [27 x i8] zeroinitializer }, align 32
@ax88796c_tx_cmd_buf = dso_local constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\FF\FF\FF", [28 x i8] zeroinitializer }, align 32
@axspi_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() failed: ret = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axspi_wakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/asix/ax88796c_spi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axspi_wakeup._entry_ptr = internal global ptr @axspi_wakeup._entry, section ".printk_index", align 4
@axspi_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axspi_read_status\00", [46 x i8] zeroinitializer }, align 32
@axspi_read_status._entry_ptr = internal global ptr @axspi_read_status._entry, section ".printk_index", align 4
@axspi_read_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axspi_read_rxq\00", [17 x i8] zeroinitializer }, align 32
@axspi_read_rxq._entry_ptr = internal global ptr @axspi_read_rxq._entry, section ".printk_index", align 4
@axspi_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axspi_read_reg\00", [17 x i8] zeroinitializer }, align 32
@axspi_read_reg._entry_ptr = internal global ptr @axspi_read_reg._entry, section ".printk_index", align 4
@axspi_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axspi_write_reg\00", [16 x i8] zeroinitializer }, align 32
@axspi_write_reg._entry_ptr = internal global ptr @axspi_write_reg._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"ax88796c_rx_cmd_buf\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 16, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"ax88796c_tx_cmd_buf\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 17, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 27, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 39, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 67, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 90, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [44 x i8] c"../drivers/net/ethernet/asix/ax88796c_spi.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 112, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @axspi_read_reg._entry, ptr @axspi_read_reg._entry_ptr, ptr @axspi_read_rxq._entry, ptr @axspi_read_rxq._entry_ptr, ptr @axspi_read_status._entry, ptr @axspi_read_status._entry_ptr, ptr @axspi_wakeup._entry, ptr @axspi_wakeup._entry_ptr, ptr @axspi_write_reg._entry, ptr @axspi_write_reg._entry_ptr, ptr @ax88796c_rx_cmd_buf, ptr @ax88796c_tx_cmd_buf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_rx_cmd_buf to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_tx_cmd_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axspi_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axspi_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axspi_read_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axspi_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axspi_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axspi_wakeup(ptr noundef %ax_spi) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -85, ptr %cmd_buf, align 4
  %1 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax_spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd_buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %spi_write.exit.if.end_crit_edge, label %do.end

spi_write.exit.if.end_crit_edge:                  ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ax_spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_write.exit.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axspi_read_status(ptr noundef %ax_spi, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %cmd_buf, align 4
  %1 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax_spi, align 4
  %call = tail call i32 @spi_write_then_read(ptr noundef %2, ptr noundef %cmd_buf, i32 noundef 1, ptr noundef %status, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ax_spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %status, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axspi_read_rxq(ptr noundef %ax_spi, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_rx_xfer = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 2
  %cmd_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %cmd_buf, ptr @ax88796c_rx_cmd_buf, i32 5)
  %1 = ptrtoint ptr %spi_rx_xfer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmd_buf, ptr %spi_rx_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_buf, align 4
  %comp = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 5
  %3 = ptrtoint ptr %comp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i32 5, i32 2
  %len4 = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %len4, align 4
  %bits_per_word = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %rx_msg = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 1
  %transfer_list.i = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 0, i32 18
  %prev.i.i = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %8, ptr noundef %rx_msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %transfer_list.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rx_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %transfer_list.i, ptr %8, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 1
  %rx_buf5 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %rx_buf5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %rx_buf5, align 4
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %incdec.ptr, align 4
  %len7 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 1, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len, ptr %len7, align 4
  %bits_per_word8 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 1, i32 8
  %16 = ptrtoint ptr %bits_per_word8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %bits_per_word8, align 1
  %transfer_list.i33 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 1, i32 18
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i33, ptr noundef %18, ptr noundef %rx_msg) #5
  br i1 %call.i.i.i35, label %if.end.i.i.i37, label %spi_message_add_tail.exit.spi_message_add_tail.exit38_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit38_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit38

if.end.i.i.i37:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i33, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx_msg, ptr %transfer_list.i33, align 4
  %prev3.i.i.i36 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 2, i32 1, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i36, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i33, ptr %18, align 4
  br label %spi_message_add_tail.exit38

spi_message_add_tail.exit38:                      ; preds = %if.end.i.i.i37, %spi_message_add_tail.exit.spi_message_add_tail.exit38_crit_edge
  %23 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ax_spi, align 4
  %call = tail call i32 @spi_sync(ptr noundef %24, ptr noundef %rx_msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %spi_message_add_tail.exit38.if.end_crit_edge, label %do.end

spi_message_add_tail.exit38.if.end_crit_edge:     ; preds = %spi_message_add_tail.exit38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %spi_message_add_tail.exit38
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ax_spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_message_add_tail.exit38.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axspi_write_txq(ptr nocapture noundef readonly %ax_spi, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax_spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %2 = getelementptr inbounds i8, ptr %t.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 5
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 4, i32 3
  %cmd_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %cmd_buf, align 4
  %arrayidx2 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %reg, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %arrayidx4, align 2
  %arrayidx6 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayidx6, align 1
  %6 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ax_spi, align 4
  %rx_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 4
  %call = tail call i32 @spi_write_then_read(ptr noundef %7, ptr noundef %cmd_buf, i32 noundef %cond, ptr noundef %rx_buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ax_spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_buf, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #5
  %13 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %rx_buf, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i16 [ -1, %do.end ], [ %12, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext %reg, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buf = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 3
  %0 = getelementptr inbounds %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %0, align 4
  %2 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -40, ptr %cmd_buf, align 4
  %arrayidx3 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %reg, ptr %arrayidx3, align 1
  %conv = trunc i16 %value to i8
  %arrayidx5 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx5, align 2
  %5 = lshr i16 %value, 8
  %conv7 = trunc i16 %5 to i8
  %arrayidx9 = getelementptr %struct.axspi_data, ptr %ax_spi, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %arrayidx9, align 1
  %7 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ax_spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %9 = getelementptr inbounds i8, ptr %t.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd_buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %spi_write.exit.if.end_crit_edge, label %do.end

spi_write.exit.if.end_crit_edge:                  ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %ax_spi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ax_spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %call.i.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_write.exit.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @ax88796c_rx_cmd_buf, !1, !"ax88796c_rx_cmd_buf", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 16, i32 10}
!2 = !{ptr @ax88796c_tx_cmd_buf, !3, !"ax88796c_tx_cmd_buf", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 17, i32 10}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 27, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @axspi_wakeup._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @axspi_wakeup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 39, i32 3}
!14 = !{ptr @axspi_read_status._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @axspi_read_status._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 67, i32 3}
!18 = !{ptr @axspi_read_rxq._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @axspi_read_rxq._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 90, i32 3}
!22 = !{ptr @axspi_read_reg._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @axspi_read_reg._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/asix/ax88796c_spi.c", i32 112, i32 3}
!26 = !{ptr @axspi_write_reg._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @axspi_write_reg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
