; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-f300.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-f300.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@f300_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx23885: %s: timeout, the slave no response\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f300_xfer\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cx23885/cx23885-f300.c\00", [55 x i8] zeroinitializer }, align 32
@f300_xfer._entry_ptr = internal global ptr @f300_xfer._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [44 x i8] c"../drivers/media/pci/cx23885/cx23885-f300.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 115, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @f300_xfer._entry, ptr @f300_xfer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f300_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f300_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds i8, ptr %buf, i32 3
  %7 = call ptr @memset(ptr %6, i32 255, i32 13)
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %buf, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 56, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %voltage)
  %11 = icmp ult i32 %voltage, 3
  br i1 %11, label %switch.lookup, label %entry.for.body.preheader.i_crit_edge

entry.for.body.preheader.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = trunc i32 %voltage to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 257, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast16 = trunc i32 %voltage to i24
  %switch.shiftamt17 = shl i24 %switch.cast16, 3
  %switch.downshift18 = lshr i24 514, %switch.shiftamt17
  %switch.masked19 = trunc i24 %switch.downshift18 to i8
  %switch.cast20 = trunc i32 %voltage to i24
  %switch.shiftamt21 = shl i24 %switch.cast20, 3
  %switch.downshift22 = lshr i24 256, %switch.shiftamt21
  %switch.masked23 = trunc i24 %switch.downshift22 to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %switch.masked, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %switch.masked19, ptr %3, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %switch.masked23, ptr %4, align 1
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %switch.lookup, %entry.for.body.preheader.i_crit_edge
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %15 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %25 = add i8 %22, %24
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %28 = add i8 %25, %27
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %31 = add i8 %28, %30
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  %34 = add i8 %31, %33
  %add9.i.4.neg = sub i8 -5, %34
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %add9.i.4.neg, ptr %5, align 1
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 2, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 2) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 6442440) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 1, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 2, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %20, i32 noundef 2) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call fastcc void @f300_send_byte(ptr noundef %20, i8 noundef zeroext -32) #5
  tail call void @msleep(i32 noundef 1) #5
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buf, align 1
  %add20.i = add i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add20.i)
  %cmp25110.not.i = icmp eq i8 %add20.i, 0
  br i1 %cmp25110.not.i, label %for.body.preheader.i.for.end31.i_crit_edge, label %for.body27.preheader.i

for.body.preheader.i.for.end31.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31.i

for.body27.preheader.i:                           ; preds = %for.body.preheader.i
  %wide.trip.count117.i = zext i8 %add20.i to i32
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %for.body27.preheader.i
  %indvars.iv115.i = phi i32 [ 0, %for.body27.preheader.i ], [ %indvars.iv.next116.i, %for.body27.i.for.body27.i_crit_edge ]
  %arrayidx28.i = getelementptr i8, ptr %buf, i32 %indvars.iv115.i
  %39 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx28.i, align 1
  tail call fastcc void @f300_send_byte(ptr noundef %20, i8 noundef zeroext %40) #5
  %indvars.iv.next116.i = add nuw nsw i32 %indvars.iv115.i, 1
  %exitcond118.not.i = icmp eq i32 %indvars.iv.next116.i, %wide.trip.count117.i
  br i1 %exitcond118.not.i, label %for.body27.i.for.end31.i_crit_edge, label %for.body27.i.for.body27.i_crit_edge

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27.i

for.body27.i.for.end31.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31.i

for.end31.i:                                      ; preds = %for.body27.i.for.end31.i_crit_edge, %for.body.preheader.i.for.end31.i_crit_edge
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 2, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 2) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 1, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i = trunc i32 %call.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp41.i.not = icmp eq i8 %conv.i.i, 0
  br i1 %cmp41.i.not, label %for.end31.i.if.else.i_crit_edge, label %for.body39.i.1

for.end31.i.if.else.i_crit_edge:                  ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.1:                                   ; preds = %for.end31.i
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.1 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i.1 = trunc i32 %call.i.i.1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.1)
  %cmp41.i.1.not = icmp eq i8 %conv.i.i.1, 0
  br i1 %cmp41.i.1.not, label %for.body39.i.1.if.else.i_crit_edge, label %for.body39.i.2

for.body39.i.1.if.else.i_crit_edge:               ; preds = %for.body39.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.2:                                   ; preds = %for.body39.i.1
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.2 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i.2 = trunc i32 %call.i.i.2 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.2)
  %cmp41.i.2.not = icmp eq i8 %conv.i.i.2, 0
  br i1 %cmp41.i.2.not, label %for.body39.i.2.if.else.i_crit_edge, label %for.body39.i.3

for.body39.i.2.if.else.i_crit_edge:               ; preds = %for.body39.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.3:                                   ; preds = %for.body39.i.2
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.3 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i.3 = trunc i32 %call.i.i.3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.3)
  %cmp41.i.3.not = icmp eq i8 %conv.i.i.3, 0
  br i1 %cmp41.i.3.not, label %for.body39.i.3.if.else.i_crit_edge, label %for.body39.i.4

for.body39.i.3.if.else.i_crit_edge:               ; preds = %for.body39.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.4:                                   ; preds = %for.body39.i.3
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.4 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i.4 = trunc i32 %call.i.i.4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.4)
  %cmp41.i.4.not = icmp eq i8 %conv.i.i.4, 0
  br i1 %cmp41.i.4.not, label %for.body39.i.4.if.else.i_crit_edge, label %for.body39.i.5

for.body39.i.4.if.else.i_crit_edge:               ; preds = %for.body39.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.5:                                   ; preds = %for.body39.i.4
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.5 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i.5 = trunc i32 %call.i.i.5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.5)
  %cmp41.i.5.not = icmp eq i8 %conv.i.i.5, 0
  br i1 %cmp41.i.5.not, label %for.body39.i.5.if.else.i_crit_edge, label %for.body39.i.6

for.body39.i.5.if.else.i_crit_edge:               ; preds = %for.body39.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.6:                                   ; preds = %for.body39.i.5
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.6 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %conv.i.i.6 = trunc i32 %call.i.i.6 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.6)
  %cmp41.i.6.not = icmp eq i8 %conv.i.i.6, 0
  br i1 %cmp41.i.6.not, label %for.body39.i.6.if.else.i_crit_edge, label %for.body39.i.7

for.body39.i.6.if.else.i_crit_edge:               ; preds = %for.body39.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.body39.i.7:                                   ; preds = %for.body39.i.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 1) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 8, i32 noundef 0) #5
  %call.i.i.7 = tail call i32 @cx23885_gpio_get(ptr noundef %20, i32 noundef 8) #5
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %f300_xfer.exit

if.else.i:                                        ; preds = %for.body39.i.6.if.else.i_crit_edge, %for.body39.i.5.if.else.i_crit_edge, %for.body39.i.4.if.else.i_crit_edge, %for.body39.i.3.if.else.i_crit_edge, %for.body39.i.2.if.else.i_crit_edge, %for.body39.i.1.if.else.i_crit_edge, %for.end31.i.if.else.i_crit_edge
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 2, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %20, i32 noundef 2) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call fastcc void @f300_send_byte(ptr noundef %20, i8 noundef zeroext -31) #5
  tail call void @msleep(i32 noundef 1) #5
  %call51.i = tail call fastcc zeroext i8 @f300_get_byte(ptr noundef %20) #5
  %41 = tail call i8 @llvm.umin.i8(i8 %call51.i, i8 14) #5
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.body63.i.for.body63.i_crit_edge, %if.else.i
  %i.3114.i = phi i8 [ 0, %if.else.i ], [ %inc66.i, %for.body63.i.for.body63.i_crit_edge ]
  %call64.i = tail call fastcc zeroext i8 @f300_get_byte(ptr noundef %20) #5
  %inc66.i = add nuw nsw i8 %i.3114.i, 1
  %cmp61.not.not.i = icmp ult i8 %i.3114.i, %41
  br i1 %cmp61.not.not.i, label %for.body63.i.for.body63.i_crit_edge, label %for.end67.i

for.body63.i.for.body63.i_crit_edge:              ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body63.i

for.end67.i:                                      ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 2, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 2) #5
  tail call void @cx23885_gpio_enable(ptr noundef %20, i32 noundef 1, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %20, i32 noundef 1) #5
  br label %f300_xfer.exit

f300_xfer.exit:                                   ; preds = %for.end67.i, %for.body39.i.7
  %ret.0.i = phi i32 [ 1, %for.body39.i.7 ], [ 0, %for.end67.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #5
  ret i32 %ret.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f300_send_byte(ptr noundef %dev, i8 noundef zeroext %dta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %f300_set_line.exit.for.body_crit_edge, %entry
  %i.012 = phi i8 [ 0, %entry ], [ %inc, %f300_set_line.exit.for.body_crit_edge ]
  %dta.addr.011 = phi i8 [ %dta, %entry ], [ %shl, %f300_set_line.exit.for.body_crit_edge ]
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 6442440) #5
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dta.addr.011)
  %cmp.i = icmp slt i8 %dta.addr.011, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 1) #5
  br label %f300_set_line.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 1) #5
  br label %f300_set_line.exit

f300_set_line.exit:                               ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 6442440) #5
  %shl = shl i8 %dta.addr.011, 1
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 6442440) #5
  %inc = add nuw nsw i8 %i.012, 1
  %cmp = icmp ult i8 %i.012, 7
  br i1 %cmp, label %f300_set_line.exit.for.body_crit_edge, label %for.end

f300_set_line.exit.for.body_crit_edge:            ; preds = %f300_set_line.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %f300_set_line.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @f300_get_byte(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %dta.014 = phi i8 [ 0, %entry ], [ %or12, %for.body.for.body_crit_edge ]
  %i.013 = phi i8 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 6442440) #5
  %shl = shl i8 %dta.014, 1
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 6442440) #5
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #5
  %call.i = tail call i32 @cx23885_gpio_get(ptr noundef %dev, i32 noundef 1) #5
  %conv.i = trunc i32 %call.i to i8
  %or12 = or i8 %shl, %conv.i
  %inc = add nuw nsw i8 %i.013, 1
  %cmp = icmp ult i8 %i.013, 7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i8 %or12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_gpio_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-f300.c", i32 115, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @f300_xfer._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @f300_xfer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
