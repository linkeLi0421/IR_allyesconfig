; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/netup-eeprom.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/netup-eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.netup_card_info = type { [2 x %struct.netup_port_info], i8 }
%struct.netup_port_info = type { [6 x i8] }

@netup_eeprom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cx23885: eeprom i2c read error, status=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netup_eeprom_read\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cx23885/netup-eeprom.c\00", [55 x i8] zeroinitializer }, align 32
@netup_eeprom_read._entry_ptr = internal global ptr @netup_eeprom_read._entry, section ".printk_index", align 4
@netup_eeprom_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cx23885: eeprom i2c write error, status=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netup_eeprom_write\00", [45 x i8] zeroinitializer }, align 32
@netup_eeprom_write._entry_ptr = internal global ptr @netup_eeprom_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 45, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [44 x i8] c"../drivers/media/pci/cx23885/netup-eeprom.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 73, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @netup_eeprom_read._entry, ptr @netup_eeprom_read._entry_ptr, ptr @netup_eeprom_write._entry, ptr @netup_eeprom_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_eeprom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_eeprom_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_eeprom_read(ptr noundef %i2c_adap, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #4
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #4
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 80, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %buf2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 80, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %9 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %10 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %0, ptr %buf6, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %addr, ptr %buf, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %0, align 1
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %conv = zext i8 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %conv, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_eeprom_write(ptr noundef %i2c_adap, i8 noundef zeroext %addr, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %bufw = alloca [2 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bufw) #4
  %0 = getelementptr inbounds [2 x i8], ptr %bufw, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 80, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bufw, ptr %buf, align 4
  %7 = ptrtoint ptr %bufw to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %addr, ptr %bufw, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %0, align 1
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %while.body.preheader, label %do.end

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.body.preheader
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %while.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bufw) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netup_get_card_info(ptr noundef %i2c_adap, ptr nocapture noundef writeonly %cinfo) local_unnamed_addr #0 align 64 {
entry:
  %buf.i51 = alloca [2 x i8], align 1
  %msg.i52 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i34 = alloca [2 x i8], align 1
  %msg.i35 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #4
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #4
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags.i, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %1, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %6 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %7 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %8 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %9 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %10 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %0, ptr %buf6.i, align 4
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 63, ptr %buf.i, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %0, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #7
  br label %netup_eeprom_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  br label %netup_eeprom_read.exit

netup_eeprom_read.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ -1, %do.end.i ], [ %14, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #4
  %rev = getelementptr inbounds %struct.netup_card_info, ptr %cinfo, i32 0, i32 1
  %15 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i, ptr %rev, align 1
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i34, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %msg.i35, i32 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 1
  %buf2.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 3
  %arrayinit.element.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 1
  %flags4.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 1, i32 1
  %len5.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 1, i32 2
  %buf6.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 1, i32 3
  br label %for.body

for.cond7.preheader:                              ; preds = %netup_eeprom_read.exit50
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i51, i32 0, i32 1
  %19 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %buf2.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1
  %flags4.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 1
  %len5.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 2
  %buf6.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 3
  %arrayidx15 = getelementptr [2 x %struct.netup_port_info], ptr %cinfo, i32 0, i32 1
  br label %for.body10

for.body:                                         ; preds = %netup_eeprom_read.exit50.for.body_crit_edge, %netup_eeprom_read.exit
  %j.069 = phi i32 [ 0, %netup_eeprom_read.exit ], [ %inc6, %netup_eeprom_read.exit50.for.body_crit_edge ]
  %i.068 = phi i32 [ 64, %netup_eeprom_read.exit ], [ %inc, %netup_eeprom_read.exit50.for.body_crit_edge ]
  %conv2 = trunc i32 %i.068 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i34) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i35) #4
  %20 = call ptr @memset(ptr %17, i32 255, i32 16)
  %21 = ptrtoint ptr %msg.i35 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 80, ptr %msg.i35, align 4
  %22 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i36, align 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %17, align 4
  %24 = ptrtoint ptr %buf2.i38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i34, ptr %buf2.i38, align 4
  %25 = ptrtoint ptr %arrayinit.element.i39 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 80, ptr %arrayinit.element.i39, align 4
  %26 = ptrtoint ptr %flags4.i40 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags4.i40, align 2
  %27 = ptrtoint ptr %len5.i41 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len5.i41, align 4
  %28 = ptrtoint ptr %buf6.i42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %16, ptr %buf6.i42, align 4
  %29 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv2, ptr %buf.i34, align 1
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %16, align 1
  %call.i43 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i35, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i43)
  %cmp.not.i44 = icmp eq i32 %call.i43, 2
  br i1 %cmp.not.i44, label %if.end.i48, label %do.end.i46

do.end.i46:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i43) #7
  br label %netup_eeprom_read.exit50

if.end.i48:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %16, align 1
  br label %netup_eeprom_read.exit50

netup_eeprom_read.exit50:                         ; preds = %if.end.i48, %do.end.i46
  %retval.0.i49 = phi i8 [ -1, %do.end.i46 ], [ %32, %if.end.i48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i35) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i34) #4
  %arrayidx5 = getelementptr [6 x i8], ptr %cinfo, i32 0, i32 %j.069
  %33 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %retval.0.i49, ptr %arrayidx5, align 1
  %inc = add nuw nsw i32 %i.068, 1
  %inc6 = add nuw nsw i32 %j.069, 1
  %exitcond.not = icmp eq i32 %inc6, 6
  br i1 %exitcond.not, label %for.cond7.preheader, label %netup_eeprom_read.exit50.for.body_crit_edge

netup_eeprom_read.exit50.for.body_crit_edge:      ; preds = %netup_eeprom_read.exit50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body10:                                       ; preds = %netup_eeprom_read.exit67.for.body10_crit_edge, %for.cond7.preheader
  %j.171 = phi i32 [ 0, %for.cond7.preheader ], [ %inc20, %netup_eeprom_read.exit67.for.body10_crit_edge ]
  %i.170 = phi i32 [ 70, %for.cond7.preheader ], [ %inc19, %netup_eeprom_read.exit67.for.body10_crit_edge ]
  %conv11 = trunc i32 %i.170 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i51) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i52) #4
  %34 = call ptr @memset(ptr %19, i32 255, i32 16)
  %35 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 80, ptr %msg.i52, align 4
  %36 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i53, align 2
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %19, align 4
  %38 = ptrtoint ptr %buf2.i55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i51, ptr %buf2.i55, align 4
  %39 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 80, ptr %arrayinit.element.i56, align 4
  %40 = ptrtoint ptr %flags4.i57 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags4.i57, align 2
  %41 = ptrtoint ptr %len5.i58 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len5.i58, align 4
  %42 = ptrtoint ptr %buf6.i59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %18, ptr %buf6.i59, align 4
  %43 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv11, ptr %buf.i51, align 1
  %44 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %18, align 1
  %call.i60 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i52, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.not.i61, label %if.end.i65, label %do.end.i63

do.end.i63:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i60) #7
  br label %netup_eeprom_read.exit67

if.end.i65:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %18, align 1
  br label %netup_eeprom_read.exit67

netup_eeprom_read.exit67:                         ; preds = %if.end.i65, %do.end.i63
  %retval.0.i66 = phi i8 [ -1, %do.end.i63 ], [ %46, %if.end.i65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i51) #4
  %arrayidx17 = getelementptr [6 x i8], ptr %arrayidx15, i32 0, i32 %j.171
  %47 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %retval.0.i66, ptr %arrayidx17, align 1
  %inc19 = add nuw nsw i32 %i.170, 1
  %inc20 = add nuw nsw i32 %j.171, 1
  %exitcond72.not = icmp eq i32 %inc20, 6
  br i1 %exitcond72.not, label %for.end21, label %netup_eeprom_read.exit67.for.body10_crit_edge

netup_eeprom_read.exit67.for.body10_crit_edge:    ; preds = %netup_eeprom_read.exit67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.end21:                                        ; preds = %netup_eeprom_read.exit67
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/netup-eeprom.c", i32 45, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @netup_eeprom_read._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @netup_eeprom_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx23885/netup-eeprom.c", i32 73, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @netup_eeprom_write._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @netup_eeprom_write._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
