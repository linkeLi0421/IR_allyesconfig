; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/qca_7k.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/qca_7k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qcaspi = type { ptr, ptr, ptr, %struct.tx_ring, %struct.qcaspi_stats, ptr, i32, i8, %struct.qcafrm_handle, ptr, i32, i32, i16, ptr, i32, i8, i16 }
%struct.tx_ring = type { [10 x ptr], i16, i16, i16, i16 }
%struct.qcaspi_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qcafrm_handle = type { i32, i32, i16, i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi error\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/net/ethernet/qualcomm/qca_7k.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 38, i32 27 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcaspi_spi_error(ptr nocapture noundef %qca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sync = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %0 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sync, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qca, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  %4 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %sync, align 8
  %spi_err = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 10
  %5 = ptrtoint ptr %spi_err to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %spi_err, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %spi_err, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcaspi_read_register(ptr nocapture noundef %qca, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %rx_data = alloca i16, align 2
  %tx_data = alloca i16, align 2
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx_data) #4
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rx_data, align 2, !annotation !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_data) #4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #4
  %1 = getelementptr inbounds i8, ptr %transfer, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 188)
  %3 = getelementptr inbounds i8, ptr %msg, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %9 = or i16 %reg, -16384
  %10 = ptrtoint ptr %tx_data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %tx_data, align 2
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %result, align 2
  %12 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_data, ptr %transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_data, ptr %rx_buf, align 4
  %len5 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %len5, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %legacy_mode = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 15
  %20 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %legacy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %spi_message_add_tail.exit.if.end_crit_edge, label %if.then

spi_message_add_tail.exit.if.end_crit_edge:       ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %spi_dev = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 1
  %22 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi_dev, align 4
  %call = call i32 @spi_sync(ptr noundef %23, ptr noundef nonnull %msg) #4
  %24 = call ptr @memset(ptr %3, i32 0, i32 40)
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg, ptr %msg, align 4
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %28 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_message_add_tail.exit.if.end_crit_edge
  %transfer_list.i25 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i27 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i25, ptr noundef %30, ptr noundef nonnull %msg) #4
  br i1 %call.i.i.i27, label %if.end.i.i.i29, label %if.end.spi_message_add_tail.exit30_crit_edge

if.end.spi_message_add_tail.exit30_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit30

if.end.i.i.i29:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i25, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg, ptr %transfer_list.i25, align 4
  %prev3.i.i.i28 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i28, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i25, ptr %30, align 4
  br label %spi_message_add_tail.exit30

spi_message_add_tail.exit30:                      ; preds = %if.end.i.i.i29, %if.end.spi_message_add_tail.exit30_crit_edge
  %spi_dev8 = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 1
  %35 = ptrtoint ptr %spi_dev8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi_dev8, align 4
  %call9 = call i32 @spi_sync(ptr noundef %36, ptr noundef nonnull %msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %spi_message_add_tail.exit30.if.then14_crit_edge

spi_message_add_tail.exit30.if.then14_crit_edge:  ; preds = %spi_message_add_tail.exit30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end12:                                         ; preds = %spi_message_add_tail.exit30
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not = icmp eq i32 %38, 0
  br i1 %tobool13.not, label %if.else, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %spi_message_add_tail.exit30.if.then14_crit_edge
  %ret.034 = phi i32 [ %38, %if.end12.if.then14_crit_edge ], [ %call9, %spi_message_add_tail.exit30.if.then14_crit_edge ]
  %sync.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %39 = ptrtoint ptr %sync.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sync.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp.not.i = icmp eq i8 %40, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then14.if.end15_crit_edge

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str) #7
  %43 = ptrtoint ptr %sync.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sync.i, align 8
  %spi_err.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 10
  %44 = ptrtoint ptr %spi_err.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %spi_err.i, align 8
  %inc.i = add i64 %45, 1
  store i64 %inc.i, ptr %spi_err.i, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %rx_data to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rx_data, align 2
  %48 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %result, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end.i, %if.then14.if.end15_crit_edge
  %ret.033 = phi i32 [ 0, %if.else ], [ %ret.034, %if.then14.if.end15_crit_edge ], [ %ret.034, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx_data) #4
  ret i32 %ret.033
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcaspi_write_register(ptr nocapture noundef %qca, i16 noundef zeroext %reg, i16 noundef zeroext %value, i32 noundef %retry) local_unnamed_addr #0 align 64 {
entry:
  %tx_data.i = alloca [2 x i16], align 2
  %transfer.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i = alloca %struct.spi_message, align 4
  %confirmed = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %confirmed) #4
  %0 = ptrtoint ptr %confirmed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %confirmed, align 2, !annotation !11
  %1 = getelementptr inbounds [2 x i16], ptr %tx_data.i, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %4 = or i16 %reg, 16384
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %arrayidx7.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i, i32 0, i32 1
  %len10.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i, i32 0, i32 1, i32 2
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %legacy_mode.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 15
  %spi_dev.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 1
  %transfer_list.i29.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i, i32 0, i32 1, i32 18
  %prev3.i.i.i32.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer.i, i32 0, i32 1, i32 18, i32 1
  %status.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry)
  %tobool1.not = icmp eq i32 %retry, 0
  %write_verify_failed = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 11
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end12.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_data.i) #4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer.i) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #4
  %5 = call ptr @memset(ptr %2, i32 0, i32 188)
  %6 = call ptr @memset(ptr %3, i32 0, i32 40)
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %10 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %11 = ptrtoint ptr %tx_data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %4, ptr %tx_data.i, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %value, ptr %1, align 2
  %13 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx_data.i, ptr %transfer.i, align 4
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len.i, align 4
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %arrayidx7.i, align 4
  %16 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len10.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body.spi_message_add_tail.exit.i_crit_edge

do.body.spi_message_add_tail.exit.i_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %do.body.spi_message_add_tail.exit.i_crit_edge
  %21 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %legacy_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %spi_message_add_tail.exit.i.if.end.i_crit_edge, label %if.then.i

spi_message_add_tail.exit.i.if.end.i_crit_edge:   ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %spi_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi_dev.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %msg.i) #4
  %25 = call ptr @memset(ptr %3, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %28 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %29 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %spi_message_add_tail.exit.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i31.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i29.i, ptr noundef %31, ptr noundef nonnull %msg.i) #4
  br i1 %call.i.i.i31.i, label %if.end.i.i.i33.i, label %if.end.i.spi_message_add_tail.exit34.i_crit_edge

if.end.i.spi_message_add_tail.exit34.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit34.i

if.end.i.i.i33.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i29.i, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i, ptr %transfer_list.i29.i, align 4
  %34 = ptrtoint ptr %prev3.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i32.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i29.i, ptr %31, align 4
  br label %spi_message_add_tail.exit34.i

spi_message_add_tail.exit34.i:                    ; preds = %if.end.i.i.i33.i, %if.end.i.spi_message_add_tail.exit34.i_crit_edge
  %36 = ptrtoint ptr %spi_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi_dev.i, align 4
  %call14.i = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %msg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %spi_message_add_tail.exit34.i.if.then19.i_crit_edge

spi_message_add_tail.exit34.i.if.then19.i_crit_edge: ; preds = %spi_message_add_tail.exit34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.end17.i:                                       ; preds = %spi_message_add_tail.exit34.i
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool18.not.i = icmp eq i32 %39, 0
  br i1 %tobool18.not.i, label %if.end, label %if.end17.i.if.then19.i_crit_edge

if.end17.i.if.then19.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i.if.then19.i_crit_edge, %spi_message_add_tail.exit34.i.if.then19.i_crit_edge
  %ret.037.i = phi i32 [ %39, %if.end17.i.if.then19.i_crit_edge ], [ %call14.i, %spi_message_add_tail.exit34.i.if.then19.i_crit_edge ]
  %sync.i.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 7
  %40 = ptrtoint ptr %sync.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sync.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.not.i.i = icmp eq i8 %41, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then19.i.__qcaspi_write_register.exit.thread_crit_edge

if.then19.i.__qcaspi_write_register.exit.thread_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__qcaspi_write_register.exit.thread

if.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %qca to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qca, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str) #7
  %44 = ptrtoint ptr %sync.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %sync.i.i, align 8
  %spi_err.i.i = getelementptr inbounds %struct.qcaspi, ptr %qca, i32 0, i32 4, i32 10
  %45 = ptrtoint ptr %spi_err.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %spi_err.i.i, align 8
  %inc.i.i = add i64 %46, 1
  store i64 %inc.i.i, ptr %spi_err.i.i, align 8
  br label %__qcaspi_write_register.exit.thread

__qcaspi_write_register.exit.thread:              ; preds = %if.end.i.i, %if.then19.i.__qcaspi_write_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_data.i) #4
  br label %cleanup

if.end:                                           ; preds = %if.end17.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_data.i) #4
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @qcaspi_read_register(ptr noundef %qca, i16 noundef zeroext %reg, ptr noundef nonnull %confirmed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %47 = ptrtoint ptr %confirmed to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %confirmed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %value)
  %cmp.not = icmp eq i16 %48, %value
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %inc = add i32 %i.0, 1
  %49 = ptrtoint ptr %write_verify_failed to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %write_verify_failed, align 8
  %inc13 = add i64 %50, 1
  store i64 %inc13, ptr %write_verify_failed, align 8
  %cmp14.not = icmp sgt i32 %inc, %retry
  br i1 %cmp14.not, label %if.end12.cleanup_crit_edge, label %if.end12.do.body_crit_edge

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %__qcaspi_write_register.exit.thread
  %retval.0 = phi i32 [ %ret.037.i, %__qcaspi_write_register.exit.thread ], [ 1, %if.end12.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %confirmed) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/qca_7k.c", i32 38, i32 27}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
