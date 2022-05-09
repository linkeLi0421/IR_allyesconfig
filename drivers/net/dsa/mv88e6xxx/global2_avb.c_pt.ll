; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/global2_avb.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/global2_avb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv88e6xxx_avb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@mv88e6352_avb_ops = dso_local constant { %struct.mv88e6xxx_avb_ops, [40 x i8] } { %struct.mv88e6xxx_avb_ops { ptr @mv88e6352_g2_avb_port_ptp_read, ptr @mv88e6352_g2_avb_port_ptp_write, ptr @mv88e6352_g2_avb_ptp_read, ptr @mv88e6352_g2_avb_ptp_write, ptr @mv88e6352_g2_avb_tai_read, ptr @mv88e6352_g2_avb_tai_write }, [40 x i8] zeroinitializer }, align 32
@mv88e6165_avb_ops = dso_local constant { %struct.mv88e6xxx_avb_ops, [40 x i8] } { %struct.mv88e6xxx_avb_ops { ptr @mv88e6352_g2_avb_port_ptp_read, ptr @mv88e6352_g2_avb_port_ptp_write, ptr @mv88e6352_g2_avb_ptp_read, ptr @mv88e6352_g2_avb_ptp_write, ptr @mv88e6165_g2_avb_tai_read, ptr @mv88e6165_g2_avb_tai_write }, [40 x i8] zeroinitializer }, align 32
@mv88e6390_avb_ops = dso_local constant { %struct.mv88e6xxx_avb_ops, [40 x i8] } { %struct.mv88e6xxx_avb_ops { ptr @mv88e6390_g2_avb_port_ptp_read, ptr @mv88e6390_g2_avb_port_ptp_write, ptr @mv88e6390_g2_avb_ptp_read, ptr @mv88e6390_g2_avb_ptp_write, ptr @mv88e6390_g2_avb_tai_read, ptr @mv88e6390_g2_avb_tai_write }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"mv88e6352_avb_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 145, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"mv88e6165_avb_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 170, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"mv88e6390_avb_ops\00", align 1
@___asan_gen_.8 = private constant [43 x i8] c"../drivers/net/dsa/mv88e6xxx/global2_avb.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 232, i32 32 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mv88e6352_avb_ops, ptr @mv88e6165_avb_ops, ptr @mv88e6390_avb_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_avb_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6165_avb_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6390_avb_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_avb_port_ptp_read(ptr noundef %chip, i32 noundef %port, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  %cond = select i1 %cmp, i32 16384, i32 24576
  %shl = shl i32 %port, 8
  %or = or i32 %shl, %addr
  %or2 = or i32 %or, %cond
  %conv = trunc i32 %or2 to i16
  %call = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv, ptr noundef %data, i32 noundef %len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_avb_port_ptp_write(ptr noundef %chip, i32 noundef %port, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %port, 8
  %or = or i32 %shl, %addr
  %0 = trunc i32 %or to i16
  %call.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_avb_write.exit_crit_edge

entry.mv88e6xxx_g2_avb_write.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6xxx_g2_avb_write.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge

if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6xxx_g2_avb_write.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -20480
  %call6.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6xxx_g2_avb_write.exit

mv88e6xxx_g2_avb_write.exit:                      ; preds = %if.end4.i, %if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge, %entry.mv88e6xxx_g2_avb_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i14.i, %if.end4.i ], [ %call.i.i, %entry.mv88e6xxx_g2_avb_write.exit_crit_edge ], [ %call1.i, %if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_avb_ptp_read(ptr noundef %chip, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.i = icmp eq i32 %len, 1
  %cond.i = select i1 %cmp.i, i32 16384, i32 24576
  %or.i = or i32 %cond.i, %addr
  %0 = trunc i32 %or.i to i16
  %conv.i = or i16 %0, 3840
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv.i, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_avb_ptp_write(ptr noundef %chip, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %addr to i16
  %call.i.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge

entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6352_g2_avb_port_ptp_write.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge

if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6352_g2_avb_port_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -16640
  %call6.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6352_g2_avb_port_ptp_write.exit

mv88e6352_g2_avb_port_ptp_write.exit:             ; preds = %if.end4.i.i, %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge, %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i14.i.i, %if.end4.i.i ], [ %call.i.i.i, %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_avb_tai_read(ptr noundef %chip, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.i = icmp eq i32 %len, 1
  %cond.i = select i1 %cmp.i, i32 16384, i32 24576
  %or.i = or i32 %cond.i, %addr
  %0 = trunc i32 %or.i to i16
  %conv.i = or i16 %0, 3584
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv.i, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_avb_tai_write(ptr noundef %chip, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %addr to i16
  %call.i.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge

entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6352_g2_avb_port_ptp_write.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge

if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6352_g2_avb_port_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -16896
  %call6.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6352_g2_avb_port_ptp_write.exit

mv88e6352_g2_avb_port_ptp_write.exit:             ; preds = %if.end4.i.i, %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge, %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i14.i.i, %if.end4.i.i ], [ %call.i.i.i, %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6165_g2_avb_tai_read(ptr noundef %chip, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.i = icmp eq i32 %len, 1
  %cond.i = select i1 %cmp.i, i32 16384, i32 24576
  %or.i = or i32 %cond.i, %addr
  %0 = trunc i32 %or.i to i16
  %conv.i = or i16 %0, 3840
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv.i, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6165_g2_avb_tai_write(ptr noundef %chip, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %addr to i16
  %call.i.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge

entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6352_g2_avb_port_ptp_write.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge

if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6352_g2_avb_port_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -16640
  %call6.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6352_g2_avb_port_ptp_write.exit

mv88e6352_g2_avb_port_ptp_write.exit:             ; preds = %if.end4.i.i, %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge, %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i14.i.i, %if.end4.i.i ], [ %call.i.i.i, %entry.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.mv88e6352_g2_avb_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_g2_avb_port_ptp_read(ptr noundef %chip, i32 noundef %port, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  %cond = select i1 %cmp, i32 0, i32 16384
  %shl = shl i32 %port, 8
  %or = or i32 %shl, %addr
  %or2 = or i32 %or, %cond
  %conv = trunc i32 %or2 to i16
  %call = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv, ptr noundef %data, i32 noundef %len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_g2_avb_port_ptp_write(ptr noundef %chip, i32 noundef %port, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %port, 8
  %or = or i32 %shl, %addr
  %0 = trunc i32 %or to i16
  %call.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_avb_write.exit_crit_edge

entry.mv88e6xxx_g2_avb_write.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6xxx_g2_avb_write.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge

if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6xxx_g2_avb_write.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -8192
  %call6.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6xxx_g2_avb_write.exit

mv88e6xxx_g2_avb_write.exit:                      ; preds = %if.end4.i, %if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge, %entry.mv88e6xxx_g2_avb_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i14.i, %if.end4.i ], [ %call.i.i, %entry.mv88e6xxx_g2_avb_write.exit_crit_edge ], [ %call1.i, %if.end.i.mv88e6xxx_g2_avb_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_g2_avb_ptp_read(ptr noundef %chip, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.i = icmp eq i32 %len, 1
  %cond.i = select i1 %cmp.i, i32 0, i32 16384
  %or.i = or i32 %cond.i, %addr
  %0 = trunc i32 %or.i to i16
  %conv.i = or i16 %0, 7936
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv.i, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_g2_avb_ptp_write(ptr noundef %chip, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %addr to i16
  %call.i.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge

entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6390_g2_avb_port_ptp_write.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge

if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6390_g2_avb_port_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -256
  %call6.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6390_g2_avb_port_ptp_write.exit

mv88e6390_g2_avb_port_ptp_write.exit:             ; preds = %if.end4.i.i, %if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge, %entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i14.i.i, %if.end4.i.i ], [ %call.i.i.i, %entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_g2_avb_tai_read(ptr noundef %chip, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.i = icmp eq i32 %len, 1
  %cond.i = select i1 %cmp.i, i32 0, i32 16384
  %or.i = or i32 %cond.i, %addr
  %0 = trunc i32 %or.i to i16
  %conv.i = or i16 %0, 7680
  %call.i = tail call fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %conv.i, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6390_g2_avb_tai_write(ptr noundef %chip, i32 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %addr to i16
  %call.i.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge

entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6390_g2_avb_port_ptp_write.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 23, i16 noundef zeroext %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge

if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mv88e6390_g2_avb_port_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %1 = or i16 %0, -512
  %call6.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %1) #2
  %call.i14.i.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  br label %mv88e6390_g2_avb_port_ptp_write.exit

mv88e6390_g2_avb_port_ptp_write.exit:             ; preds = %if.end4.i.i, %if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge, %entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i14.i.i, %if.end4.i.i ], [ %call.i.i.i, %entry.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.mv88e6390_g2_avb_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g2_avb_read(ptr noundef %chip, i16 noundef zeroext %readop, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp sgt i32 %len, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = or i16 %readop, -32768
  %call4 = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 22, i16 noundef zeroext %0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call.i32 = tail call i32 @mv88e6xxx_g2_wait_bit(ptr noundef %chip, i32 noundef 22, i32 noundef 15, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool9.not = icmp eq i32 %call.i32, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1233 = icmp sgt i32 %len, 0
  br i1 %cmp1233, label %for.body, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %exitcond.not = icmp eq i32 %len, 1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr i16, ptr %data, i32 1
  %call14.1 = tail call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 23, ptr noundef %arrayidx.1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %for.cond.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %exitcond.not.1 = icmp eq i32 %len, 2
  br i1 %exitcond.not.1, label %for.cond.1.cleanup_crit_edge, label %for.body.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr i16, ptr %data, i32 2
  %call14.2 = tail call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 23, ptr noundef %arrayidx.2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2)
  %tobool15.not.2 = icmp eq i32 %call14.2, 0
  br i1 %tobool15.not.2, label %for.cond.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %exitcond.not.2 = icmp eq i32 %len, 3
  br i1 %exitcond.not.2, label %for.cond.2.cleanup_crit_edge, label %for.body.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.3 = getelementptr i16, ptr %data, i32 3
  %call14.3 = tail call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 23, ptr noundef %arrayidx.3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3)
  %tobool15.not.3 = icmp eq i32 %call14.3, 0
  %spec.select = select i1 %tobool15.not.3, i32 0, i32 %call14.3
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader
  %call14 = tail call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 23, ptr noundef %data) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.body.3, %for.cond.2.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ %call4, %if.end2.cleanup_crit_edge ], [ %call.i32, %if.end7.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call14, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call14.1, %for.body.1.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ %call14.2, %for.body.2.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ %spec.select, %for.body.3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_wait_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mv88e6352_avb_ops, !1, !"mv88e6352_avb_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/global2_avb.c", i32 145, i32 32}
!2 = !{ptr @mv88e6165_avb_ops, !3, !"mv88e6165_avb_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/mv88e6xxx/global2_avb.c", i32 170, i32 32}
!4 = !{ptr @mv88e6390_avb_ops, !5, !"mv88e6390_avb_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/mv88e6xxx/global2_avb.c", i32 232, i32 32}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
