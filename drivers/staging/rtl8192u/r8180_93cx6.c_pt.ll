; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r8180_93cx6.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r8180_93cx6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eprom_read(ptr noundef %dev, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %cmdreg.i112 = alloca i8, align 1
  %bit.i = alloca i8, align 1
  %cmdreg.i104 = alloca i8, align 1
  %cmdreg.i.i89 = alloca i8, align 1
  %cmdreg.i.i = alloca i8, align 1
  %cmdreg.i = alloca i8, align 1
  %addr_str = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr_str) #3
  %0 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %addr_str, i32 2
  %6 = call ptr @memset(ptr %5, i32 255, i32 14)
  %call1 = tail call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext -128) #3
  tail call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #3
  %epromtype = getelementptr i8, ptr %dev, i32 30124
  %8 = ptrtoint ptr %epromtype to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %epromtype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp eq i16 %9, 1
  %10 = trunc i32 %addr to i16
  %conv3 = and i16 %10, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 7
  %12 = getelementptr inbounds [8 x i16], ptr %addr_str, i32 0, i32 6
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv3, ptr %11, align 2
  %conv5 = and i16 %10, 2
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5, ptr %12, align 2
  %conv8 = and i16 %10, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv3.sink = phi i16 [ %conv8, %if.then ], [ %conv3, %entry.if.end_crit_edge ]
  %.sink129 = phi i16 [ 8, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %.sink128 = phi i16 [ 16, %if.then ], [ 4, %entry.if.end_crit_edge ]
  %.sink127 = phi i16 [ 32, %if.then ], [ 8, %entry.if.end_crit_edge ]
  %.sink126 = phi i16 [ 64, %if.then ], [ 16, %entry.if.end_crit_edge ]
  %.sink = phi i16 [ 128, %if.then ], [ 32, %entry.if.end_crit_edge ]
  %addr_len.0 = phi i32 [ 8, %if.then ], [ 6, %entry.if.end_crit_edge ]
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.sink, ptr %4, align 2
  %conv29 = and i16 %.sink129, %10
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv29, ptr %3, align 2
  %conv32 = and i16 %.sink128, %10
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv32, ptr %2, align 2
  %conv35 = and i16 %.sink127, %10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv35, ptr %1, align 2
  %conv38 = and i16 %.sink126, %10
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv38, ptr %0, align 2
  %conv41 = and i16 %.sink, %10
  %20 = ptrtoint ptr %addr_str to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv41, ptr %addr_str, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i) #3
  %21 = ptrtoint ptr %cmdreg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %cmdreg.i, align 1, !annotation !9
  %call.i = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.eprom_cs.exit_crit_edge

if.end.eprom_cs.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_cs.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %cmdreg.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cmdreg.i, align 1
  %.sink.i = or i8 %23, 8
  %call7.i = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %.sink.i) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 2147480) #3
  br label %eprom_cs.exit

eprom_cs.exit:                                    ; preds = %if.end.i, %if.end.eprom_cs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i) #3
  call fastcc void @eprom_ck_cycle(ptr noundef %dev)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i.i) #3
  %25 = ptrtoint ptr %cmdreg.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %cmdreg.i.i, align 1, !annotation !9
  %call.i.i = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %eprom_cs.exit.eprom_w.exit.i_crit_edge

eprom_cs.exit.eprom_w.exit.i_crit_edge:           ; preds = %eprom_cs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_w.exit.i

if.end.i.i:                                       ; preds = %eprom_cs.exit
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %cmdreg.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmdreg.i.i, align 1
  %.sink.i.i = or i8 %27, 2
  %call7.i.i = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %.sink.i.i) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 2147480) #3
  br label %eprom_w.exit.i

eprom_w.exit.i:                                   ; preds = %if.end.i.i, %eprom_cs.exit.eprom_w.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i.i) #3
  call fastcc void @eprom_ck_cycle(ptr noundef %dev) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i.i) #3
  %29 = ptrtoint ptr %cmdreg.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %cmdreg.i.i, align 1, !annotation !9
  %call.i.i.1 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %eprom_w.exit.i.eprom_w.exit.i.1_crit_edge

eprom_w.exit.i.eprom_w.exit.i.1_crit_edge:        ; preds = %eprom_w.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_w.exit.i.1

if.end.i.i.1:                                     ; preds = %eprom_w.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %cmdreg.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cmdreg.i.i, align 1
  %.sink.i.i.1 = or i8 %31, 2
  %call7.i.i.1 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %.sink.i.i.1) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 2147480) #3
  br label %eprom_w.exit.i.1

eprom_w.exit.i.1:                                 ; preds = %if.end.i.i.1, %eprom_w.exit.i.eprom_w.exit.i.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i.i) #3
  call fastcc void @eprom_ck_cycle(ptr noundef %dev) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i.i) #3
  %33 = ptrtoint ptr %cmdreg.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %cmdreg.i.i, align 1, !annotation !9
  %call.i.i.2 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool.not.i.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool.not.i.i.2, label %if.end.i.i.2, label %eprom_w.exit.i.1.eprom_w.exit.i.2_crit_edge

eprom_w.exit.i.1.eprom_w.exit.i.2_crit_edge:      ; preds = %eprom_w.exit.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_w.exit.i.2

if.end.i.i.2:                                     ; preds = %eprom_w.exit.i.1
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %cmdreg.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cmdreg.i.i, align 1
  %36 = and i8 %35, -3
  %call7.i.i.2 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %36) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 2147480) #3
  br label %eprom_w.exit.i.2

eprom_w.exit.i.2:                                 ; preds = %if.end.i.i.2, %eprom_w.exit.i.1.eprom_w.exit.i.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i.i) #3
  call fastcc void @eprom_ck_cycle(ptr noundef %dev) #3
  br label %for.body.i94

for.body.i94:                                     ; preds = %eprom_w.exit.i102.for.body.i94_crit_edge, %eprom_w.exit.i.2
  %i.05.i90 = phi i32 [ %inc.i100, %eprom_w.exit.i102.for.body.i94_crit_edge ], [ 0, %eprom_w.exit.i.2 ]
  %arrayidx.i91 = getelementptr i16, ptr %addr_str, i32 %i.05.i90
  %38 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i91, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i.i89) #3
  %40 = ptrtoint ptr %cmdreg.i.i89 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %cmdreg.i.i89, align 1, !annotation !9
  %call.i.i92 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i.i89) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92)
  %tobool.not.i.i93 = icmp eq i32 %call.i.i92, 0
  br i1 %tobool.not.i.i93, label %if.end.i.i99, label %for.body.i94.eprom_w.exit.i102_crit_edge

for.body.i94.eprom_w.exit.i102_crit_edge:         ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_w.exit.i102

if.end.i.i99:                                     ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool1.not.i.i95 = icmp eq i16 %39, 0
  %41 = ptrtoint ptr %cmdreg.i.i89 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cmdreg.i.i89, align 1
  %43 = and i8 %42, -3
  %masksel.i.i96 = select i1 %tobool1.not.i.i95, i8 0, i8 2
  %.sink.i.i97 = or i8 %43, %masksel.i.i96
  %call7.i.i98 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %.sink.i.i97) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 2147480) #3
  br label %eprom_w.exit.i102

eprom_w.exit.i102:                                ; preds = %if.end.i.i99, %for.body.i94.eprom_w.exit.i102_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i.i89) #3
  call fastcc void @eprom_ck_cycle(ptr noundef %dev) #3
  %inc.i100 = add nuw nsw i32 %i.05.i90, 1
  %exitcond.not.i101 = icmp eq i32 %inc.i100, %addr_len.0
  br i1 %exitcond.not.i101, label %eprom_send_bits_string.exit103, label %eprom_w.exit.i102.for.body.i94_crit_edge

eprom_w.exit.i102.for.body.i94_crit_edge:         ; preds = %eprom_w.exit.i102
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i94

eprom_send_bits_string.exit103:                   ; preds = %eprom_w.exit.i102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i104) #3
  %45 = ptrtoint ptr %cmdreg.i104 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %cmdreg.i104, align 1, !annotation !9
  %call.i105 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i104) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i108, label %eprom_send_bits_string.exit103.eprom_w.exit_crit_edge

eprom_send_bits_string.exit103.eprom_w.exit_crit_edge: ; preds = %eprom_send_bits_string.exit103
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_w.exit

if.end.i108:                                      ; preds = %eprom_send_bits_string.exit103
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %cmdreg.i104 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmdreg.i104, align 1
  %48 = and i8 %47, -3
  %call7.i107 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %48) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 2147480) #3
  br label %eprom_w.exit

eprom_w.exit:                                     ; preds = %if.end.i108, %eprom_send_bits_string.exit103.eprom_w.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i104) #3
  br label %for.body

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %eprom_w.exit
  %ret.0125 = phi i32 [ 0, %eprom_w.exit ], [ %or, %if.end51.for.body_crit_edge ]
  %i.0124 = phi i32 [ 0, %eprom_w.exit ], [ %inc, %if.end51.for.body_crit_edge ]
  call fastcc void @eprom_ck_cycle(ptr noundef %dev)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit.i) #3
  %50 = ptrtoint ptr %bit.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %bit.i, align 1, !annotation !9
  %call.i109 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %bit.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %eprom_r.exit.thread, label %eprom_r.exit

eprom_r.exit.thread:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 2147480) #3
  %52 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bit.i, align 1
  %54 = and i8 %53, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit.i) #3
  %conv47119122 = zext i8 %54 to i32
  br label %if.end51

eprom_r.exit:                                     ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit.i) #3
  %sext = shl i32 %call.i109, 16
  %conv47 = ashr exact i32 %sext, 16
  %55 = and i32 %call.i109, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp48.not = icmp eq i32 %55, 0
  br i1 %cmp48.not, label %eprom_r.exit.if.end51_crit_edge, label %eprom_r.exit.cleanup_crit_edge

eprom_r.exit.cleanup_crit_edge:                   ; preds = %eprom_r.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

eprom_r.exit.if.end51_crit_edge:                  ; preds = %eprom_r.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

if.end51:                                         ; preds = %eprom_r.exit.if.end51_crit_edge, %eprom_r.exit.thread
  %conv47121 = phi i32 [ %conv47119122, %eprom_r.exit.thread ], [ %conv47, %eprom_r.exit.if.end51_crit_edge ]
  %sub = sub nuw nsw i32 15, %i.0124
  %shl = shl nsw i32 %conv47121, %sub
  %or = or i32 %shl, %ret.0125
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg.i112) #3
  %56 = ptrtoint ptr %cmdreg.i112 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %cmdreg.i112, align 1, !annotation !9
  %call.i113 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg.i112) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end.i116, label %for.end.eprom_cs.exit117_crit_edge

for.end.eprom_cs.exit117_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %eprom_cs.exit117

if.end.i116:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %57 = ptrtoint ptr %cmdreg.i112 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cmdreg.i112, align 1
  %59 = and i8 %58, -9
  %call7.i115 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %59) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 2147480) #3
  br label %eprom_cs.exit117

eprom_cs.exit117:                                 ; preds = %if.end.i116, %for.end.eprom_cs.exit117_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg.i112) #3
  call fastcc void @eprom_ck_cycle(ptr noundef %dev)
  %call52 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext 0) #3
  br label %cleanup

cleanup:                                          ; preds = %eprom_cs.exit117, %eprom_r.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %eprom_cs.exit117 ], [ %conv47, %eprom_r.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr_str) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_byte_E(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_pci_posting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eprom_ck_cycle(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %cmdreg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdreg) #3
  %0 = ptrtoint ptr %cmdreg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmdreg, align 1, !annotation !9
  %call = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %cmdreg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmdreg, align 1
  %3 = or i8 %2, 4
  %call2 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %3) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 2147480) #3
  %call3 = call i32 @read_nic_byte_E(ptr noundef %dev, i32 noundef 65112, ptr noundef nonnull %cmdreg) #3
  %5 = ptrtoint ptr %cmdreg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmdreg, align 1
  %7 = and i8 %6, -5
  %call6 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 65112, i8 noundef zeroext %7) #3
  call void @force_pci_posting(ptr noundef %dev) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 2147480) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdreg) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_byte_E(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
