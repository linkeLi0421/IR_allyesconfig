; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/realtek/r8169_firmware.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/r8169_firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtl_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], %struct.rtl_fw_phy_action }
%struct.rtl_fw_phy_action = type { ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_info = type <{ i32, [32 x i8], i32, i32, i8 }>

@rtl_fw_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to load firmware %s (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl_fw_request_firmware\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/realtek/r8169_firmware.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl_fw_request_firmware._entry_ptr = internal global ptr @rtl_fw_request_firmware._entry, section ".printk_index", align 4
@rtl_fw_data_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid action 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl_fw_data_ok\00", [17 x i8] zeroinitializer }, align 32
@rtl_fw_data_ok._entry_ptr = internal global ptr @rtl_fw_data_ok._entry, section ".printk_index", align 4
@rtl_fw_data_ok._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Out of range of firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl_fw_data_ok._entry_ptr.9 = internal global ptr @rtl_fw_data_ok._entry.7, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.10 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 233, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 129, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [49 x i8] c"../drivers/net/ethernet/realtek/r8169_firmware.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 136, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @rtl_fw_data_ok._entry, ptr @rtl_fw_data_ok._entry.7, ptr @rtl_fw_data_ok._entry_ptr, ptr @rtl_fw_data_ok._entry_ptr.9, ptr @rtl_fw_request_firmware._entry, ptr @rtl_fw_request_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_fw_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_fw_data_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_fw_data_ok._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_fw_write_firmware(ptr noundef %tp, ptr nocapture noundef readonly %rtl_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_action = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 8
  %phy_read = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 1
  %size = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp90.not = icmp eq i32 %1, 0
  br i1 %cmp90.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_read, align 4
  %4 = ptrtoint ptr %rtl_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtl_fw, align 4
  %mac_mcu_write = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 2
  %mac_mcu_read = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %count.094 = phi i32 [ 0, %for.body.lr.ph ], [ %count.2.ph, %for.inc.for.body_crit_edge ]
  %predata.093 = phi i32 [ 0, %for.body.lr.ph ], [ %predata.2.ph, %for.inc.for.body_crit_edge ]
  %fw_read.092 = phi ptr [ %3, %for.body.lr.ph ], [ %fw_read.2.ph, %for.inc.for.body_crit_edge ]
  %fw_write.091 = phi ptr [ %5, %for.body.lr.ph ], [ %fw_write.2.ph, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %phy_action to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_action, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %index.095
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and = and i32 %10, 65535
  %and1 = lshr i32 %10, 16
  %shr = and i32 %and1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end:                                           ; preds = %for.body
  %shr2 = lshr i32 %10, 28
  %11 = zext i32 %shr2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr2, label %if.end.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 7, label %sw.bb13
    i32 8, label %sw.bb14
    i32 9, label %sw.bb15
    i32 10, label %sw.bb20
    i32 11, label %sw.bb25
    i32 12, label %sw.bb30
    i32 13, label %sw.bb31
    i32 14, label %sw.bb33
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %fw_read.092(ptr noundef %tp, i32 noundef %shr) #4
  %inc = add i32 %count.094, 1
  br label %for.inc

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %and, %predata.093
  br label %for.inc

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and5 = and i32 %and, %predata.093
  br label %for.inc

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.neg = xor i32 %shr, -1
  %sub = add i32 %index.095, %add.neg
  br label %for.inc

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %mac_mcu_write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_mcu_write, align 4
  %14 = ptrtoint ptr %mac_mcu_read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_mcu_read, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %rtl_fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtl_fw, align 4
  %18 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_read, align 4
  br label %for.inc

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %fw_write.091(ptr noundef %tp, i32 noundef %shr, i32 noundef %and) #4
  br label %for.inc

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %count.094, i32 %and)
  %cmp16 = icmp eq i32 %count.094, %and
  %inc18 = zext i1 %cmp16 to i32
  %spec.select = add nuw i32 %index.095, %inc18
  br label %for.inc

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %predata.093, i32 %and)
  %cmp21 = icmp eq i32 %predata.093, %and
  %add23 = select i1 %cmp21, i32 %shr, i32 0
  %spec.select76 = add i32 %add23, %index.095
  br label %for.inc

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %predata.093, i32 %and)
  %cmp26.not = icmp eq i32 %predata.093, %and
  %add28 = select i1 %cmp26.not, i32 0, i32 %shr
  %spec.select77 = add i32 %add28, %index.095
  br label %for.inc

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %fw_write.091(ptr noundef %tp, i32 noundef %shr, i32 noundef %predata.093) #4
  br label %for.inc

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add32 = add i32 %shr, %index.095
  br label %for.inc

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef %and) #4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb33, %sw.bb31, %sw.bb30, %sw.bb25, %sw.bb20, %sw.bb15, %sw.bb14, %sw.bb13, %if.else, %if.then9, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb, %if.end.for.inc_crit_edge
  %fw_write.2.ph = phi ptr [ %fw_write.091, %sw.bb25 ], [ %fw_write.091, %sw.bb20 ], [ %fw_write.091, %sw.bb15 ], [ %fw_write.091, %sw.bb ], [ %fw_write.091, %sw.bb3 ], [ %fw_write.091, %sw.bb4 ], [ %fw_write.091, %sw.bb6 ], [ %17, %if.else ], [ %13, %if.then9 ], [ %fw_write.091, %sw.bb13 ], [ %fw_write.091, %sw.bb14 ], [ %fw_write.091, %sw.bb30 ], [ %fw_write.091, %sw.bb31 ], [ %fw_write.091, %sw.bb33 ], [ %fw_write.091, %if.end.for.inc_crit_edge ]
  %fw_read.2.ph = phi ptr [ %fw_read.092, %sw.bb25 ], [ %fw_read.092, %sw.bb20 ], [ %fw_read.092, %sw.bb15 ], [ %fw_read.092, %sw.bb ], [ %fw_read.092, %sw.bb3 ], [ %fw_read.092, %sw.bb4 ], [ %fw_read.092, %sw.bb6 ], [ %19, %if.else ], [ %15, %if.then9 ], [ %fw_read.092, %sw.bb13 ], [ %fw_read.092, %sw.bb14 ], [ %fw_read.092, %sw.bb30 ], [ %fw_read.092, %sw.bb31 ], [ %fw_read.092, %sw.bb33 ], [ %fw_read.092, %if.end.for.inc_crit_edge ]
  %predata.2.ph = phi i32 [ %predata.093, %sw.bb25 ], [ %predata.093, %sw.bb20 ], [ %predata.093, %sw.bb15 ], [ %call, %sw.bb ], [ %or, %sw.bb3 ], [ %and5, %sw.bb4 ], [ %predata.093, %sw.bb6 ], [ %predata.093, %if.else ], [ %predata.093, %if.then9 ], [ %predata.093, %sw.bb13 ], [ %predata.093, %sw.bb14 ], [ %predata.093, %sw.bb30 ], [ %predata.093, %sw.bb31 ], [ %predata.093, %sw.bb33 ], [ %predata.093, %if.end.for.inc_crit_edge ]
  %count.2.ph = phi i32 [ %count.094, %sw.bb25 ], [ %count.094, %sw.bb20 ], [ %count.094, %sw.bb15 ], [ %inc, %sw.bb ], [ %count.094, %sw.bb3 ], [ %count.094, %sw.bb4 ], [ %count.094, %sw.bb6 ], [ %count.094, %if.else ], [ %count.094, %if.then9 ], [ 0, %sw.bb13 ], [ %count.094, %sw.bb14 ], [ %count.094, %sw.bb30 ], [ %count.094, %sw.bb31 ], [ %count.094, %sw.bb33 ], [ %count.094, %if.end.for.inc_crit_edge ]
  %index.2.ph = phi i32 [ %spec.select77, %sw.bb25 ], [ %spec.select76, %sw.bb20 ], [ %spec.select, %sw.bb15 ], [ %index.095, %sw.bb ], [ %index.095, %sw.bb3 ], [ %index.095, %sw.bb4 ], [ %sub, %sw.bb6 ], [ %index.095, %if.else ], [ %index.095, %if.then9 ], [ %index.095, %sw.bb13 ], [ %index.095, %sw.bb14 ], [ %index.095, %sw.bb30 ], [ %add32, %sw.bb31 ], [ %index.095, %sw.bb33 ], [ %index.095, %if.end.for.inc_crit_edge ]
  %inc37 = add i32 %index.2.ph, 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc37, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_fw_release_firmware(ptr nocapture noundef readonly %rtl_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 4
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_fw_request_firmware(ptr noundef %rtl_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 4
  %fw_name = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 5
  %0 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_name, align 4
  %dev = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %1, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %phy_action.i = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i = icmp ult i32 %9, 4
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %9)
  %cmp5.i = icmp ult i32 %9, 45
  br i1 %cmp5.i, label %if.then2.i.if.then3_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.if.then3_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %checksum.084.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then2.i.for.body.i_crit_edge ]
  %i.083.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then2.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %7, i32 %i.083.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %checksum.084.i, %conv.i
  %inc.i = add nuw i32 %i.083.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i)
  %phi.cmp.i = icmp eq i32 %phi.cast.i, 0
  br i1 %phi.cmp.i, label %if.end17.i, label %for.end.i.if.then3_crit_edge

for.end.i.if.then3_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end17.i:                                       ; preds = %for.end.i
  %fw_start.i = getelementptr inbounds %struct.fw_info, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %fw_start.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fw_start.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %16)
  %cmp19.i = icmp ult i32 %9, %16
  br i1 %cmp19.i, label %if.end17.i.if.then3_crit_edge, label %if.end22.i

if.end17.i.if.then3_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end22.i:                                       ; preds = %if.end17.i
  %fw_len.i = getelementptr inbounds %struct.fw_info, ptr %7, i32 0, i32 3
  %17 = ptrtoint ptr %fw_len.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %fw_len.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %sub.i = sub i32 %9, %16
  %div80.i = lshr i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div80.i)
  %cmp24.i = icmp ugt i32 %19, %div80.i
  br i1 %cmp24.i, label %if.end22.i.if.then3_crit_edge, label %if.end27.i

if.end22.i.if.then3_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  %version.i = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 7
  %version28.i = getelementptr inbounds %struct.fw_info, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @strscpy(ptr noundef %version.i, ptr noundef %version28.i, i32 noundef 32) #4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %16
  %22 = ptrtoint ptr %phy_action.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %phy_action.i, align 4
  br label %lor.lhs.false

if.else.i:                                        ; preds = %if.end.i
  %rem.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool36.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.else.i.if.then3_crit_edge

if.else.i.if.then3_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end38.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %version39.i = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 7
  %23 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw_name, align 4
  %call41.i = tail call i32 @strscpy(ptr noundef %version39.i, ptr noundef %24, i32 noundef 32) #4
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %phy_action.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %phy_action.i, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  %div4581.i = lshr i32 %29, 2
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end38.i, %if.end27.i
  %div4581.sink.i = phi i32 [ %div4581.i, %if.end38.i ], [ %19, %if.end27.i ]
  %size46.i = getelementptr inbounds %struct.rtl_fw, ptr %rtl_fw, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %size46.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div4581.sink.i, ptr %size46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4581.sink.i)
  %cmp50.not.i = icmp eq i32 %div4581.sink.i, 0
  br i1 %cmp50.not.i, label %lor.lhs.false.cleanup_crit_edge, label %for.body.lr.ph.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %phy_action.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_action.i, align 4
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.inc.i.for.body.i19_crit_edge, %for.body.lr.ph.i
  %cmp52.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i22, %for.inc.i.for.body.i19_crit_edge ]
  %index.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i21, %for.inc.i.for.body.i19_crit_edge ]
  %arrayidx.i18 = getelementptr i32, ptr %32, i32 %index.051.i
  %33 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i18, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  %and1.i = lshr i32 %35, 16
  %shr.i = and i32 %and1.i, 4095
  %shr2.i = lshr i32 %35, 28
  %36 = zext i32 %shr2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr2.i, label %cleanup.thread44.i [
    i32 0, label %for.body.i19.for.inc.i_crit_edge
    i32 1, label %for.body.i19.for.inc.i_crit_edge50
    i32 2, label %for.body.i19.for.inc.i_crit_edge51
    i32 7, label %for.body.i19.for.inc.i_crit_edge52
    i32 8, label %for.body.i19.for.inc.i_crit_edge53
    i32 12, label %for.body.i19.for.inc.i_crit_edge54
    i32 14, label %for.body.i19.for.inc.i_crit_edge55
    i32 4, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 9, label %sw.bb9.i
    i32 10, label %for.body.i19.sw.bb14.i_crit_edge
    i32 11, label %for.body.i19.sw.bb14.i_crit_edge56
    i32 13, label %for.body.i19.sw.bb14.i_crit_edge57
  ]

for.body.i19.sw.bb14.i_crit_edge57:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb14.i

for.body.i19.sw.bb14.i_crit_edge56:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb14.i

for.body.i19.sw.bb14.i_crit_edge:                 ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb14.i

for.body.i19.for.inc.i_crit_edge55:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i19.for.inc.i_crit_edge54:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i19.for.inc.i_crit_edge53:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i19.for.inc.i_crit_edge52:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i19.for.inc.i_crit_edge51:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i19.for.inc.i_crit_edge50:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.body.i19.for.inc.i_crit_edge:                 ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

sw.bb3.i:                                         ; preds = %for.body.i19
  %and.i = and i32 %35, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp4.not.i, label %sw.bb3.i.for.inc.i_crit_edge, label %sw.bb3.i.do.end25.i_crit_edge

sw.bb3.i.do.end25.i_crit_edge:                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25.i

sw.bb3.i.for.inc.i_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

sw.bb5.i:                                         ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %index.051.i)
  %cmp6.i = icmp ugt i32 %shr.i, %index.051.i
  br i1 %cmp6.i, label %sw.bb5.i.do.end25.i_crit_edge, label %sw.bb5.i.for.inc.i_crit_edge

sw.bb5.i.for.inc.i_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

sw.bb5.i.do.end25.i_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25.i

sw.bb9.i:                                         ; preds = %for.body.i19
  %add.i20 = add i32 %index.051.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i20, i32 %div4581.sink.i)
  %cmp11.not.i = icmp ult i32 %add.i20, %div4581.sink.i
  br i1 %cmp11.not.i, label %sw.bb9.i.for.inc.i_crit_edge, label %sw.bb9.i.do.end25.i_crit_edge

sw.bb9.i.do.end25.i_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25.i

sw.bb9.i.for.inc.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

sw.bb14.i:                                        ; preds = %for.body.i19.sw.bb14.i_crit_edge, %for.body.i19.sw.bb14.i_crit_edge56, %for.body.i19.sw.bb14.i_crit_edge57
  %add15.i = add nuw i32 %index.051.i, 1
  %add16.i = add i32 %add15.i, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %div4581.sink.i)
  %cmp18.not.i = icmp ult i32 %add16.i, %div4581.sink.i
  br i1 %cmp18.not.i, label %sw.bb14.i.for.inc.i_crit_edge, label %sw.bb14.i.do.end25.i_crit_edge

sw.bb14.i.do.end25.i_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25.i

sw.bb14.i.for.inc.i_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

cleanup.thread44.i:                               ; preds = %for.body.i19
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.5, i32 noundef %35) #7
  br i1 %cmp52.i, label %cleanup.thread44.i.if.then3_crit_edge, label %cleanup.thread44.i.cleanup_crit_edge

cleanup.thread44.i.cleanup_crit_edge:             ; preds = %cleanup.thread44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.thread44.i.if.then3_crit_edge:            ; preds = %cleanup.thread44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.inc.i:                                        ; preds = %sw.bb14.i.for.inc.i_crit_edge, %sw.bb9.i.for.inc.i_crit_edge, %sw.bb5.i.for.inc.i_crit_edge, %sw.bb3.i.for.inc.i_crit_edge, %for.body.i19.for.inc.i_crit_edge, %for.body.i19.for.inc.i_crit_edge50, %for.body.i19.for.inc.i_crit_edge51, %for.body.i19.for.inc.i_crit_edge52, %for.body.i19.for.inc.i_crit_edge53, %for.body.i19.for.inc.i_crit_edge54, %for.body.i19.for.inc.i_crit_edge55
  %inc.i21 = add nuw i32 %index.051.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i21, i32 %div4581.sink.i)
  %cmp.i22 = icmp ult i32 %inc.i21, %div4581.sink.i
  %exitcond.not.i23 = icmp eq i32 %inc.i21, %div4581.sink.i
  br i1 %exitcond.not.i23, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i19_crit_edge

for.inc.i.for.body.i19_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i19

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end25.i:                                       ; preds = %sw.bb14.i.do.end25.i_crit_edge, %sw.bb9.i.do.end25.i_crit_edge, %sw.bb5.i.do.end25.i_crit_edge, %sw.bb3.i.do.end25.i_crit_edge
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8) #7
  br i1 %cmp52.i, label %do.end25.i.if.then3_crit_edge, label %do.end25.i.cleanup_crit_edge

do.end25.i.cleanup_crit_edge:                     ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end25.i.if.then3_crit_edge:                    ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %do.end25.i.if.then3_crit_edge, %cleanup.thread44.i.if.then3_crit_edge, %if.else.i.if.then3_crit_edge, %if.end22.i.if.then3_crit_edge, %if.end17.i.if.then3_crit_edge, %for.end.i.if.then3_crit_edge, %if.then2.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %41 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %42) #4
  br label %do.end

do.end:                                           ; preds = %if.then3, %entry.do.end_crit_edge
  %rc.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ -22, %if.then3 ]
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef %46, i32 noundef %rc.0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end25.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %cleanup.thread44.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %cleanup.thread44.i.cleanup_crit_edge ], [ 0, %do.end25.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/realtek/r8169_firmware.c", i32 233, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtl_fw_request_firmware._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtl_fw_request_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/realtek/r8169_firmware.c", i32 129, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtl_fw_data_ok._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @rtl_fw_data_ok._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/realtek/r8169_firmware.c", i32 136, i32 2}
!15 = !{ptr @rtl_fw_data_ok._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtl_fw_data_ok._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
